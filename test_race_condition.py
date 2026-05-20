#!/usr/bin/env python3
"""
诊断数据库初始化竞态条件
"""
import os
import time
import sqlite3
import multiprocessing
import tempfile

def worker_build(args):
    """模拟构建过程"""
    db_path, worker_id = args

    print(f"[Worker {worker_id}] 开始...")

    # 模拟数据库连接和表创建
    try:
        # 1. 连接数据库
        conn = sqlite3.connect(db_path)
        print(f"[Worker {worker_id}] 连接数据库成功")

        # 2. 创建表
        conn.execute('''
            CREATE TABLE IF NOT EXISTS files (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                path TEXT UNIQUE NOT NULL
            )
        ''')
        conn.commit()
        print(f"[Worker {worker_id}] 创建表成功")

        # 3. 插入数据
        conn.execute(f"INSERT INTO files (path) VALUES ('file_{worker_id}.ets')")
        conn.commit()
        print(f"[Worker {worker_id}] 插入数据成功")

        conn.close()
        print(f"[Worker {worker_id}] 完成")

        return {'worker_id': worker_id, 'success': True}
    except Exception as e:
        print(f"[Worker {worker_id}] 失败: {e}")
        return {'worker_id': worker_id, 'success': False, 'error': str(e)}

def test_race_condition():
    """测试竞态条件"""
    print("\n" + "="*80)
    print("诊断数据库初始化竞态条件")
    print("="*80)

    # 创建临时数据库
    temp_dir = tempfile.mkdtemp(prefix="race_test_")
    db_path = os.path.join(temp_dir, "test.db")

    print(f"测试数据库路径: {db_path}")

    # 测试1：并发创建数据库
    print("\n--- 测试：5个进程并发创建数据库 ---")
    with multiprocessing.Pool(processes=5) as pool:
        args = [(db_path, i) for i in range(5)]
        results = pool.map(worker_build, args)

    success_count = sum(1 for r in results if r['success'])
    print(f"\n成功: {success_count}/5")

    # 检查数据库
    print("\n--- 检查数据库 ---")
    try:
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()

        # 列出所有表
        cursor.execute("SELECT name FROM sqlite_master WHERE type='table'")
        tables = cursor.fetchall()
        print(f"表列表: {tables}")

        if tables:
            cursor.execute("SELECT * FROM files")
            rows = cursor.fetchall()
            print(f"记录数: {len(rows)}")
            print(f"记录: {rows}")

        conn.close()
    except Exception as e:
        print(f"数据库检查失败: {e}")

    # 清理
    print(f"\n清理: {temp_dir}")
    os.remove(db_path)
    os.rmdir(temp_dir)

if __name__ == "__main__":
    test_race_condition()
