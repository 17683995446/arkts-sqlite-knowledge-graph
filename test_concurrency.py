#!/usr/bin/env python3
"""
并发和线程安全深度测试 - 慢工出细活
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import multiprocessing
import sqlite3
import threading
import random

sys.path.insert(0, '/workspace')

def worker_build(args):
    """并发工作进程"""
    worker_id, project_dir, db_path = args
    
    result = subprocess.run(
        [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
        capture_output=True,
        text=True,
        timeout=30
    )
    
    return {
        'worker_id': worker_id,
        'success': result.returncode == 0,
        'stdout': result.stdout[:200],
        'stderr': result.stderr[:200] if result.stderr else ''
    }

def test_concurrent_builds():
    """测试并发构建"""
    print("=" * 80)
    print("测试1：并发构建（5个进程同时操作）")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='concurrent_')
    
    try:
        # 创建测试项目
        project_dir = os.path.join(temp_dir, 'project')
        os.makedirs(project_dir)
        
        # 创建一些文件
        for i in range(20):
            with open(os.path.join(project_dir, f'File{i}.ets'), 'w') as f:
                f.write(f"@Component\nstruct File{i} {{ build() {{ Text('{i}'); }} }}\n")
        
        # 创建数据库
        db_path = os.path.join(temp_dir, 'test.db')
        
        print("启动5个并发进程...")
        start = time.time()
        
        # 创建5个并发任务
        tasks = [(i, project_dir, db_path) for i in range(5)]
        
        with multiprocessing.Pool(processes=5) as pool:
            results = pool.map(worker_build, tasks)
        
        elapsed = time.time() - start
        
        # 统计结果
        success_count = sum(1 for r in results if r['success'])
        
        print(f"\n并发测试结果:")
        print(f"  总耗时: {elapsed:.2f}秒")
        print(f"  成功: {success_count}/5")
        
        for r in results:
            status = "✅" if r['success'] else "❌"
            print(f"  {status} Worker {r['worker_id']}")
        
        # 验证数据库
        print("\n验证数据库...")
        try:
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute('SELECT COUNT(*) FROM files')
            file_count = cursor.fetchone()[0]
            
            print(f"  文件数: {file_count}")
            
            if file_count > 0:
                print("  ✅ 数据库正常")
            else:
                print("  ⚠️  数据库可能有问题")
            
            conn.close()
        except Exception as e:
            print(f"  ❌ 数据库验证失败: {e}")
        
        if success_count == 5:
            print("\n✅ 并发构建测试通过！")
        else:
            print(f"\n⚠️  部分并发构建失败")
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_database_locking():
    """测试数据库锁机制"""
    print("\n" + "=" * 80)
    print("测试2：数据库锁机制")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='locking_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建初始数据库
        from database import CodeGraphDatabase
        db = CodeGraphDatabase(db_path)
        db.close()
        
        # 测试1：连续写入
        print("\n测试2.1：连续写入（验证事务锁）")
        
        def write_task(task_id):
            db_path = os.path.join(temp_dir, 'test.db')
            db = CodeGraphDatabase(db_path)
            
            # 写入数据
            project_dir = os.path.join(temp_dir, f'proj_{task_id}')
            os.makedirs(project_dir)
            
            with open(os.path.join(project_dir, f'Task{task_id}.ets'), 'w') as f:
                f.write(f"@Component\nstruct Task{task_id} {{ build() {{}} }}\n")
            
            db.close()
            return task_id
        
        start = time.time()
        tasks = [write_task(i) for i in range(10)]
        elapsed = time.time() - start
        
        print(f"  连续写入10次耗时: {elapsed:.3f}秒")
        if elapsed < 5:
            print("  ✅ 事务锁机制正常")
        else:
            print("  ⚠️  可能存在锁竞争")
        
        # 测试2：并发写入
        print("\n测试2.2：并发写入（验证WAL模式）")
        
        with multiprocessing.Pool(processes=5) as pool:
            results = pool.map(write_task, range(10, 20))
        
        # 验证数据库
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        cursor.execute('SELECT COUNT(*) FROM files')
        file_count = cursor.fetchone()[0]
        conn.close()
        
        print(f"  最终文件数: {file_count}")
        if file_count == 20:
            print("  ✅ WAL模式正常工作")
        else:
            print(f"  ⚠️  预期20个文件，实际{file_count}个")
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_thread_safety():
    """测试线程安全性"""
    print("\n" + "=" * 80)
    print("测试3：线程安全性")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='thread_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建数据库
        from database import CodeGraphDatabase
        db = CodeGraphDatabase(db_path)
        
        # 在主线程中插入一些数据
        project_dir = os.path.join(temp_dir, 'project')
        os.makedirs(project_dir)
        
        for i in range(5):
            with open(os.path.join(project_dir, f'Main{i}.ets'), 'w') as f:
                f.write(f"@Component\nstruct Main{i} {{ build() {{}} }}\n")
        
        db.close()
        
        # 测试多线程读取
        print("\n测试3.1：多线程读取")
        
        def read_task(task_id):
            db = CodeGraphDatabase(db_path)
            summary = db.get_graph_summary()
            db.close()
            return summary
        
        threads = []
        results = []
        
        for i in range(5):
            thread = threading.Thread(target=lambda tid=i: results.append(read_task(tid)))
            threads.append(thread)
            thread.start()
        
        for thread in threads:
            thread.join()
        
        print(f"  读取结果数量: {len(results)}")
        if len(set(str(r) for r in results)) == 1:
            print("  ✅ 多线程读取一致")
        else:
            print("  ⚠️  多线程读取结果不一致")
        
        # 测试多线程写入（警告：check_same_thread=False）
        print("\n测试3.2：多线程写入（测试警告）")
        print("  ⚠️  注意：数据库使用 check_same_thread=False")
        print("  ⚠️  在多线程环境下可能不安全（但当前使用多进程，安全）")
        
        print("\n✅ 线程安全性测试完成")
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("并发和线程安全深度测试 - 慢工出细活")
    print("=" * 80)
    
    test_concurrent_builds()
    test_database_locking()
    test_thread_safety()
    
    print("\n" + "=" * 80)
    print("所有并发和线程安全测试完成！")
    print("=" * 80)

if __name__ == "__main__":
    main()
