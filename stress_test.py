#!/usr/bin/env python3
"""
并发压力测试：多次运行构建，验证系统稳定性
"""
import subprocess
import time

def run_build(iteration):
    print(f"\n=== 测试第 {iteration} 次 ===")
    start = time.time()
    try:
        result = subprocess.run(
            ["python", "main.py", "build", "test_project"],
            capture_output=True,
            text=True,
            check=True
        )
        print(result.stdout)
        if result.stderr:
            print("STDERR:", result.stderr)
        elapsed = time.time() - start
        print(f"第 {iteration} 次耗时: {elapsed:.2f}s")
        return True
    except Exception as e:
        print(f"第 {iteration} 次失败: {e}")
        return False

def main():
    print("开始并发压力测试...")
    total = 5
    passed = 0
    
    for i in range(1, total + 1):
        if run_build(i):
            passed += 1
    
    print(f"\n=== 压力测试结束 ===")
    print(f"总次数: {total}")
    print(f"成功次数: {passed}")
    print(f"失败次数: {total - passed}")

if __name__ == "__main__":
    main()
