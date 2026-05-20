#!/usr/bin/env python3
"""
检查数据库真实内容，修复统计
"""
import sqlite3

def check_db_stats(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    print("="*80)
    print("数据库真实统计")
    print("="*80)
    
    # 真实数量
    cursor.execute("SELECT COUNT(*) FROM files")
    real_files = cursor.fetchone()[0]
    print(f"文件数: {real_files}")
    
    cursor.execute("SELECT COUNT(*) FROM classes")
    real_classes = cursor.fetchone()[0]
    print(f"类数: {real_classes}")
    
    cursor.execute("SELECT COUNT(*) FROM methods")
    real_methods = cursor.fetchone()[0]
    print(f"方法数: {real_methods}")
    
    cursor.execute("SELECT COUNT(*) FROM calls")
    real_calls = cursor.fetchone()[0]
    print(f"调用关系数: {real_calls}")
    
    print("\n详细内容:")
    
    print("\n所有文件 (前10):")
    cursor.execute("SELECT id, path FROM files LIMIT 10")
    for row in cursor.fetchall():
        print(f"  - {row}")
    
    print("\n所有类:")
    cursor.execute("SELECT id, name, file_id FROM classes")
    for row in cursor.fetchall():
        print(f"  - {row}")
    
    print("\n所有方法:")
    cursor.execute("SELECT id, name, class_id, file_id FROM methods")
    for row in cursor.fetchall():
        print(f"  - {row}")
    
    print("\n所有调用关系:")
    cursor.execute("SELECT caller_id, callee_id FROM calls")
    for row in cursor.fetchall():
        print(f"  - {row}")
    
    conn.close()

if __name__ == "__main__":
    check_db_stats("code.db")
