#!/usr/bin/env python3
"""
真正的并发写入测试，模拟真实使用场景
"""
import subprocess
import time
import os
import tempfile
import shutil

def test_real_concurrent_build():
    """测试真实的并发构建"""
    print("\n" + "="*80)
    print("真实的并发构建测试")
    print("="*80)

    # 创建临时目录
    temp_dir = tempfile.mkdtemp(prefix="real_concurrent_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")

    try:
        # 创建测试项目
        print(f"创建测试项目: {project_path}")
        os.makedirs(project_path, exist_ok=True)

        for i in range(30):
            filename = os.path.join(project_path, f"Test{i}.ets")
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(f"""@Component
struct Test{i} {{
    @State message: string = 'Hello'

    aboutToAppear() {{
        console.log('Init {{i}}')
    }}

    build() {{
        Column() {{
            Text(this.message)
        }}
    }}
}}
""")

        print(f"创建了 30 个测试文件")

        # 第一次构建
        print("\n--- 第一次构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print("STDOUT:", result.stdout)
        if result.stderr:
            print("STDERR:", result.stderr)
        print(f"返回码: {result.returncode}")

        # 检查数据库
        print(f"\n检查数据库: {db_path}")
        if os.path.exists(db_path):
            print(f"数据库文件大小: {os.path.getsize(db_path)} bytes")
        else:
            print("数据库文件不存在！")

        # 第二次构建（增量更新）
        print("\n--- 第二次构建（应该没有变更）---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        print("STDOUT:", result.stdout)
        if result.stderr:
            print("STDERR:", result.stderr)

    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    test_real_concurrent_build()
