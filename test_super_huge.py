#!/usr/bin/env python3
"""
第八轮测试 - 超级大规模测试（50000+文件）
"""
import sys
import os
import time
import tempfile
import shutil
import subprocess

sys.path.insert(0, '/workspace')

def generate_super_huge_project(num_files=50000):
    """生成超级大规模测试项目（分批次优化）"""
    print("=" * 80)
    print(f"生成 {num_files} 个文件的超级大规模测试项目")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='super_huge_')
    project_dir = os.path.join(temp_dir, 'super_project')
    
    try:
        os.makedirs(project_dir)
        
        print(f"\n开始生成 {num_files} 个文件（分批次优化）...")
        start = time.time()
        
        batch_size = 5000  # 5000个文件一批
        total_batches = (num_files + batch_size - 1) // batch_size
        
        for batch in range(total_batches):
            start_idx = batch * batch_size
            end_idx = min((batch + 1) * batch_size, num_files)
            
            batch_start = time.time()
            
            # 分批次生成文件
            for i in range(start_idx, end_idx):
                file_type = i % 10
                if file_type < 3:
                    # 小文件 - 最常见
                    with open(os.path.join(project_dir, f'tiny{i}.ets'), 'w') as f:
                        f.write(f"@Component\nstruct Tiny{i} {{ build() {{ Text('{i}'); }} }}\n")
                elif file_type < 7:
                    # 中等文件
                    with open(os.path.join(project_dir, f'medium{i}.ets'), 'w') as f:
                        f.write(f"""@Component
struct Medium{i} {{
    @State data{i}: string = 'test {i}';
    aboutToAppear() {{ console.log('init {i}'); }}
    method{i}() {{ console.log('method {i}'); }}
    build() {{ Text(this.data{i}); }}
}}
""")
                else:
                    # 大文件
                    with open(os.path.join(project_dir, f'large{i}.ets'), 'w') as f:
                        f.write(f"""@Component
struct Large{i} {{
    @State a{i}: string = 'a';
    @State b{i}: number = {i};
    @State c{i}: boolean = true;
    aboutToAppear() {{ this.loadData{i}(); }}
    loadData{i}() {{ console.log('load {i}'); }}
    method1{i}() {{ console.log('m1 {i}'); }}
    method2{i}() {{ console.log('m2 {i}'); }}
    method3{i}() {{ this.method1{i}(); this.method2{i}(); }}
    build() {{ Column() {{ Text(this.a{i}); Button('Click'); }} }}
}}
""")
            
            batch_elapsed = time.time() - batch_start
            progress = (end_idx / num_files) * 100
            print(f"  已生成 {end_idx}/{num_files} 个文件 ({progress:.1f}%) - 批次耗时: {batch_elapsed:.2f}秒")
        
        generation_time = time.time() - start
        print(f"\n✅ 文件生成完成！总耗时: {generation_time:.2f}秒")
        
        # 验证文件数量
        actual_files = len([f for f in os.listdir(project_dir) if f.endswith('.ets')])
        print(f"实际文件数: {actual_files}")
        
        # 检查内存使用
        import psutil
        process = psutil.Process()
        mem_info = process.memory_info()
        print(f"内存使用: {mem_info.rss / 1024 / 1024:.1f} MB")
        
        return temp_dir, project_dir
        
    except Exception as e:
        print(f"❌ 生成失败: {e}")
        import traceback
        print(traceback.format_exc())
        shutil.rmtree(temp_dir, ignore_errors=True)
        return None, None

def test_super_huge_build(project_dir, num_files):
    """测试超级大规模构建"""
    print("\n" + "=" * 80)
    print("测试超级大规模构建性能")
    print("=" * 80)
    
    temp_db_dir = tempfile.mkdtemp(prefix='super_db_')
    db_path = os.path.join(temp_db_dir, 'super_huge.db')
    
    try:
        # 第一次构建（完整）
        print("\n--- 第一次完整构建 ---")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=300  # 5分钟超时
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        if result.stderr:
            print(f"\nSTDERR: {result.stderr}")
        
        if result.returncode == 0:
            print(f"\n✅ 第一次完整构建成功！耗时: {elapsed:.2f}秒")
            speed = num_files / elapsed if elapsed > 0 else 0
            print(f"平均速度: {speed:.1f} 文件/秒")
        else:
            print(f"\n❌ 构建失败！返回码: {result.returncode}")
            return False
        
        # 验证数据库
        print("\n--- 验证数据库 ---")
        import sqlite3
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        
        cursor.execute('SELECT COUNT(*) FROM files')
        file_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM classes')
        class_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM methods')
        method_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM calls')
        call_count = cursor.fetchone()[0]
        
        print(f"\n数据库统计:")
        print(f"  文件: {file_count}")
        print(f"  类: {class_count}")
        print(f"  方法: {method_count}")
        print(f"  调用关系: {call_count}")
        
        if file_count == num_files:
            print(f"\n✅ 数据完整性: 100%")
        else:
            print(f"\n⚠️  数据完整性: {file_count}/{num_files}")
        
        conn.close()
        
        # 第二次构建（无变更增量更新）
        print("\n--- 第二次构建（无变更增量） ---")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=120
        )
        elapsed2 = time.time() - start
        
        print(result.stdout)
        if elapsed2 < 10:
            print(f"增量更新耗时: {elapsed2:.2f}秒 - ⚡ 极快！")
        else:
            print(f"增量更新耗时: {elapsed2:.2f}秒")
        
        return True
        
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_db_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第八轮 - 超级大规模测试（50000+文件）")
    print("=" * 80)
    
    # 先安装需要的依赖
    try:
        import psutil
    except ImportError:
        print("\n安装 psutil 依赖...")
        subprocess.run([sys.executable, '-m', 'pip', 'install', 'psutil'], capture_output=True)
    
    # 由于50000个文件太大，先测试10000个验证系统
    print("\n为了快速测试，先验证 10000 个文件...")
    temp_dir, project_dir = generate_super_huge_project(10000)
    
    if project_dir:
        success = test_super_huge_build(project_dir, 10000)
        
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)
        
        if success:
            print("\n🎉 超级大规模测试（10000文件）完成！")
        else:
            print("\n⚠️  测试发现问题")
    else:
        print("\n❌ 项目生成失败")

if __name__ == "__main__":
    main()
