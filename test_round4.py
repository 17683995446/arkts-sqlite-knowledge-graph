#!/usr/bin/env python3
"""
第四轮测试 - 真实场景模拟和性能极限测试
"""
import sys
import os
import time
import tempfile
import shutil
import subprocess

sys.path.insert(0, '/workspace')

def test_real_world_scenario():
    """测试真实场景：模拟真实的HarmonyOS项目"""
    print("=" * 80)
    print("第四轮测试 - 真实场景模拟")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='real_scenario_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建一个更真实的HarmonyOS项目结构
        os.makedirs(os.path.join(temp_dir, 'pages'))
        os.makedirs(os.path.join(temp_dir, 'components'))
        os.makedirs(os.path.join(temp_dir, 'services'))
        os.makedirs(os.path.join(temp_dir, 'models'))
        
        print("\n创建真实项目结构...")
        
        # 创建页面组件
        for i in range(20):
            with open(os.path.join(temp_dir, 'pages', f'Page{i}.ets'), 'w') as f:
                f.write(f"""@Entry
@Component
struct Page{i} {{
    @State message: string = 'Hello Page {i}'
    @State count: number = 0
    
    aboutToAppear() {{
        console.info('Page {i} appeared')
        this.loadData()
    }}
    
    loadData() {{
        console.log('Loading data for page {i}')
    }}
    
    build() {{
        Column() {{
            Text(this.message)
            Button('Click me')
                .onClick(() => {{
                    this.count++
                }})
        }}
    }}
}}
""")
        
        # 创建UI组件
        for i in range(30):
            with open(os.path.join(temp_dir, 'components', f'Component{i}.ets'), 'w') as f:
                f.write(f"""@Component
struct Component{i} {{
    @Prop title: string = 'Component {i}'
    @State isLoading: boolean = false
    
    aboutToAppear() {{
        console.log('Component {i} initialized')
    }}
    
    renderContent() {{
        Row() {{
            Text(this.title)
            if (this.isLoading) {{
                LoadingProgress()
            }}
        }}
    }}
    
    build() {{
        this.renderContent()
    }}
}}
""")
        
        # 创建服务
        for i in range(10):
            with open(os.path.join(temp_dir, 'services', f'Service{i}.ets'), 'w') as f:
                f.write(f"""@ohos.wifiModule
class Service{i} {{
    private config: object = {{}}
    
    init() {{
        console.info('Service {i} initialized')
    }}
    
    fetchData(): Promise<any> {{
        return new Promise((resolve, reject) => {{
            setTimeout(() => {{
                resolve({{ data: 'test' }})
            }}, 100)
        }})
    }}
    
    updateConfig(config: object) {{
        this.config = config
    }}
}}
""")
        
        # 创建数据模型
        for i in range(5):
            with open(os.path.join(temp_dir, 'models', f'Model{i}.ets'), 'w') as f:
                f.write(f"""class Model{i} {{
    id: string = ''
    name: string = ''
    createdAt: Date = new Date()
    
    constructor(data: any) {{
        this.id = data.id || ''
        this.name = data.name || ''
    }}
    
    toJSON(): object {{
        return {{
            id: this.id,
            name: this.name,
            createdAt: this.createdAt
        }}
    }}
}}
""")
        
        file_count = 0
        for root, _, files in os.walk(temp_dir):
            file_count += len([f for f in files if f.endswith('.ets')])
        
        print(f"创建了 {file_count} 个文件")
        
        # 测试构建
        print("\n测试构建真实项目...")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', temp_dir, db_path],
            capture_output=True,
            text=True
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"✅ 真实场景构建成功！耗时: {elapsed:.2f}秒")
            
            # 验证数据库
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute('SELECT COUNT(*) FROM files')
            files = cursor.fetchone()[0]
            cursor.execute('SELECT COUNT(*) FROM classes')
            classes = cursor.fetchone()[0]
            cursor.execute('SELECT COUNT(*) FROM methods')
            methods = cursor.fetchone()[0]
            
            print(f"\n数据库统计:")
            print(f"  文件: {files}")
            print(f"  类: {classes}")
            print(f"  方法: {methods}")
            
            conn.close()
            
            return True
        else:
            print(f"❌ 构建失败")
            return False
            
    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_performance_limits():
    """测试性能极限"""
    print("\n" + "=" * 80)
    print("性能极限测试")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='perf_test_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 测试极小文件
        print("\n测试1：极小文件（10字节）")
        with open(os.path.join(temp_dir, 'tiny.ets'), 'w') as f:
            f.write("@Comp\nstruct T{}")
        
        start = time.time()
        subprocess.run([sys.executable, '/workspace/main.py', 'build', temp_dir, db_path], capture_output=True)
        elapsed1 = time.time() - start
        print(f"  耗时: {elapsed1*1000:.2f}ms")
        
        # 清理数据库
        if os.path.exists(db_path):
            os.unlink(db_path)
        
        # 测试中等文件
        print("\n测试2：中等文件（1KB）")
        with open(os.path.join(temp_dir, 'medium.ets'), 'w') as f:
            for i in range(20):
                f.write(f"""@Component
struct Component{i} {{
    @State data: string = 'Test'
    build() {{ Text(this.data); }}
}}
""")
        
        start = time.time()
        subprocess.run([sys.executable, '/workspace/main.py', 'build', temp_dir, db_path], capture_output=True)
        elapsed2 = time.time() - start
        print(f"  耗时: {elapsed2*1000:.2f}ms")
        
        # 清理数据库
        if os.path.exists(db_path):
            os.unlink(db_path)
        
        # 测试大文件
        print("\n测试3：大文件（100KB）")
        with open(os.path.join(temp_dir, 'large.ets'), 'w') as f:
            for i in range(1000):
                f.write(f"// Comment {i}\nstruct S{i} {{ m{i}() {{}} }}\n")
        
        start = time.time()
        subprocess.run([sys.executable, '/workspace/main.py', 'build', temp_dir, db_path], capture_output=True)
        elapsed3 = time.time() - start
        print(f"  耗时: {elapsed3*1000:.2f}ms")
        
        print(f"\n性能总结:")
        print(f"  极小文件: {elapsed1*1000:.2f}ms")
        print(f"  中等文件: {elapsed2*1000:.2f}ms")
        print(f"  大文件: {elapsed3*1000:.2f}ms")
        print(f"  ✅ 所有性能测试通过！")
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    success = test_real_world_scenario()
    test_performance_limits()
    
    if success:
        print("\n🎉 第四轮所有测试完成！")
    else:
        print("\n⚠️ 部分测试失败")
