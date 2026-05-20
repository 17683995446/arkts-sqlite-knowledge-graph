#!/usr/bin/env python3
"""
第六轮测试：最混乱场景测试 - 慢工出细活
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import random

sys.path.insert(0, '/workspace')

def create_chaotic_project():
    """创建最混乱的测试项目"""
    print("=" * 80)
    print("测试1：最混乱场景 - 混合所有边界情况")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='chaotic_')
    project_dir = os.path.join(temp_dir, 'chaos')
    db_path = os.path.join(temp_dir, 'chaos.db')
    
    try:
        os.makedirs(project_dir)
        
        # 1. 创建空文件
        print("创建空文件...")
        with open(os.path.join(project_dir, 'empty1.ets'), 'w') as f:
            pass
        
        with open(os.path.join(project_dir, 'empty2.ets'), 'w') as f:
            pass
        
        # 2. 创建语法错误文件
        print("创建语法错误文件...")
        with open(os.path.join(project_dir, 'syntax_error.ets'), 'w') as f:
            f.write("""
struct A {
    method() {
        // 没有闭合大括号
""")
        
        # 3. 创建包含二进制垃圾的文件
        print("创建包含垃圾的文件...")
        with open(os.path.join(project_dir, 'garbage.ets'), 'wb') as f:
            f.write(b'\x00\x01\x02\x03\x04\x05\x06\x07\x08')
            f.write(b'normal content here')
            f.write(b'\x09\x0a\x0b\x0c\x0d\x0e\x0f')
        
        # 4. 创建超长标识符文件
        print("创建超长标识符文件...")
        long_name = 'A' * 500
        with open(os.path.join(project_dir, 'long_identifier.ets'), 'w') as f:
            f.write(f"""
struct {long_name} {{
    {'B' * 400}: string = 'test';
    {'C' * 400}() {{
        console.log('long name');
    }}
}}
""")
        
        # 5. 创建混合有效和无效代码的文件
        print("创建混合代码文件...")
        with open(os.path.join(project_dir, 'mixed.ets'), 'w') as f:
            f.write("""
// 有效代码
struct ValidComponent {
    build() { Text('hi'); }
}

// 无效代码
struct InvalidComponent { // 忘记大括号
    build() Text('oops'); // 语法错误

// 更多有效代码
struct AnotherValid {
    method() {
        console.log('valid');
    }
}
""")
        
        # 6. 创建注释中包含大量伪造代码的文件
        print("创建注释中包含伪造代码的文件...")
        with open(os.path.join(project_dir, 'comment_chaos.ets'), 'w') as f:
            f.write("""
/*
struct FakeInComment1 {
    method1() { console.log('fake'); }
    method2() { other(); }
}

struct FakeInComment2 {
    build() {}
}
*/

struct RealComponent {
    aboutToAppear() {
        // struct AnotherFakeInLineComment {}
        console.log('real code');
    }
}
""")
        
        # 7. 创建字符串中包含大量伪造代码的文件
        print("创建字符串中包含伪造代码的文件...")
        with open(os.path.join(project_dir, 'string_chaos.ets'), 'w') as f:
            f.write("""
struct RealComponent {
    template: string = `
        <div>
            <struct FakeInString>
                <method fakeMethod()>
            </struct>
        </div>
    `;
    message: string = "struct FakeStruct { method() {}}";
}
""")
        
        # 8. 创建极深嵌套的文件
        print("创建极深嵌套的文件...")
        with open(os.path.join(project_dir, 'deep_nest.ets'), 'w') as f:
            code = ""
            for i in range(30):
                code += "  " * i + f"struct Level{i} {{\n"
                code += "  " * (i+1) + f"build{i}() {{ Text({i}); }}\n"
            for i in range(29, -1, -1):
                code += "  " * i + "}\n"
            f.write(code)
        
        # 9. 创建大量小型文件
        print("创建大量小型文件...")
        for i in range(100):
            with open(os.path.join(project_dir, f'tiny{i}.ets'), 'w') as f:
                f.write(f"struct Tiny{i} {{ build() {{}} }}")
        
        # 10. 创建同时使用多种扩展的文件
        print("创建多种扩展名的文件...")
        for ext in ['ets', 'ets', 'ts', 'tsx', 'js']:
            with open(os.path.join(project_dir, f'multi.{ext}'), 'w') as f:
                f.write(f"struct MultiExt{ext} {{ build() {{}} }}")
        
        # 11. 创建特殊字符文件名
        print("创建特殊字符文件名...")
        special_chars = ['空格 文件', '中文文件', 'with_underscores', 
                        'CAPS_FILE', 'a.lot.of.dots']
        for name in special_chars:
            safe_name = name.replace(' ', '_')
            with open(os.path.join(project_dir, f'{safe_name}.ets'), 'w') as f:
                f.write(f"struct {safe_name.replace('.', '_')} {{ build() {{}} }}")
        
        print(f"\n创建了总共 {len(os.listdir(project_dir))} 个文件！")
        
        # 现在构建这个混乱的项目
        print("\n开始构建混乱项目...")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=30
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.stderr:
            print(f"\nSTDERR: {result.stderr}")
        
        if result.returncode == 0:
            print(f"\n✅ 混乱项目构建成功！耗时: {elapsed:.2f}秒")
            
            # 验证数据库
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute('SELECT COUNT(*) FROM files')
            file_count = cursor.fetchone()[0]
            
            cursor.execute('SELECT COUNT(*) FROM classes')
            class_count = cursor.fetchone()[0]
            
            cursor.execute('SELECT COUNT(*) FROM methods')
            method_count = cursor.fetchone()[0]
            
            print(f"\n数据库统计:")
            print(f"  文件数: {file_count}")
            print(f"  类数: {class_count}")
            print(f"  方法数: {method_count}")
            
            if file_count > 0:
                print("  ✅ 数据库数据保存成功！")
            else:
                print("  ⚠️  警告：没有文件被保存")
            
            conn.close()
            
            return True
        else:
            print(f"\n❌ 混乱项目构建失败！返回码: {result.returncode}")
            return False
            
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_random_chaos():
    """测试随机生成的混乱代码库"""
    print("\n" + "=" * 80)
    print("测试2：随机生成混乱代码库")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='random_')
    project_dir = os.path.join(temp_dir, 'random_project')
    db_path = os.path.join(temp_dir, 'random.db')
    
    try:
        os.makedirs(project_dir)
        
        # 生成随机混乱的代码
        print("随机生成混乱代码...")
        for i in range(50):
            with open(os.path.join(project_dir, f'random{i}.ets'), 'w') as f:
                # 随机决定是否是有效文件
                if random.random() > 0.3:  # 70%有效文件
                    f.write(f"""
@Component
struct RandomComponent{i} {{
    @State data{i}: string = 'random{i}';
    
    aboutToAppear() {{
        console.log('random init {i}');
    }}
    
    method{i}() {{
        console.log('random method {i}');
    }}
    
    build() {{
        Column() {{
            Text(this.data{i});
        }}
    }}
}}
""")
                else:  # 30%混乱文件
                    # 随机添加垃圾内容
                    if random.random() > 0.5:
                        f.write("""
// 随机错误代码
struct Broken {
    method( {
        console.log('broken';
    }
""")
                    else:
                        f.write("""
/*
Random garbage here...
struct Trash { 
    method() { garbage...
}
*/
""")
        
        print(f"创建了 50 个随机文件！")
        
        # 构建
        print("\n构建随机混乱项目...")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=20
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 随机混乱项目构建成功！耗时: {elapsed:.2f}秒")
            
            # 验证
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute('SELECT COUNT(*) FROM files')
            file_count = cursor.fetchone()[0]
            
            print(f"识别了 {file_count} 个文件")
            if file_count > 0:
                print("  ✅ 正常工作")
            conn.close()
            
            return True
        else:
            print(f"\n❌ 失败！")
            return False
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第六轮：最混乱场景测试 - 慢工出细活")
    print("=" * 80)
    
    success1 = create_chaotic_project()
    success2 = test_random_chaos()
    
    if success1 and success2:
        print("\n" + "=" * 80)
        print("🎉 所有最混乱场景测试通过！")
        print("=" * 80)
    else:
        print("\n" + "=" * 80)
        print("⚠️  部分测试失败")
        print("=" * 80)

if __name__ == "__main__":
    main()
