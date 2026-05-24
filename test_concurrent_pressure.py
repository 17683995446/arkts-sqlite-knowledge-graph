#!/usr/bin/env python3
"""
并发压力测试 - 多个进程同时操作
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import random
from multiprocessing import Pool, cpu_count
from typing import List, Tuple

sys.path.insert(0, '/workspace')

def create_test_project(project_dir: str, num_files: int = 100) -> str:
    """创建测试项目"""
    os.makedirs(project_dir, exist_ok=True)
    
    for i in range(num_files):
        with open(os.path.join(project_dir, f'Concurrent{i}.ets'), 'w') as f:
            f.write(f"""@Component
struct Concurrent{i} {{
    @State data: string = 'concurrent {i}';
    
    aboutToAppear() {{
        console.log('concurrent init {i}');
    }}
    
    method{i}() {{
        console.log('method {i} called');
    }}
    
    build() {{
        Column() {{
            Text(this.data);
        }}
    }}
}}
""")
    
    return project_dir

def worker_task(args: Tuple[str, str, int]) -> Tuple[bool, float, str]:
    """工作进程任务 - 执行单个构建"""
    project_dir, db_path, worker_id = args
    
    start_time = time.time()
    
    try:
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=120
        )
        
        elapsed = time.time() - start_time
        
        if result.returncode == 0:
            return (True, elapsed, f"Worker {worker_id} 成功")
        else:
            return (False, elapsed, f"Worker {worker_id} 失败: {result.stderr}")
            
    except Exception as e:
        elapsed = time.time() - start_time
        return (False, elapsed, f"Worker {worker_id} 异常: {str(e)}")

def test_concurrent_pressure():
    """并发压力测试"""
    print("=" * 80)
    print("并发压力测试")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='concurrent_test_')
    
    try:
        # 创建共享测试项目
        project_dir = os.path.join(temp_dir, 'shared_project')
        create_test_project(project_dir, num_files=200)
        print(f"\n✅ 共享测试项目创建完成 (200文件)")
        
        # 测试配置
        num_workers_list = [4, 8, 16, 32]  # 不同并发级别
        all_results = []
        
        for num_workers in num_workers_list:
            print(f"\n{'=' * 80}")
            print(f"测试并发数: {num_workers}")
            print(f"{'=' * 80}")
            
            # 每个worker用不同的数据库
            worker_args = []
            for i in range(num_workers):
                worker_db = os.path.join(temp_dir, f'worker_{i}.db')
                worker_args.append((project_dir, worker_db, i))
            
            print(f"\n启动 {num_workers} 个并发进程...")
            start_all = time.time()
            
            # 使用进程池执行
            with Pool(processes=num_workers) as pool:
                results = pool.map(worker_task, worker_args)
            
            elapsed_all = time.time() - start_all
            
            # 统计结果
            success_count = sum(1 for r in results if r[0])
            total_elapsed = sum(r[1] for r in results)
            avg_elapsed = total_elapsed / num_workers if num_workers > 0 else 0
            
            print(f"\n并发 {num_workers} 测试结果:")
            print(f"  总耗时: {elapsed_all:.2f}秒")
            print(f"  成功: {success_count}/{num_workers}")
            print(f"  平均耗时: {avg_elapsed:.2f}秒/worker")
            
            if success_count == num_workers:
                print(f"  ✅ 所有worker成功！")
            else:
                print(f"  ❌ 有worker失败！")
                for r in results:
                    if not r[0]:
                        print(f"    - {r[2]}")
            
            all_results.append({
                'workers': num_workers,
                'success': success_count,
                'total': num_workers,
                'total_time': elapsed_all,
                'avg_time': avg_elapsed
            })
        
        # 最终总结
        print(f"\n{'=' * 80}")
        print("并发压力测试总结")
        print(f"{'=' * 80}")
        
        all_success = all(r['success'] == r['total'] for r in all_results)
        
        for r in all_results:
            status = "✅ 全部成功" if r['success'] == r['total'] else "❌ 部分失败"
            print(f"\n并发 {r['workers']}:")
            print(f"  {status}")
            print(f"  总耗时: {r['total_time']:.2f}秒")
            print(f"  平均: {r['avg_time']:.2f}秒/worker")
        
        return all_success
        
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_rapid_rebuild():
    """快速重复构建测试"""
    print(f"\n{'=' * 80}")
    print("快速重复构建测试")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='rapid_test_')
    
    try:
        project_dir = os.path.join(temp_dir, 'rapid_project')
        db_path = os.path.join(temp_dir, 'rapid.db')
        
        create_test_project(project_dir, num_files=50)
        
        rebuild_times = 50
        print(f"\n执行 {rebuild_times} 次快速重复构建...")
        
        results = []
        start_all = time.time()
        
        for i in range(rebuild_times):
            start = time.time()
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True
            )
            elapsed = time.time() - start
            results.append((result.returncode == 0, elapsed))
            
            if (i + 1) % 10 == 0:
                print(f"  完成 {i + 1}/{rebuild_times} 次构建")
        
        elapsed_all = time.time() - start_all
        
        success_count = sum(1 for r in results if r[0])
        avg_elapsed = sum(r[1] for r in results) / rebuild_times
        
        print(f"\n快速重复构建测试结果:")
        print(f"  总耗时: {elapsed_all:.2f}秒")
        print(f"  成功: {success_count}/{rebuild_times}")
        print(f"  平均: {avg_elapsed:.3f}秒/次")
        
        if success_count == rebuild_times:
            print(f"  ✅ 所有构建成功！")
            return True
        else:
            print(f"  ❌ 有构建失败！")
            return False
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("\n开始并发压力测试...\n")
    
    success1 = test_concurrent_pressure()
    success2 = test_rapid_rebuild()
    
    if success1 and success2:
        print(f"\n{'=' * 80}")
        print("🎉 并发压力测试全部完成！")
        print(f"{'=' * 80}")
    else:
        print(f"\n⚠️  部分测试失败")

if __name__ == "__main__":
    main()
