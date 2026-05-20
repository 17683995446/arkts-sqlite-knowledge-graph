#!/usr/bin/env python3
import os
from database import CodeGraphDatabase
from arkts_parser import ArkTSParser

def test_single_file():
    print("测试单个文件解析...")
    
    db = CodeGraphDatabase("test_single.db")
    
    test_file = os.path.join("extreme_test", "large_10000_lines.ets")
    
    parser = ArkTSParser()
    result = parser.parse_file(test_file)
    
    print(f"\n解析结果:")
    print(f"  类: {len(result['classes'])}")
    print(f"  方法: {len(result['methods'])}")
    print(f"  调用关系: {len(result['calls'])}")
    
    print(f"\n类列表:")
    for cls in result['classes']:
        print(f"  - {cls['name']}")
    
    print(f"\n方法列表:")
    for method in result['methods']:
        class_str = f" (class: {method['class_name']})" if method['class_name'] else ""
        print(f"  - {method['name']}{class_str}")
    
    print(f"\n调用关系:")
    for call in result['calls']:
        print(f"  - {call['caller']} -> {call['callee']}")
    
    db.close()
    print("\n✅ 单文件测试完成!")

if __name__ == "__main__":
    if os.path.exists("test_single.db"):
        os.remove("test_single.db")
    
    test_single_file()
