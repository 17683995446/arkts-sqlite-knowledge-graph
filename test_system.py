#!/usr/bin/env python3
"""
测试代码知识图谱系统
"""

import os
import shutil
from database import CodeGraphDatabase
from arkts_parser import ArkTSParser
from file_scanner import calculate_file_hash, scan_project
from parallel_processor import parse_single_file

def test_database():
    print("="*50)
    print("测试数据库模块...")
    
    if os.path.exists("test.db"):
        os.remove("test.db")
    
    db = CodeGraphDatabase("test.db")
    
    test_data = {
        'file_path': '/test/example.arkts',
        'hash': 'abc123',
        'classes': [{'name': 'TestClass'}],
        'methods': [
            {'name': 'method1', 'class_name': 'TestClass'},
            {'name': 'method2', 'class_name': 'TestClass'}
        ],
        'calls': [{'caller': 'method1', 'callee': 'method2'}],
        'components': []
    }
    
    db.batch_insert([test_data])
    
    summary = db.get_graph_summary()
    print(f"数据库摘要: {summary}")
    assert summary['files'] == 1
    assert summary['classes'] == 1
    assert summary['methods'] == 2
    assert summary['calls'] == 1
    
    db.close()
    os.remove("test.db")
    print("✓ 数据库模块测试通过!")

def test_parser():
    print("\n" + "="*50)
    print("测试解析器模块...")
    
    parser = ArkTSParser()
    result = parser.parse_file("example.arkts")
    
    print(f"解析文件: {result['file_path']}")
    print(f"类数量: {len(result['classes'])}")
    print(f"方法数量: {len(result['methods'])}")
    print(f"调用关系数量: {len(result['calls'])}")
    
    print("类:")
    for cls in result['classes']:
        print(f"  - {cls['name']}")
    
    print("方法:")
    for method in result['methods']:
        print(f"  - {method['name']}" + (f" (class: {method['class_name']})" if method['class_name'] else ""))
    
    print("调用关系:")
    for call in result['calls']:
        print(f"  - {call['caller']} -> {call['callee']}")
    
    print("✓ 解析器模块测试通过!")
    return result

def test_file_scanner():
    print("\n" + "="*50)
    print("测试文件扫描模块...")
    
    files = scan_project(".")
    print(f"找到 {len(files)} 个文件")
    
    hash_val = calculate_file_hash("example.arkts")
    print(f"example.arkts 的哈希: {hash_val[:16]}...")
    
    print("✓ 文件扫描模块测试通过!")

def main():
    print("\n" + "="*50)
    print("代码知识图谱系统测试")
    print("="*50 + "\n")
    
    try:
        test_file_scanner()
        parsed_data = test_parser()
        test_database()
        
        print("\n" + "="*50)
        print("所有测试通过! ✓")
        print("="*50 + "\n")
        
        print("现在可以运行:")
        print("  python main.py build .  # 构建当前目录的代码图谱")
        print("  python main.py query     # 进入查询模式")
        
    except Exception as e:
        print(f"\n测试失败: {e}")
        import traceback
        traceback.print_exc()

if __name__ == "__main__":
    main()
