#!/usr/bin/env python3
"""
多层嵌套和复杂调用链测试 - 慢工出细活
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time

sys.path.insert(0, '/workspace')

def test_deep_nesting():
    """测试极深嵌套"""
    print("=" * 80)
    print("测试1：极深嵌套（50层）")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='deep_nest_')
    
    try:
        # 创建50层嵌套的文件
        with open(os.path.join(temp_dir, 'deep.ets'), 'w', encoding='utf-8') as f:
            f.write("struct Level0 {\n")
            for i in range(1, 50):
                f.write(f"  struct Level{i} {{\n")
            f.write("    method() { console.log('deep'); }\n")
            for i in range(49, 0, -1):
                f.write("  }\n")
            f.write("}\n")
        
        # 测试解析
        print("解析50层嵌套...")
        start = time.time()
        
        from arkts_parser import ArkTSParser
        parser = ArkTSParser()
        result = parser.parse_file(os.path.join(temp_dir, 'deep.ets'))
        
        elapsed = time.time() - start
        print(f"  耗时: {elapsed*1000:.2f}ms")
        print(f"  识别类: {len(result['classes'])}")
        print(f"  识别方法: {len(result['methods'])}")
        
        if elapsed < 1:
            print("  ✅ 通过")
        else:
            print("  ⚠️  性能警告")
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_complex_call_chains():
    """测试复杂调用链"""
    print("\n" + "=" * 80)
    print("测试2：复杂调用链")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='call_chain_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建多个互相调用的文件
        files = [
            ('ServiceA', '''
struct ServiceA {
    methodA1() {
        console.log('A1');
        this.methodA2();
    }
    
    methodA2() {
        console.log('A2');
        return this.methodA1();
    }
}
'''),
            ('ServiceB', '''
struct ServiceB {
    methodB1() {
        let a = new ServiceA();
        a.methodA1();
    }
}
'''),
            ('ServiceC', '''
struct ServiceC {
    methodC1() {
        let b = new ServiceB();
        b.methodB1();
    }
    
    methodC2() {
        this.methodC1();
        this.methodC1();
    }
}
'''),
            ('Component', '''
struct MyComponent {
    private serviceC = new ServiceC();
    
    onClick() {
        this.serviceC.methodC2();
    }
}
''')
        ]
        
        for name, content in files:
            with open(os.path.join(temp_dir, f'{name}.ets'), 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("构建复杂调用链项目...")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', temp_dir, db_path],
            capture_output=True,
            text=True
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"✅ 复杂调用链构建成功！耗时: {elapsed:.2f}秒")
            
            # 验证数据库
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute('SELECT COUNT(*) FROM methods')
            method_count = cursor.fetchone()[0]
            
            cursor.execute('SELECT COUNT(*) FROM calls')
            call_count = cursor.fetchone()[0]
            
            print(f"\n数据库统计:")
            print(f"  方法数: {method_count}")
            print(f"  调用关系数: {call_count}")
            
            conn.close()
        else:
            print(f"❌ 构建失败")
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_circular_reference():
    """测试循环引用"""
    print("\n" + "=" * 80)
    print("测试3：循环引用检测")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='circular_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建循环引用的文件
        with open(os.path.join(temp_dir, 'A.ets'), 'w') as f:
            f.write("""
struct A {
    methodA() {
        let b = new B();
        b.methodB();
    }
}

struct B {
    methodB() {
        let a = new A();
        a.methodA();
    }
}
""")
        
        print("构建循环引用项目...")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', temp_dir, db_path],
            capture_output=True,
            text=True
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"✅ 循环引用项目构建成功！耗时: {elapsed:.2f}秒")
            
            # 检查是否会陷入无限循环
            if elapsed < 5:
                print("  ✅ 未陷入无限循环")
            else:
                print("  ⚠️  可能存在性能问题")
                
        else:
            print(f"❌ 构建失败")
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_extreme_call_volume():
    """测试极端调用量"""
    print("\n" + "=" * 80)
    print("测试4：极端调用量（100个方法互相调用）")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='extreme_calls_')
    db_path = os.path.join(temp_dir, 'test.db')
    
    try:
        # 创建100个方法，互相调用
        with open(os.path.join(temp_dir, 'Test.ets'), 'w') as f:
            f.write("struct Test {\n")
            
            # 创建100个方法
            for i in range(100):
                f.write(f"  method{i}() {{\n")
                f.write(f"    console.log({i});\n")
                
                # 每个方法调用其他几个方法
                for j in range(1, 5):
                    callee = (i + j) % 100
                    f.write(f"    this.method{callee}();\n")
                
                f.write("  }\n")
            
            f.write("}\n")
        
        print("构建极端调用量项目...")
        start = time.time()
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', temp_dir, db_path],
            capture_output=True,
            text=True
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"✅ 极端调用量构建成功！耗时: {elapsed:.2f}秒")
            
            # 验证数据库
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute('SELECT COUNT(*) FROM methods')
            method_count = cursor.fetchone()[0]
            
            cursor.execute('SELECT COUNT(*) FROM calls')
            call_count = cursor.fetchone()[0]
            
            print(f"\n数据库统计:")
            print(f"  方法数: {method_count}")
            print(f"  调用关系数: {call_count}")
            
            if elapsed < 10:
                print("  ✅ 性能优秀")
            else:
                print("  ⚠️  性能较慢")
                
            conn.close()
        else:
            print(f"❌ 构建失败")
            
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("多层嵌套和复杂调用链测试 - 慢工出细活")
    print("=" * 80)
    
    test_deep_nesting()
    test_complex_call_chains()
    test_circular_reference()
    test_extreme_call_volume()
    
    print("\n" + "=" * 80)
    print("所有多层嵌套和复杂调用链测试完成！")
    print("=" * 80)

if __name__ == "__main__":
    main()
