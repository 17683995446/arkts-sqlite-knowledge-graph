#!/usr/bin/env python3
"""调试调用关系识别问题"""
import sys
sys.path.insert(0, '/workspace')

from arkts_parser import ArkTSParser

parser = ArkTSParser()

# 测试代码 - 模拟复杂场景4中的结构
test_content = """struct Layer0 {
    method0() {
        console.log("layer0");
    }
    build() {}
}

struct Layer1 {
    method1() {
        this.method0();
    }
    build() {}
}

struct Layer2 {
    method2() {
        this.method0();
        this.method1();
    }
    build() {}
}
"""

print("=== 测试代码 ===")
print(test_content)
print("\n=== 预处理后 ===")
preprocessed = parser._preprocess_content(test_content)
print(preprocessed)
print("\n=== 提取的类 ===")
classes = parser._extract_classes(test_content)
for cls in classes:
    print(f"  - {cls}")

print("\n=== 提取的方法 ===")
methods = parser._extract_methods(test_content, classes)
for method in methods:
    print(f"  - {method['name']}")

print("\n=== 提取的调用关系 ===")
calls = parser._extract_calls(test_content, methods, "/test.ets")
print(f"找到 {len(calls)} 个调用关系")
for call in calls:
    print(f"  - {call}")

print("\n=== 原始解析结果 ===")
import tempfile
import os

temp_dir = tempfile.mkdtemp()
test_file = os.path.join(temp_dir, "test.ets")
with open(test_file, 'w') as f:
    f.write(test_content)

result = parser.parse_file(test_file)
print(f"文件: {result['file_path']}")
print(f"类数: {len(result['classes'])}")
print(f"方法数: {len(result['methods'])}")
print(f"调用数: {len(result['calls'])}")

for cls in result['classes']:
    print(f"  类: {cls['name']}")

for method in result['methods']:
    print(f"  方法: {method['name']}")

for call in result['calls']:
    print(f"  调用: {call['caller']} -> {call['callee']}")

# 清理
import shutil
shutil.rmtree(temp_dir)
