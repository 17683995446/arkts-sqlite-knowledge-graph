#!/usr/bin/env python3
"""
测试构建大规模项目 - 2,000 个文件
"""
import sys
import os
import time
import subprocess

sys.path.insert(0, '/workspace')

test_dir = '/workspace/large_test_project'
db_path = '/workspace/large_test.db'

# 清理旧数据库
if os.path.exists(db_path):
    os.unlink(db_path)

print("=" * 80)
print("测试构建大规模项目 - 2,000 个文件")
print("=" * 80)

start = time.time()

# 运行构建
result = subprocess.run(
    [sys.executable, '/workspace/main.py', 'build', test_dir, db_path],
    capture_output=True,
    text=True
)

end = time.time()
elapsed = end - start

print(result.stdout)
if result.stderr:
    print("STDERR:", result.stderr)

print(f"\n⏱️  总耗时: {elapsed:.2f} 秒")
print(f"📈  平均速度: {2000 / elapsed:.1f} 文件/秒")

if result.returncode == 0:
    print("✅ 构建成功！")
else:
    print("❌ 构建失败！")
