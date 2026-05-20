#!/usr/bin/env python3
"""
极限并发写入测试：多个进程同时写入数据库，测试数据库锁和并发安全性
"""
import subprocess
import multiprocessing
import time
import os
import tempfile
import shutil

def create_test_project(project_path, num_files=50):
    """创建测试项目"""
    os.makedirs(project_path, exist_ok=True)

    # 创建不同类型的文件
    for i in range(num_files):
        filename = os.path.join(project_path, f"test_{i}.ets")
        with open(filename, 'w', encoding='utf-8') as f:
            if i % 3 == 0:
                # 大文件
                f.write(f"@Component\nstruct TestComponent{i} {{\n")
                for j in range(100):
                    f.write(f"  @State data{j}: string = 'test{j}'\n")
                    f.write(f"  aboutToAppear() {{\n")
                    f.write(f"    console.info('Component {i} init')\n")
                    f.write(f"  }}\n")
                f.write("}\n")
            elif i % 3 == 1:
                # 中等文件
                f.write(f"@Entry\n@Component\nstruct MainPage{i} {{\n")
                f.write("  @State message: string = 'Hello'\n")
                f.write("  build() {\n")
                f.write("    Column() {\n")
                f.write(f"      Text(this.message)\n")
                f.write("    }\n")
                f.write("  }\n")
                f.write("}\n")
            else:
                # 小文件
                f.write(f"@Component\nstruct Tiny{i} {{\n")
                f.write("  build() {}\n")
                f.write("}\n")

    print(f"创建了 {num_files} 个测试文件")

def parallel_build(args):
    """并行执行构建"""
    project_path, db_path, worker_id = args

    print(f"[Worker {worker_id}] 开始构建...")
    start = time.time()

    try:
        result = subprocess.run(
            ["python", "main.py", "build", project_path, "--db", db_path],
            capture_output=True,
            text=True,
            timeout=30
        )

        elapsed = time.time() - start
        success = result.returncode == 0

        return {
            'worker_id': worker_id,
            'success': success,
            'elapsed': elapsed,
            'stdout': result.stdout[:500],
            'stderr': result.stderr[:500]
        }
    except subprocess.TimeoutExpired:
        return {
            'worker_id': worker_id,
            'success': False,
            'elapsed': 30,
            'error': 'Timeout'
        }
    except Exception as e:
        return {
            'worker_id': worker_id,
            'success': False,
            'elapsed': time.time() - start,
            'error': str(e)
        }

def test_concurrent_writes():
    """测试并发写入"""
    print("\n" + "="*80)
    print("极限并发写入测试")
    print("="*80)

    # 创建临时目录
    temp_dir = tempfile.mkdtemp(prefix="concurrent_test_")
    project_path = os.path.join(temp_dir, "test_project")
    db_path = os.path.join(temp_dir, "test.db")

    try:
        # 创建测试项目
        print(f"创建测试项目: {project_path}")
        create_test_project(project_path, num_files=50)

        # 测试1：顺序写入（基线）
        print("\n--- 测试1：顺序写入（基线）---")
        start = time.time()
        result1 = parallel_build((project_path, db_path, 0))
        print(f"顺序写入耗时: {time.time() - start:.2f}s")
        print(f"结果: {'成功' if result1['success'] else '失败'}")

        # 测试2：2个进程并发写入
        print("\n--- 测试2：2个进程并发写入 ---")
        processes = 2
        with multiprocessing.Pool(processes=processes) as pool:
            args = [(project_path, db_path, i) for i in range(processes)]
            results = pool.map(parallel_build, args)

        success_count = sum(1 for r in results if r['success'])
        print(f"成功: {success_count}/{processes}")
        for r in results:
            print(f"  Worker {r['worker_id']}: {'成功' if r['success'] else '失败'} ({r['elapsed']:.2f}s)")

        # 检查数据库完整性
        print("\n--- 检查数据库完整性 ---")
        try:
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()

            cursor.execute("SELECT COUNT(*) FROM files")
            file_count = cursor.fetchone()[0]
            print(f"文件数: {file_count}")

            cursor.execute("SELECT COUNT(*) FROM classes")
            class_count = cursor.fetchone()[0]
            print(f"类数: {class_count}")

            cursor.execute("SELECT COUNT(*) FROM methods")
            method_count = cursor.fetchone()[0]
            print(f"方法数: {method_count}")

            # 检查是否有重复记录
            cursor.execute("SELECT path, COUNT(*) FROM files GROUP BY path HAVING COUNT(*) > 1")
            duplicates = cursor.fetchall()
            if duplicates:
                print(f"警告：发现 {len(duplicates)} 个重复文件记录！")
            else:
                print("✓ 无重复文件记录")

            conn.close()
        except Exception as e:
            print(f"数据库检查失败: {e}")

    finally:
        # 清理
        print(f"\n清理临时目录: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    test_concurrent_writes()
