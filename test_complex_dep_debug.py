#!/usr/bin/env python3
"""调试复杂依赖测试问题"""
import sys
import os
import tempfile
import shutil

sys.path.insert(0, '/workspace')

# 创建复杂依赖测试项目
temp_dir = tempfile.mkdtemp(prefix="dep_debug_")
project_dir = os.path.join(temp_dir, "dep_project")
os.makedirs(project_dir)

print("=== 创建深层调用链测试 ===")

# 创建多层调用
for layer in range(5):  # 先创建5层测试
    with open(os.path.join(project_dir, f"layer{layer}.ets"), 'w') as f:
        f.write(f"""struct Layer{layer} {{
    method{layer}() {{
""")
        
        # 调用上一层的所有方法
        if layer > 0:
            for prev in range(layer):
                f.write(f"        this.method{prev}();\n")
        
        f.write(f"""    }}

    build() {{}}
}}
""")

# 打印创建的文件内容
print("\n=== layer0.ets ===")
with open(os.path.join(project_dir, "layer0.ets"), 'r') as f:
    print(f.read())

print("\n=== layer1.ets ===")
with open(os.path.join(project_dir, "layer1.ets"), 'r') as f:
    print(f.read())

print("\n=== layer2.ets ===")
with open(os.path.join(project_dir, "layer2.ets"), 'r') as f:
    print(f.read())

# 现在解析这些文件
from arkts_parser import ArkTSParser
parser = ArkTSParser()

print("\n=== 解析结果 ===")

all_methods = []
all_calls = []

for layer in range(5):
    file_path = os.path.join(project_dir, f"layer{layer}.ets")
    result = parser.parse_file(file_path)
    
    print(f"\nlayer{layer}.ets:")
    print(f"  类: {[c['name'] for c in result['classes']]}")
    print(f"  方法: {[m['name'] for m in result['methods']]}")
    print(f"  调用: {[(c['caller'], c['callee']) for c in result['calls']]}")
    
    all_methods.extend(result['methods'])
    all_calls.extend(result['calls'])

print(f"\n=== 汇总 ===")
print(f"总方法数: {len(all_methods)}")
print(f"总调用数: {len(all_calls)}")

# 清理
shutil.rmtree(temp_dir)
