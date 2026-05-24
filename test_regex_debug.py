#!/usr/bin/env python3
"""深入调试调用关系提取"""
import sys
import re
sys.path.insert(0, '/workspace')

from arkts_parser import ArkTSParser

parser = ArkTSParser()

content = """struct Layer1 {
    method1() {
        this.method0();
    }

    build() {}
}
"""

print("=== 测试内容 ===")
print(content)

# 1. 测试method_pattern
print("\n=== method_pattern 匹配 ===")
matches = parser.method_pattern.finditer(content)
for match in matches:
    print(f"  匹配: '{match.group(0)}' at {match.start()}-{match.end()}")
    print(f"  方法名: '{match.group(1)}'")

# 2. 测试call_pattern
print("\n=== call_pattern 匹配 ===")
call_matches = parser.call_pattern.finditer(content)
for match in call_matches:
    print(f"  匹配: '{match.group(0)}' at {match.start()}-{match.end()}")
    print(f"  函数名: '{match.group(1)}'")

# 3. 模拟_extract_calls的逻辑
print("\n=== 模拟_extract_calls逻辑 ===")
methods = []
for match in parser.method_pattern.finditer(content):
    methods.append({
        'name': match.group(1),
        'start': match.start(),
        'end': match.end()
    })

print(f"提取的方法: {[m['name'] for m in methods]}")

method_names = [m['name'] for m in methods]
print(f"方法名列表: {method_names}")

for caller in methods:
    caller_name = caller['name']
    print(f"\n处理调用者: {caller_name}")
    
    # 搜索caller方法
    pattern = re.compile(r'\b' + re.escape(caller_name) + r'\s*\(')
    match = pattern.search(content)
    
    if match:
        print(f"  找到方法定义 at {match.start()}-{match.end()}")
        caller_start = match.start()
        
        # 找方法体开始
        i = content.find('{', caller_start)
        if i != -1:
            print(f"  找到方法体开始 at {i}")
            
            # 跟踪括号
            stack = ['{']
            caller_end = len(content)
            for j in range(i + 1, min(len(content), i + 10000)):
                if content[j] == '{':
                    stack.append('{')
                elif content[j] == '}':
                    stack.pop()
                    if not stack:
                        caller_end = j + 1
                        break
            
            method_content = content[caller_start:caller_end]
            print(f"  方法体长度: {len(method_content)}")
            print(f"  方法体内容: {method_content[:200]}...")
            
            # 搜索调用
            call_pattern = re.compile(r'\b(\w{1,200})\s*\(')
            call_matches = call_pattern.finditer(method_content)
            
            for call_match in call_matches:
                callee_name = call_match.group(1)
                print(f"    发现调用: {callee_name}()")
                print(f"    在method_names中: {callee_name in method_names}")
                print(f"    不是自己: {callee_name != caller_name}")
                
                if callee_name in method_names and callee_name != caller_name:
                    print(f"    ✅ 有效调用!")
    else:
        print(f"  ❌ 未找到方法定义")
