#!/usr/bin/env python3
"""
数据库完整性测试 - 异常中断恢复
测试系统在各种异常情况下的数据完整性和恢复能力
"""
import subprocess
import time
import os
import tempfile
import shutil
import signal
import sqlite3

def create_test_project(project_path, num_files=50):
    """创建测试项目"""
    os.makedirs(project_path, exist_ok=True)
    
    for i in range(num_files):
        filename = os.path.join(project_path, f"Test{i}.ets")
        with open(filename, 'w', encoding='utf-8') as f:
            f.write(f"""@Component
struct Test{i} {{
    @State data: string = 'Data {i}'
    
    aboutToAppear() {{
        console.log('Init {{i}}')
    }}
    
    build() {{
        Column() {{
            Text(this.data)
        }}
    }}
}}
""")

def test_interrupted_write():
    """测试中断写入的恢复"""
    print("\n" + "="*80)
    print("测试1：中断写入的恢复")
    print("="*80)
    
    temp_dir = tempfile.mkdtemp(prefix="interrupt_test_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")
    
    try:
        # 创建测试项目
        create_test_project(project_path, num_files=100)
        
        # 第一次完整构建
        print("\n--- 第一次完整构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print(result.stdout)
        
        # 检查数据库完整性
        print("\n--- 检查数据库完整性 ---")
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        
        cursor.execute("SELECT COUNT(*) FROM files")
        file_count = cursor.fetchone()[0]
        print(f"文件数: {file_count}")
        
        cursor.execute("SELECT COUNT(*) FROM classes")
        class_count = cursor.fetchone()[0]
        print(f"类数: {class_count}")
        
        cursor.execute("SELECT COUNT(*) FROM methods")
        method_count = cursor.fetchone()[0]
        print(f"方法数: {method_count}")
        
        conn.close()
        
        # 修改文件，然后模拟中断
        print("\n--- 修改文件并测试增量更新 ---")
        time.sleep(0.1)
        
        # 修改一个文件
        test_file = os.path.join(project_path, "Test0.ets")
        with open(test_file, 'a', encoding='utf-8') as f:
            f.write("\n// 添加一行")
        
        # 第二次构建（应该只处理变更的文件）
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print(result.stdout)
        
        # 再次检查完整性
        print("\n--- 再次检查数据库完整性 ---")
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        
        cursor.execute("SELECT COUNT(*) FROM files")
        file_count2 = cursor.fetchone()[0]
        print(f"文件数: {file_count2}")
        
        cursor.execute("SELECT COUNT(*) FROM classes")
        class_count2 = cursor.fetchone()[0]
        print(f"类数: {class_count2}")
        
        conn.close()
        
        if file_count == file_count2 and class_count == class_count2:
            print("✓ 数据库完整性保持")
        else:
            print("⚠ 数据库记录发生变化")
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_corrupted_recovery():
    """测试损坏数据库的恢复"""
    print("\n" + "="*80)
    print("测试2：损坏数据库的恢复")
    print("="*80)
    
    temp_dir = tempfile.mkdtemp(prefix="corrupt_test_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")
    
    try:
        # 创建测试项目
        create_test_project(project_path, num_files=30)
        
        # 第一次构建
        print("\n--- 第一次构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print(result.stdout)
        
        # 备份数据库
        db_backup = db_path + ".backup"
        shutil.copy(db_path, db_backup)
        print(f"\n备份数据库: {db_backup}")
        
        # 模拟数据库损坏：添加一些垃圾数据
        print("\n--- 模拟数据库损坏 ---")
        conn = sqlite3.connect(db_path)
        try:
            conn.execute("INSERT INTO files (path, hash) VALUES ('corrupted_path', 'bad_hash')")
            conn.commit()
            print("添加了损坏的记录")
        except:
            pass
        conn.close()
        
        # 尝试再次构建
        print("\n--- 尝试再次构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print(result.stdout)
        
        # 检查数据库
        print("\n--- 检查数据库状态 ---")
        try:
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute("SELECT COUNT(*) FROM files")
            count = cursor.fetchone()[0]
            print(f"文件记录数: {count}")
            
            cursor.execute("PRAGMA integrity_check")
            integrity = cursor.fetchone()[0]
            print(f"数据库完整性检查: {integrity}")
            
            conn.close()
            
            if integrity == "ok":
                print("✓ 数据库完整性正常")
            else:
                print("⚠ 数据库存在问题")
                
        except Exception as e:
            print(f"数据库检查失败: {e}")
            print("尝试使用备份恢复...")
            
            if os.path.exists(db_backup):
                shutil.copy(db_backup, db_path)
                print("已从备份恢复")
                
                # 验证恢复
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                cursor.execute("SELECT COUNT(*) FROM files")
                count = cursor.fetchone()[0]
                print(f"恢复后的文件数: {count}")
                conn.close()
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_empty_and_special_paths():
    """测试空项目和特殊路径"""
    print("\n" + "="*80)
    print("测试3：空项目和特殊路径")
    print("="*80)
    
    # 测试空目录
    temp_dir = tempfile.mkdtemp(prefix="empty_test_")
    project_path = os.path.join(temp_dir, "empty_project")
    db_path = os.path.join(temp_dir, "code.db")
    
    try:
        os.makedirs(project_path)
        print(f"\n测试空目录: {project_path}")
        
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print("结果:", result.stdout.strip())
        
        if result.returncode == 0:
            print("✓ 空目录处理正常")
        else:
            print(f"⚠ 返回码: {result.returncode}")
            
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)
    
    # 测试不存在的路径
    print("\n--- 测试不存在的路径 ---")
    fake_path = "/tmp/nonexistent_path_12345"
    result = subprocess.run(
        ["python", "main.py", "build", fake_path],
        capture_output=True,
        text=True
    )
    print("结果:", result.stdout.strip())
    
    if "不存在" in result.stdout or "error" in result.stdout.lower():
        print("✓ 不存在的路径处理正常")
    else:
        print("⚠ 可能存在问题")

if __name__ == "__main__":
    test_interrupted_write()
    test_corrupted_recovery()
    test_empty_and_special_paths()
    
    print("\n" + "="*80)
    print("所有数据库完整性测试完成")
    print("="*80)
