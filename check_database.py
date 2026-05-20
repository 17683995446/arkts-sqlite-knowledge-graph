#!/usr/bin/env python3
"""
检查数据库内容，诊断发现的问题
"""

import sqlite3

db_path = "code.db"
conn = sqlite3.connect(db_path)
cursor = conn.cursor()

print("="*80)
print("代码知识图谱数据库检查")
print("="*80)

print("\n1. 文件表")
cursor.execute("SELECT * FROM files LIMIT 20")
files = cursor.fetchall()
print(f"  总文件数: {len(files)}")
for file in files:
    print(f"    - {file}")

print("\n2. 类表")
cursor.execute("SELECT * FROM classes LIMIT 20")
classes = cursor.fetchall()
print(f"  类数: {len(classes)}")
for cls in classes:
    print(f"    - {cls}")

print("\n3. 方法表")
cursor.execute("SELECT * FROM methods LIMIT 20")
methods = cursor.fetchall()
print(f"  方法数: {len(methods)}")
for method in methods[:10]:
    print(f"    - {method}")

print("\n4. 调用关系表")
cursor.execute("SELECT * FROM calls LIMIT 30")
calls = cursor.fetchall()
print(f"  调用关系数: {len(calls)}")
for call in calls:
    print(f"    - {call}")

print("\n5. 调用关系统计 (前10个源)")
cursor.execute("""
    SELECT m1.name, m2.name, c.caller_id, c.callee_id
    FROM calls c
    JOIN methods m1 ON c.caller_id = m1.id
    JOIN methods m2 ON c.callee_id = m2.id
    LIMIT 20
""")
stats = cursor.fetchall()
for row in stats:
    print(f"  {row[0]} -> {row[1]}")

print("\n6. 问题分析")
if len(classes) == 0:
    print("  ⚠️ 严重问题：类解析失败！")
    
calls_per_method = len(calls) / max(1, len(methods))
if calls_per_method > 5:
    print(f"  ⚠️ 异常：平均每个方法有 {calls_per_method:.1f} 个调用关系！")

conn.close()
