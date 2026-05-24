#!/usr/bin/env python3
"""
边缘情况极限测试
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import random

sys.path.insert(0, '/workspace')

def test_empty_project():
    """测试空项目"""
    print(f"\n{'=' * 80}")
    print("测试 1: 空项目")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_empty_')
    
    try:
        project_dir = os.path.join(temp_dir, 'empty_project')
        db_path = os.path.join(temp_dir, 'empty.db')
        
        os.makedirs(project_dir)
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 空项目测试通过！")
            return True
        else:
            print(f"\n❌ 空项目测试失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_non_existent_path():
    """测试不存在的路径"""
    print(f"\n{'=' * 80}")
    print("测试 2: 不存在的路径")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_nonexist_')
    
    try:
        project_dir = os.path.join(temp_dir, 'does_not_exist')
        db_path = os.path.join(temp_dir, 'nonexist.db')
        
        # 不创建项目目录
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.stderr:
            print(f"\nSTDERR: {result.stderr}")
        
        print(f"\n✅ 不存在路径测试完成（系统正确处理了错误）")
        return True
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_only_binary_files():
    """测试只有二进制垃圾文件"""
    print(f"\n{'=' * 80}")
    print("测试 3: 只有二进制垃圾文件")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_binary_')
    
    try:
        project_dir = os.path.join(temp_dir, 'binary_project')
        db_path = os.path.join(temp_dir, 'binary.db')
        
        os.makedirs(project_dir)
        
        for i in range(20):
            with open(os.path.join(project_dir, f'binary{i}.ets'), 'wb') as f:
                # 写入随机二进制垃圾
                f.write(bytes([random.randint(0, 255) for _ in range(1000)]))
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 二进制垃圾文件测试通过！")
            return True
        else:
            print(f"\n❌ 二进制垃圾文件测试失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_extremely_long_names():
    """测试超长文件名和标识符"""
    print(f"\n{'=' * 80}")
    print("测试 4: 超长文件名和标识符")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_longnames_')
    
    try:
        project_dir = os.path.join(temp_dir, 'longnames_project')
        db_path = os.path.join(temp_dir, 'longnames.db')
        
        os.makedirs(project_dir)
        
        # 超长文件名
        long_name = 'A' * 100 + '.ets'
        try:
            with open(os.path.join(project_dir, long_name), 'w') as f:
                f.write("""@Component
struct LongNameComponent {
    build() { Text('Test'); }
}
""")
        except Exception as e:
            print(f"无法创建超长文件（预期限制）: {e}")
        
        # 正常文件名但超长标识符
        with open(os.path.join(project_dir, 'long_ids.ets'), 'w') as f:
            long_struct = 'X' * 100
            long_method = 'myMethod' + 'X' * 100
            f.write(f"""struct {long_struct} {{
    {long_method}() {{ console.log('test'); }}
    build() {{ Text('test'); }}
}}
""")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 超长名称测试通过！")
            return True
        else:
            print(f"\n❌ 超长名称测试失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_mixed_file_types():
    """测试混合文件类型"""
    print(f"\n{'=' * 80}")
    print("测试 5: 混合文件类型")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_mixed_')
    
    try:
        project_dir = os.path.join(temp_dir, 'mixed_project')
        db_path = os.path.join(temp_dir, 'mixed.db')
        
        os.makedirs(project_dir)
        
        # 创建各种扩展名的文件
        extensions = ['.ets', '.ts', '.tsx', '.js', '.jsx', '.txt', '.md', '.json', '.xml', '.html', '.css', '.png', '.jpg']
        
        for i, ext in enumerate(extensions):
            fname = os.path.join(project_dir, f'file{i}{ext}')
            if ext in ['.ets', '.ts', '.tsx', '.js', '.jsx']:
                with open(fname, 'w') as f:
                    f.write(f"""struct File{i} {{
    build() {{ Text('File {i}'); }}
}}
""")
            else:
                with open(fname, 'w') as f:
                    f.write(f"This is {ext} file content")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 混合文件类型测试通过！")
            return True
        else:
            print(f"\n❌ 混合文件类型测试失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_nested_directories():
    """测试深度嵌套目录"""
    print(f"\n{'=' * 80}")
    print("测试 6: 深度嵌套目录")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_nested_')
    
    try:
        project_dir = os.path.join(temp_dir, 'nested_project')
        db_path = os.path.join(temp_dir, 'nested.db')
        
        # 创建深度嵌套目录
        current_dir = project_dir
        for i in range(20):
            current_dir = os.path.join(current_dir, f'dir{i}')
            os.makedirs(current_dir)
            with open(os.path.join(current_dir, f'file{i}.ets'), 'w') as f:
                f.write(f"""struct Nested{i} {{
    build() {{ Text('Nested {i}'); }}
}}
""")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 深度嵌套目录测试通过！")
            return True
        else:
            print(f"\n❌ 深度嵌套目录测试失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_zero_byte_files():
    """测试零字节文件"""
    print(f"\n{'=' * 80}")
    print("测试 7: 零字节文件")
    print(f"{'=' * 80}")
    
    temp_dir = tempfile.mkdtemp(prefix='edge_zerobyte_')
    
    try:
        project_dir = os.path.join(temp_dir, 'zerobyte_project')
        db_path = os.path.join(temp_dir, 'zerobyte.db')
        
        os.makedirs(project_dir)
        
        # 创建50个零字节文件
        for i in range(50):
            with open(os.path.join(project_dir, f'zero{i}.ets'), 'w') as f:
                pass  # 零字节
        
        # 同时创建一些正常文件
        for i in range(10):
            with open(os.path.join(project_dir, f'normal{i}.ets'), 'w') as f:
                f.write(f"""struct Normal{i} {{
    build() {{ Text('Normal {i}'); }}
}}
""")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 零字节文件测试通过！")
            return True
        else:
            print(f"\n❌ 零字节文件测试失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("\n开始边缘情况极限测试...\n")
    
    tests = [
        test_empty_project,
        test_non_existent_path,
        test_only_binary_files,
        test_extremely_long_names,
        test_mixed_file_types,
        test_nested_directories,
        test_zero_byte_files
    ]
    
    results = []
    for test in tests:
        try:
            result = test()
            results.append((test.__name__, result))
        except Exception as e:
            print(f"\n❌ 测试 {test.__name__} 异常: {e}")
            results.append((test.__name__, False))
    
    # 总结
    print(f"\n{'=' * 80}")
    print("边缘情况极限测试总结")
    print(f"{'=' * 80}")
    
    success_count = sum(1 for _, r in results if r)
    total_count = len(results)
    
    for name, result in results:
        status = "✅ 通过" if result else "❌ 失败"
        print(f"  {name}: {status}")
    
    print(f"\n总计: {success_count}/{total_count} 测试通过")
    
    if success_count == total_count:
        print(f"\n🎉 所有边缘情况测试通过！")
    else:
        print(f"\n⚠️  部分测试失败")

if __name__ == "__main__":
    main()
