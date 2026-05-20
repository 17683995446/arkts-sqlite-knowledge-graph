#!/usr/bin/env python3
"""
极端并发测试 - 多个进程同时操作数据库
"""
import sys
import os
import time
import multiprocessing
import tempfile
import shutil

sys.path.insert(0, '/workspace')

def worker_task(args):
    worker_id, test_dir, db_path = args
    
    try:
        import subprocess
        import time
        
        # 每个进程独立创建自己的临时文件
        worker_file = os.path.join(test_dir, f'Worker{worker_id}_File.ets')
        with open(worker_file, 'w', encoding='utf-8') as f:
            f.write(f"""@Component
struct WorkerComponent{worker_id} {{
  @State message: string = "Hello from worker {worker_id}"
  build() {{ Text(this.message); }}
}}
""")
        
        # 运行构建
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', test_dir, db_path],
            capture_output=True,
            text=True
        )
        elapsed = time.time() - start
        
        return {
            'worker_id': worker_id,
            'success': result.returncode == 0,
            'elapsed': elapsed,
            'stdout': result.stdout[:500],
            'stderr': result.stderr
        }
    except Exception as e:
        return {
            'worker_id': worker_id,
            'success': False,
            'error': str(e)
        }

def run_concurrent_test():
    print("=" * 80)
    print("极端并发测试 - 多个进程同时操作")
    print("=" * 80)
    
    # 创建临时目录和项目
    temp_dir = tempfile.mkdtemp(prefix='concurrent_test_')
    test_dir = os.path.join(temp_dir, 'project')
    db_path = os.path.join(temp_dir, 'test.db')
    
    os.makedirs(test_dir)
    
    # 初始一些文件
    for i in range(10):
        with open(os.path.join(test_dir, f'Init{i}.ets'), 'w', encoding='utf-8') as f:
            f.write(f"""@Component
struct InitComponent{i} {{ build() {{ Text("Init {i}"); }} }}
""")
    
    # 测试不同并发数
    for num_workers in [5, 10, 15]:
        print(f"\n测试 {num_workers} 个并发进程...")
        
        start = time.time()
        
        # 创建并发任务
        tasks = []
        for i in range(num_workers):
            tasks.append((i, test_dir, db_path))
        
        # 执行并发
        with multiprocessing.Pool(processes=num_workers) as pool:
            results = pool.map(worker_task, tasks)
        
        elapsed = time.time() - start
        
        # 统计结果
        success_count = sum(1 for r in results if r['success'])
        print(f"\n{num_workers} 个进程并发结果:")
        print(f"  成功: {success_count}/{num_workers}")
        print(f"  总耗时: {elapsed:.2f} 秒")
        
        for r in results:
            status = "✅" if r['success'] else "❌"
            elapsed_str = f"{r['elapsed']:.2f}s" if 'elapsed' in r else "N/A"
            print(f"  {status} Worker {r['worker_id']} - {elapsed_str}")
    
    # 清理
    print(f"\n清理临时目录: {temp_dir}")
    shutil.rmtree(temp_dir, ignore_errors=True)
    
    print("\n✅ 极端并发测试完成！")

if __name__ == "__main__":
    run_concurrent_test()
