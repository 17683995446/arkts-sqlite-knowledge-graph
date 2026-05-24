#!/usr/bin/env python3
"""测试修复后的跨文件调用关系"""
import sys
import os
import tempfile
import shutil
sys.path.insert(0, '/workspace')

from arkts_parser import ArkTSParser

# 创建测试项目
temp_dir = tempfile.mkdtemp(prefix="cross_file_test_")
project_dir = os.path.join(temp_dir, "test_project")
os.makedirs(project_dir)

# 创建多层调用的文件
for layer in range(5):
    with open(os.path.join(project_dir, f"layer{layer}.ets"), 'w') as f:
        f.write(f"""struct Layer{layer} {{
    method{layer}() {{
""")
        if layer > 0:
            for prev in range(layer):
                f.write(f"        this.method{prev}();\n")
        f.write("""    }

    build() {}
}
""")

print("=== 测试跨文件调用关系识别（修复后）===")

# 方法1：逐个文件解析（无法识别跨文件调用）
print("\n【方法1】逐个文件解析：")
parser = ArkTSParser()
total_calls_1 = 0
for layer in range(5):
    file_path = os.path.join(project_dir, f"layer{layer}.ets")
    result = parser.parse_file(file_path)
    print(f"  layer{layer}.ets: {len(result['calls'])} 个调用")
    total_calls_1 += len(result['calls'])

print(f"总调用关系: {total_calls_1}")

# 方法2：先收集所有方法，再解析（支持跨文件）
print("\n【方法2】先收集所有方法，再解析：")

# 第一步：收集所有文件的所有方法
all_methods = []
for layer in range(5):
    file_path = os.path.join(project_dir, f"layer{layer}.ets")
    with open(file_path, 'r') as f:
        content = f.read()
    
    # 预处理
    content = parser._preprocess_content(content)
    classes = parser._extract_classes(content)
    methods = parser._extract_methods(content, classes)
    
    for method in methods:
        method['file_path'] = file_path
        all_methods.append(method)

print(f"收集到 {len(all_methods)} 个方法")
print(f"方法列表: {[m['name'] for m in all_methods]}")

# 第二步：使用所有方法列表重新解析
total_calls_2 = 0
for layer in range(5):
    file_path = os.path.join(project_dir, f"layer{layer}.ets")
    with open(file_path, 'r') as f:
        content = f.read()
    
    # 预处理
    content = parser._preprocess_content(content)
    classes = parser._extract_classes(content)
    methods = parser._extract_methods(content, classes)
    
    # 提取调用关系，传入所有已知方法
    calls = parser._extract_calls(content, methods, file_path, all_methods)
    
    print(f"  layer{layer}.ets: {len(calls)} 个调用")
    for call in calls:
        print(f"    - {call['caller']} -> {call['callee']}")
    
    total_calls_2 += len(calls)

print(f"\n总调用关系: {total_calls_2}")

# 清理
shutil.rmtree(temp_dir)

print("\n=== 测试结论 ===")
if total_calls_2 > total_calls_1:
    print("✅ 修复成功！跨文件调用关系识别正常工作")
    print(f"   修复前: {total_calls_1} 个调用")
    print(f"   修复后: {total_calls_2} 个调用")
    print(f"   新增: {total_calls_2 - total_calls_1} 个调用")
else:
    print("❌ 修复可能有问题，请检查")
