#!/usr/bin/env python3
"""
深入审查发现的数据一致性Bug
验证批量操作中的事务处理问题
"""
import sys
import os
import tempfile
import shutil

sys.path.insert(0, '/workspace')
from database import CodeGraphDatabase
from arkts_parser import ArkTSParser

def test_batch_consistency():
    """测试批量操作的数据一致性"""
    print("=" * 80)
    print("深度审查：批量操作数据一致性测试")
    print("=" * 80)
    
    # 创建临时数据库
    temp_dir = tempfile.mkdtemp(prefix='consistency_test_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建数据库
        db = CodeGraphDatabase(db_path)
        
        # 准备测试数据 - 模拟一个文件解析失败的情况
        test_files = [
            {
                'file_path': os.path.join(temp_dir, 'file1.ets'),
                'hash': 'hash1',
                'classes': [{'name': 'Class1'}],
                'methods': [{'name': 'method1', 'class_name': 'Class1'}],
                'calls': [],
                'components': []
            },
            {
                'file_path': os.path.join(temp_dir, 'file2.ets'),
                'hash': 'hash2',
                'classes': [{'name': 'Class2'}],
                'methods': [{'name': 'method2', 'class_name': 'Class2'}],
                'calls': [],
                'components': []
            }
        ]
        
        # 写入文件
        for test_file in test_files:
            with open(test_file['file_path'], 'w', encoding='utf-8') as f:
                f.write("@Component\nstruct Test { build() {} }\n")
        
        print("\n第一次批量插入（正常情况）...")
        db.batch_insert(test_files)
        
        # 验证数据
        summary = db.get_graph_summary()
        print(f"插入后统计: {summary}")
        
        # 测试原子性问题：模拟部分失败
        print("\n模拟部分失败测试...")
        
        # 创建一个会导致部分失败的数据集
        partial_data = [
            {
                'file_path': os.path.join(temp_dir, 'file3.ets'),
                'hash': 'hash3',
                'classes': [{'name': 'Class3'}],
                'methods': [{'name': 'method3', 'class_name': 'Class3'}],
                'calls': [],
                'components': []
            },
            {
                'file_path': os.path.join(temp_dir, 'file4.ets'),
                'hash': 'hash4',
                'classes': [{'name': 'Class4'}],  # 假设这个类名会导致问题
                'methods': [{'name': 'method4', 'class_name': 'Class4'}],
                'calls': [],
                'components': []
            }
        ]
        
        # 写入文件
        for test_file in partial_data:
            with open(test_file['file_path'], 'w', encoding='utf-8') as f:
                f.write("@Component\nstruct Test4 { build() {} }\n")
        
        # 插入
        db.batch_insert(partial_data)
        
        # 验证
        summary = db.get_graph_summary()
        print(f"第二次插入后统计: {summary}")
        
        db.close()
        
        # 重新打开数据库，验证数据持久性
        print("\n重新打开数据库验证...")
        db2 = CodeGraphDatabase(db_path)
        summary2 = db2.get_graph_summary()
        print(f"重新加载统计: {summary2}")
        
        if summary == summary2:
            print("✅ 数据一致性良好")
        else:
            print("❌ 数据不一致！")
        
        db2.close()
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_transaction_atomicity():
    """测试事务原子性"""
    print("\n" + "=" * 80)
    print("测试事务原子性")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='atomic_test_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        db = CodeGraphDatabase(db_path)
        
        # 准备数据
        test_files = [
            {
                'file_path': os.path.join(temp_dir, 'test1.ets'),
                'hash': 'hash1',
                'classes': [{'name': 'TestClass1'}],
                'methods': [{'name': 'testMethod1', 'class_name': 'TestClass1'}],
                'calls': [],
                'components': []
            },
            {
                'file_path': os.path.join(temp_dir, 'test2.ets'),
                'hash': 'hash2',
                'classes': [{'name': 'TestClass2'}],
                'methods': [{'name': 'testMethod2', 'class_name': 'TestClass2'}],
                'calls': [],
                'components': []
            }
        ]
        
        # 创建文件
        for f in test_files:
            with open(f['file_path'], 'w') as file:
                file.write("@Component\nstruct Test {}\n")
        
        # 使用事务插入
        print("插入文件1...")
        db.batch_insert([test_files[0]])
        
        print("插入文件2...")
        db.batch_insert([test_files[1]])
        
        # 验证
        summary = db.get_graph_summary()
        print(f"最终统计: {summary}")
        
        if summary['files'] == 2 and summary['classes'] == 2:
            print("✅ 事务原子性正常")
        else:
            print("⚠️ 事务原子性可能有问题")
        
        db.close()
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    test_batch_consistency()
    test_transaction_atomicity()
    print("\n✅ 数据一致性测试完成！")
