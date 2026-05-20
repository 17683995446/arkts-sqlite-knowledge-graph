#!/usr/bin/env python3
"""
极限输入测试 - 特殊文件名、路径、编码
测试系统对各种极端输入的处理能力
"""
import subprocess
import time
import os
import tempfile
import shutil

def test_special_filenames():
    """测试特殊文件名"""
    print("\n" + "="*80)
    print("测试1：特殊文件名")
    print("="*80)
    
    temp_dir = tempfile.mkdtemp(prefix="special_names_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")
    
    try:
        os.makedirs(project_path)
        
        # 测试各种特殊文件名
        special_names = [
            "normal.ets",
            "with spaces.ets",
            "中文文件.ets",
            "日本語.ets",
            "emoji_😀.ets",
            "special_chars_!@#.ets",
            "unicode_\u00e9\u00e8.ets",
            "very_long_name_that_exceeds_normal_length_limits_and_should_still_work_correctly.ets",
            ".hidden.ets",
            "multiple.dots.here.ets",
            "CAPS.ETS",
            "MixedCase.Ets",
        ]
        
        print(f"\n创建 {len(special_names)} 个特殊文件名的文件...")
        
        for name in special_names:
            filepath = os.path.join(project_path, name)
            try:
                with open(filepath, 'w', encoding='utf-8') as f:
                    f.write(f"""@Component
struct TestComponent {{
    @State data: string = 'Test'
    
    build() {{
        Text(this.data)
    }}
}}
""")
                print(f"  ✓ 创建: {name}")
            except Exception as e:
                print(f"  ✗ 失败: {name} - {e}")
        
        # 测试构建
        print("\n--- 测试构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print("✓ 特殊文件名处理成功")
        else:
            print(f"⚠ 构建失败: {result.stderr}")
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_special_paths():
    """测试特殊路径"""
    print("\n" + "="*80)
    print("测试2：特殊路径")
    print("="*80)
    
    temp_dir = tempfile.mkdtemp(prefix="special_paths_")
    
    try:
        # 测试超长路径（在支持的文件系统上）
        print("\n--- 测试超长路径 ---")
        
        deep_path = temp_dir
        for i in range(10):
            deep_path = os.path.join(deep_path, f"level_{i}")
        
        try:
            os.makedirs(deep_path, exist_ok=True)
            test_file = os.path.join(deep_path, "DeepTest.ets")
            
            with open(test_file, 'w', encoding='utf-8') as f:
                f.write("""@Component
struct DeepTest {
    build() {}
}
""")
            
            db_path = os.path.join(temp_dir, "code.db")
            
            result = subprocess.run(
                ["python", "main.py", "build", deep_path, db_path],
                capture_output=True,
                text=True
            )
            
            if result.returncode == 0:
                print(f"✓ 超长路径处理成功")
            else:
                print(f"⚠ 超长路径处理失败")
                
        except Exception as e:
            print(f"⚠ 超长路径测试失败: {e}")
        
        # 测试符号链接
        print("\n--- 测试符号链接 ---")
        real_dir = os.path.join(temp_dir, "real_project")
        link_dir = os.path.join(temp_dir, "link_project")
        
        os.makedirs(real_dir)
        
        # 创建一些测试文件
        with open(os.path.join(real_dir, "Linked.ets"), 'w', encoding='utf-8') as f:
            f.write("""@Component
struct LinkedComponent {
    build() {}
}
""")
        
        try:
            os.symlink(real_dir, link_dir)
            
            db_path = os.path.join(temp_dir, "code.db")
            
            # 测试符号链接目录
            result = subprocess.run(
                ["python", "main.py", "build", link_dir, db_path],
                capture_output=True,
                text=True
            )
            
            if result.returncode == 0:
                print(f"✓ 符号链接处理成功")
            else:
                print(f"⚠ 符号链接处理失败")
                
        except Exception as e:
            print(f"⚠ 符号链接测试失败: {e}")
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_special_encodings():
    """测试特殊编码"""
    print("\n" + "="*80)
    print("测试3：特殊编码")
    print("="*80)
    
    temp_dir = tempfile.mkdtemp(prefix="encoding_test_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")
    
    try:
        os.makedirs(project_path)
        
        # 测试不同编码的文件
        encodings = [
            ("utf-8", "UTF8.ets"),
            ("gbk", "GBK.ets"),
            ("utf-16", "UTF16.ets"),
            ("latin-1", "Latin1.ets"),
        ]
        
        print(f"\n创建 {len(encodings)} 个不同编码的文件...")
        
        for encoding, filename in encodings:
            filepath = os.path.join(project_path, filename)
            try:
                with open(filepath, 'w', encoding=encoding) as f:
                    # 使用基本ASCII字符，确保所有编码都能正确处理
                    content = """@Component
struct Test {
    @State data: string = "Test"
    build() {
        Text(this.data)
    }
}
"""
                    f.write(content)
                
                print(f"  ✓ {encoding}: {filename}")
            except Exception as e:
                print(f"  ✗ {encoding}: {filename} - {e}")
        
        # 测试构建
        print("\n--- 测试构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print("✓ 特殊编码处理成功")
        else:
            print(f"⚠ 构建失败")
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_extreme_content():
    """测试极端内容"""
    print("\n" + "="*80)
    print("测试4：极端内容")
    print("="*80)
    
    temp_dir = tempfile.mkdtemp(prefix="extreme_content_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")
    
    try:
        os.makedirs(project_path)
        
        # 测试各种极端内容
        test_cases = [
            ("empty", "Empty.ets", ""),
            ("huge_file", "Huge.ets", "x" * 100000),  # 100KB文件
            ("binary_like", "BinaryLike.ets", "\x00\x01\x02\x03" * 1000),
            ("null_bytes", "NullBytes.ets", "Test\x00Null"),
            ("very_long_line", "LongLine.ets", "@Component\nstruct Test { " + "x" * 10000 + " }\n"),
        ]
        
        print(f"\n创建 {len(test_cases)} 个极端内容的文件...")
        
        for name, filename, content in test_cases:
            filepath = os.path.join(project_path, filename)
            try:
                # 尝试用UTF-8写入，如果失败则跳过
                try:
                    with open(filepath, 'w', encoding='utf-8') as f:
                        f.write(content)
                    print(f"  ✓ {name}: {len(content)} 字节")
                except UnicodeEncodeError:
                    # 对于二进制内容，使用errors='replace'
                    with open(filepath, 'w', encoding='utf-8', errors='replace') as f:
                        f.write(content)
                    print(f"  ✓ {name}: {len(content)} 字节 (with replace)")
                    
            except Exception as e:
                print(f"  ✗ {name}: {filename} - {e}")
        
        # 测试构建
        print("\n--- 测试构建 ---")
        result = subprocess.run(
            ["python", "main.py", "build", project_path, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print("✓ 极端内容处理成功")
        else:
            print(f"⚠ 构建失败")
        
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    test_special_filenames()
    test_special_paths()
    test_special_encodings()
    test_extreme_content()
    
    print("\n" + "="*80)
    print("所有极限输入测试完成")
    print("="*80)
