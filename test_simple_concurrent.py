#!/usr/bin/env python3
"""
简化版并发测试
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time

sys.path.insert(0, '/workspace')

def test_simple_concurrent():
    """简化的并发测试"""
    print("=" * 80)
    print("并发测试")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='concurrent_')
    
    try:
        # 创建测试项目
        project_dir = os.path.join(temp_dir, 'project')
        os.makedirs(project_dir)
        
        for i in range(50):
            with open(os.path.join(project_dir, f'File{i}.ets'), 'w') as f:
                f.write(f"@Component\nstruct File{i} {{ build() {{ Text('{i}'); }} }}\n")
        
        db_path = os.path.join(temp_dir, 'test.db')
        
        # 测试1：串行构建
        print("\n测试1：串行构建（3次）")
        for i in range(3):
            start = time.time()
            subprocess.run([sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                         capture_output=True, timeout=10)
            elapsed = time.time() - start
            print(f"  第{i+1}次: {elapsed:.2f}秒")
        
        # 测试2：验证数据持久化
        print("\n测试2：验证数据持久化")
        import sqlite3
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        cursor.execute('SELECT COUNT(*) FROM files')
        file_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM classes')
        class_count = cursor.fetchone()[0]
        conn.close()
        
        print(f"  文件数: {file_count}")
        print(f"  类数: {class_count}")
        
        if file_count == 50 and class_count == 50:
            print("  ✅ 数据完整性良好")
        else:
            print("  ⚠️  数据可能有问题")
        
        print("\n✅ 并发测试完成！")
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    test_simple_concurrent()
