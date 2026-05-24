#!/usr/bin/env python3
"""
应用修复补丁 - 支持跨文件调用关系识别
"""
import sys

sys.path.insert(0, '/workspace')

# 读取文件
with open('/workspace/arkts_parser.py', 'r', encoding='utf-8') as f:
    lines = f.readlines()

# 找到并修改 _extract_calls 方法
in_extract_calls = False
extract_calls_start = -1
extract_calls_end = -1
brace_count = 0

for i, line in enumerate(lines):
    if 'def _extract_calls(self, content: str, methods: List[Dict], file_path: str)' in line:
        in_extract_calls = True
        extract_calls_start = i
        # 修改签名
        lines[i] = line.replace(
            'def _extract_calls(self, content: str, methods: List[Dict], file_path: str)',
            'def _extract_calls(self, content: str, methods: List[Dict], file_path: str, all_methods: List[Dict] = None)'
        )
        print(f"✅ 修改第{i+1}行：添加all_methods参数")
    
    if in_extract_calls:
        # 找到known_methods的替换位置
        if 'method_names = [m[\'name\'] for m in methods]' in line:
            # 在这行之后插入known_methods逻辑
            lines.insert(i + 1, '''        
        # 如果提供了所有方法列表，使用它；否则只使用当前文件的方法
        if all_methods is not None:
            known_methods = set(m['name'] for m in all_methods)
        else:
            known_methods = set(method_names)
''')
            print(f"✅ 在第{i+2}行插入known_methods逻辑")
            i += 1  # 跳过插入的行
        
        # 修改调用检查
        if 'callee_name in method_names' in line and 'known_methods' not in lines[i-1]:
            lines[i] = line.replace('callee_name in method_names', 'callee_name in known_methods')
            print(f"✅ 修改第{i+1}行：使用known_methods而不是method_names")

# 保存修改
with open('/workspace/arkts_parser.py', 'w', encoding='utf-8') as f:
    f.writelines(lines)

print("\n✅ 补丁应用完成！")
