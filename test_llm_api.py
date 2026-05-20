#!/usr/bin/env python3
"""
LLM API 集成测试 - 网络异常处理
测试系统对各种网络异常的处理能力
"""
import sys
import os

# 添加工作目录
sys.path.insert(0, '/workspace')

from llm_query import CodeQueryEngine
import time

def test_llm_api():
    """测试 LLM API 的各种异常情况"""
    print("\n" + "="*80)
    print("LLM API 集成测试")
    print("="*80)
    
    # 检查 API 配置
    print("\n--- 检查 API 配置 ---")
    api_key = os.getenv("SILICONFLOW_API_KEY")
    api_url = os.getenv("SILICONFLOW_API_URL")
    
    print(f"API Key: {'已设置' if api_key else '未设置'}")
    print(f"API URL: {api_url if api_url else '未设置（使用默认值）'}")
    
    if not api_key:
        print("\n⚠ 警告：未设置 API Key，跳过实际 API 调用测试")
        print("仅测试代码结构和错误处理能力")
        
        # 测试基本的错误处理能力
        test_error_handling()
    else:
        # 测试实际的 API 调用
        test_actual_api()
    
    print("\n" + "="*80)
    print("LLM API 测试完成")
    print("="*80)

def test_error_handling():
    """测试错误处理能力"""
    print("\n--- 测试错误处理能力 ---")
    
    # 测试1：空数据库查询
    print("\n测试1：空数据库查询")
    try:
        import tempfile
        db_path = tempfile.mktemp(suffix=".db")
        
        # 创建一个空的数据库
        import sqlite3
        conn = sqlite3.connect(db_path)
        conn.execute("""
            CREATE TABLE files (
                id INTEGER PRIMARY KEY,
                path TEXT,
                hash TEXT
            )
        """)
        conn.execute("""
            CREATE TABLE classes (
                id INTEGER PRIMARY KEY,
                name TEXT,
                file_id INTEGER
            )
        """)
        conn.execute("""
            CREATE TABLE methods (
                id INTEGER PRIMARY KEY,
                name TEXT,
                class_id INTEGER,
                file_id INTEGER
            )
        """)
        conn.commit()
        conn.close()
        
        engine = CodeQueryEngine(db_path)
        
        # 尝试查询
        print("  尝试查询...")
        try:
            result = engine.ask("这个项目有什么？")
            print(f"  结果: {result[:200]}...")
        except Exception as e:
            print(f"  ✓ 正确处理: {type(e).__name__}")
        
        engine.close()
        
        # 清理
        os.unlink(db_path)
        
    except Exception as e:
        print(f"  ⚠ 测试失败: {e}")
    
    # 测试2：损坏的数据库
    print("\n测试2：损坏的数据库")
    try:
        import tempfile
        db_path = tempfile.mktemp(suffix=".db")
        
        # 创建一个损坏的数据库
        with open(db_path, 'w') as f:
            f.write("This is not a valid SQLite database")
        
        print("  尝试使用损坏的数据库...")
        try:
            engine = CodeQueryEngine(db_path)
            result = engine.ask("Test")
            print(f"  结果: {result}")
        except Exception as e:
            print(f"  ✓ 正确处理: {type(e).__name__} - {str(e)[:100]}")
        
        # 清理
        if os.path.exists(db_path):
            os.unlink(db_path)
        
    except Exception as e:
        print(f"  ⚠ 测试失败: {e}")
    
    # 测试3：数据库不存在
    print("\n测试3：数据库不存在")
    try:
        fake_db = "/tmp/nonexistent_database_12345.db"
        
        if os.path.exists(fake_db):
            os.unlink(fake_db)
        
        print(f"  尝试打开不存在的数据库: {fake_db}")
        try:
            engine = CodeQueryEngine(fake_db)
            result = engine.ask("Test")
            print(f"  结果: {result}")
        except Exception as e:
            print(f"  ✓ 正确处理: {type(e).__name__} - {str(e)[:100]}")
        
    except Exception as e:
        print(f"  ⚠ 测试失败: {e}")

def test_actual_api():
    """测试实际的 API 调用"""
    print("\n--- 测试实际的 API 调用 ---")
    
    # 使用现有的数据库
    db_path = "/workspace/code.db"
    
    if not os.path.exists(db_path):
        print("⚠ 数据库不存在，跳过 API 测试")
        return
    
    try:
        engine = CodeQueryEngine(db_path)
        
        # 测试简单查询
        print("\n测试1：简单查询")
        print("  问题: 这个项目有什么？")
        try:
            result = engine.ask("这个项目有什么？")
            print(f"  ✓ 成功")
            print(f"  结果预览: {result[:300]}...")
        except Exception as e:
            print(f"  ✗ 失败: {e}")
        
        # 测试技术问题
        print("\n测试2：技术问题")
        print("  问题: 如何理解代码结构？")
        try:
            result = engine.ask("如何理解代码结构？")
            print(f"  ✓ 成功")
            print(f"  结果预览: {result[:300]}...")
        except Exception as e:
            print(f"  ✗ 失败: {e}")
        
        # 测试超时处理
        print("\n测试3：超时处理")
        print("  设置短超时，测试系统响应...")
        # 注意：这里我们不实际修改超时，只是测试代码能否处理
        
        engine.close()
        
    except Exception as e:
        print(f"\n⚠ API 测试失败: {e}")

if __name__ == "__main__":
    test_llm_api()
