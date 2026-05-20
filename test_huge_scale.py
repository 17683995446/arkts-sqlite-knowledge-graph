#!/usr/bin/env python3
"""
第七轮测试 - 超大规模测试（10000+文件）
"""
import sys
import os
import time
import tempfile
import shutil
import subprocess

sys.path.insert(0, '/workspace')

def generate_large_project(num_files=10000):
    """生成大规模测试项目"""
    print("=" * 80)
    print(f"生成 {num_files} 个文件的超大规模测试项目")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix=f'huge_project_{num_files}_')
    project_dir = os.path.join(temp_dir, 'project')
    
    try:
        os.makedirs(project_dir)
        
        print(f"\n开始生成 {num_files} 个文件...")
        start = time.time()
        
        # 分批生成，避免内存问题
        batch_size = 1000
        for batch in range(0, num_files, batch_size):
            batch_end = min(batch + batch_size, num_files)
            
            for i in range(batch, batch_end):
                # 创建不同类型和大小的文件
                if i % 10 == 0:
                    # 大文件（包含更多内容）
                    file_path = os.path.join(project_dir, f'Large{i}.ets')
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(f"""@Component
struct LargeComponent{i} {{
    @State data{i}: string = 'Data for component {i}'
    @State count{i}: number = {i}
    @State active{i}: boolean = true
    
    aboutToAppear() {{
        console.info('Component {i} initializing')
        this.loadData{i}()
    }}
    
    loadData{i}() {{
        console.log('Loading data for {i}')
        this.fetchData{i}()
    }}
    
    fetchData{i}(): Promise<any> {{
        return new Promise((resolve) => {{
            setTimeout(() => {{
                resolve({{ id: {i}, data: 'test' }})
            }}, 100)
        }})
    }}
    
    aboutToDisappear() {{
        console.info('Component {i} destroying')
    }}
    
    build() {{
        Column() {{
            Text(this.data{i})
            Button('Click ' + this.count{i})
                .onClick(() => {{
                    this.count{i}++
                }})
            if (this.active{i}) {{
                LoadingProgress()
            }}
        }}
    }}
}}
""")
                elif i % 10 == 1:
                    # 中等文件
                    file_path = os.path.join(project_dir, f'Medium{i}.ets')
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(f"""@Component
struct MediumComponent{i} {{
    @State message{i}: string = 'Hello {i}'
    
    build() {{
        Column() {{
            Text(this.message{i})
        }}
    }}
}}
""")
                else:
                    # 小文件
                    file_path = os.path.join(project_dir, f'Small{i}.ets')
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(f"""@Component
struct Small{i} {{ build() {{}} }}
""")
            
            elapsed = time.time() - start
            print(f"  已生成 {batch_end}/{num_files} 个文件... ({elapsed:.1f}秒)")
        
        generation_time = time.time() - start
        print(f"\n✅ 文件生成完成！耗时: {generation_time:.2f}秒")
        
        # 验证文件数量
        actual_files = len([f for f in os.listdir(project_dir) if f.endswith('.ets')])
        print(f"实际文件数: {actual_files}")
        
        return temp_dir, project_dir
        
    except Exception as e:
        print(f"❌ 生成失败: {e}")
        shutil.rmtree(temp_dir, ignore_errors=True)
        return None, None

def test_build_performance(project_dir):
    """测试大规模构建性能"""
    print("\n" + "=" * 80)
    print("测试超大规模构建性能")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='huge_build_')
    db_path = os.path.join(temp_dir, 'huge.db')
    
    try:
        # 统计文件数量
        file_count = len([f for f in os.listdir(project_dir) if f.endswith('.ets')])
        print(f"\n项目包含 {file_count} 个文件")
        
        # 测试首次构建（完整构建）
        print("\n--- 首次完整构建 ---")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=120  # 2分钟超时
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        if result.stderr:
            print(f"STDERR: {result.stderr}")
        
        if result.returncode == 0:
            print(f"\n✅ 首次构建成功！耗时: {elapsed:.2f}秒")
            print(f"平均速度: {file_count / elapsed:.1f} 文件/秒")
        else:
            print(f"\n❌ 构建失败！返回码: {result.returncode}")
            return False
        
        # 验证数据库
        import sqlite3
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        
        cursor.execute('SELECT COUNT(*) FROM files')
        db_files = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM classes')
        db_classes = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM methods')
        db_methods = cursor.fetchone()[0]
        
        print(f"\n数据库统计:")
        print(f"  文件: {db_files}")
        print(f"  类: {db_classes}")
        print(f"  方法: {db_methods}")
        
        # 验证数据完整性
        if db_files == file_count:
            print(f"  ✅ 文件完整性: 100%")
        else:
            print(f"  ⚠️  文件完整性: {db_files}/{file_count} ({100*db_files/file_count:.1f}%)")
        
        conn.close()
        
        # 测试第二次构建（增量更新，无变更）
        print("\n--- 第二次构建（无变更测试） ---")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=60
        )
        elapsed2 = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"增量构建耗时: {elapsed2:.2f}秒")
        else:
            print(f"增量构建失败！")
        
        # 修改一个文件，测试增量更新
        print("\n--- 修改一个文件，测试增量更新 ---")
        files = [f for f in os.listdir(project_dir) if f.endswith('.ets')]
        if files:
            test_file = os.path.join(project_dir, files[0])
            with open(test_file, 'a', encoding='utf-8') as f:
                f.write("\n// 修改测试")
            
            start = time.time()
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=60
            )
            elapsed3 = time.time() - start
            
            print(result.stdout)
            
            if result.returncode == 0:
                print(f"增量更新耗时: {elapsed3:.2f}秒")
            else:
                print(f"增量更新失败！")
        
        return True
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第七轮 - 超大规模测试（10000+文件）")
    print("=" * 80)
    
    # 生成超大规模项目
    temp_dir, project_dir = generate_large_project(10000)
    
    if project_dir:
        # 测试构建性能
        success = test_build_performance(project_dir)
        
        # 清理
        print("\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)
        
        if success:
            print("\n🎉 超大规模测试完成！")
        else:
            print("\n⚠️  超大规模测试遇到问题")
    else:
        print("\n❌ 项目生成失败")

if __name__ == "__main__":
    main()
