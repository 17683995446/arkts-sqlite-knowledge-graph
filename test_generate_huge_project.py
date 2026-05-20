#!/usr/bin/env python3
"""
超大规模测试 - 生成 10,000 个测试文件
"""
import os
import sys
import time
import shutil

sys.path.insert(0, '/workspace')

# 创建超大规模测试项目
test_dir = '/workspace/huge_test_project'

if os.path.exists(test_dir):
    shutil.rmtree(test_dir)

os.makedirs(test_dir)

print("=" * 80)
print("超大规模测试 - 生成 10,000 个文件")
print("=" * 80)

num_files = 10000
start = time.time()

for i in range(num_files):
    file_path = os.path.join(test_dir, f'File{i}.ets')
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(f"""@Component
struct TestComponent{i} {{
  @State message: string = "Hello from component {i}"

  aboutToAppear() {{
    console.log("Component {i} initialized")
  }}

  onPageShow() {{
    console.log("Page {i} shown")
  }}

  build() {{
    Column() {{
      Text(this.message)
    }}
  }}
}}
""")
    
    if (i + 1) % 1000 == 0:
        elapsed = time.time() - start
        print(f"已生成 {i + 1}/{num_files} 个文件... ({elapsed:.1f}秒)")

total_time = time.time() - start
print(f"\n✅ 完成！共生成 {num_files} 个文件，总耗时 {total_time:.2f} 秒")

# 验证文件数量
file_count = 0
for file in os.listdir(test_dir):
    if file.endswith('.ets'):
        file_count += 1

print(f"📁 实际文件数量: {file_count}")
print(f"📂 测试目录: {test_dir}")
