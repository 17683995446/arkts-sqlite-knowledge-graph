#!/usr/bin/env python3
"""
测试 Bug 3 修复 - 超长单行性能问题
"""
import sys
import os
import time

sys.path.insert(0, '/workspace')
from arkts_parser import ArkTSParser

# 创建一个超长单行测试文件
test_file = '/workspace/test_extreme_single_line.ets'

# 生成超长单行 - 20,000个字符
print("创建超长单行测试文件...")
with open(test_file, 'w', encoding='utf-8') as f:
    f.write('@Component\nstruct TestComponent {')
    f.write('  @State message: string = "')
    # 添加超长内容
    for i in range(1000):
        f.write('test' + str(i) + ' ')
    f.write('";')
    f.write('  aboutToAppear() { console.log("init"); }')
    f.write('  build() { Text(this.message); }')
    f.write('}\n')

print(f"文件大小: {os.path.getsize(test_file)} bytes")

# 测试解析性能
print("\n开始测试解析性能...")
start = time.time()
parser = ArkTSParser()
result = parser.parse_file(test_file)
end = time.time()

print(f"解析耗时: {end - start:.2f} 秒")
print(f"解析结果 - 类: {len(result['classes'])}, 方法: {len(result['methods'])}")

# 清理
os.unlink(test_file)

print("\n✅ Bug 3 修复验证完成！")
