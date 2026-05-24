#!/usr/bin/env python3
"""
第八轮测试 - 超级混乱场景测试（所有可能错误混合）
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import random

sys.path.insert(0, '/workspace')

def create_super_chaotic_project():
    """创建超级混乱的测试项目（所有可能错误混合）"""
    print("=" * 80)
    print("创建超级混乱的测试项目 - 所有可能错误混合")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='super_chaos_')
    project_dir = os.path.join(temp_dir, 'super_chaos')
    db_path = os.path.join(temp_dir, 'super_chaos.db')
    
    try:
        os.makedirs(project_dir)
        
        chaos_items = []
        
        # 1. 各种空文件（10个）
        print("\n1. 创建各种空文件...")
        for i in range(10):
            ext = random.choice(['ets', 'ts', 'tsx', 'js', 'txt', ''])
            if ext:
                fname = os.path.join(project_dir, f'empty{i}.{ext}')
            else:
                fname = os.path.join(project_dir, f'empty{i}')
            with open(fname, 'w') as f:
                pass
        chaos_items.append(f"空文件：10个")
        
        # 2. 各种编码文件（5种）
        print("2. 创建各种编码文件...")
        encodings = ['utf-8', 'utf-16', 'latin-1', 'gbk', 'iso-8859-1']
        for enc in encodings:
            try:
                with open(os.path.join(project_dir, f'enc_{enc}.ets'), 'w', encoding=enc) as f:
                    f.write(f"""@Component
struct Enc{enc} {{
    build() {{ Text('encoding: {enc}'); }}
}}
""")
            except Exception:
                pass
        chaos_items.append(f"编码文件：{len(encodings)}种")
        
        # 3. 奇怪字符文件名（20个）
        print("3. 创建奇怪字符文件名...")
        weird_names = [
            'test space.ets', 'test!wow.ets', 'test@hash.ets', 'test#num.ets',
            'test$dollar.ets', 'test%per.ets', 'test^caret.ets', 'test&and.ets',
            'test*star.ets', 'test(paren.ets', 'test)paren.ets', 'test{bra.ets',
            'test}ket.ets', 'test[bracket.ets', 'test]bracket.ets', 'test;semi.ets',
            'test:colon.ets', 'test"quote.ets', "test'quote.ets", 'test,comma.ets'
        ]
        for name in weird_names:
            safe_name = ''.join(c if c.isalnum() or c in ['_', '-', '.'] else '_' for c in name)
            with open(os.path.join(project_dir, f'{safe_name}.ets'), 'w') as f:
                f.write(f"""@Component
struct Weird{safe_name} {{ build() {{}} }}
""")
        chaos_items.append(f"奇怪字符文件名：{len(weird_names)}个")
        
        # 4. 超大文件（3个）
        print("4. 创建超大文件...")
        with open(os.path.join(project_dir, 'huge10k.ets'), 'w') as f:
            for i in range(10000):
                f.write(f"// Line {i}\nstruct Line{i} {{}};\n")
        with open(os.path.join(project_dir, 'huge20k.ets'), 'w') as f:
            for i in range(20000):
                f.write(f"// Line {i}\nstruct Line{i} {{ method{i}() {{}} }}\n")
        with open(os.path.join(project_dir, 'huge_500k_str.ets'), 'w') as f:
            f.write("@Component\nstruct BigStr {\n    data: string = '")
            f.write('x' * 500000)
            f.write("';\n}\n")
        chaos_items.append("超大文件：3个")
        
        # 5. 二进制垃圾文件（5个）
        print("5. 创建二进制垃圾文件...")
        for i in range(5):
            with open(os.path.join(project_dir, f'garbage{i}.ets'), 'wb') as f:
                f.write(b'\x00\x01\x02\x03\x04\x05\xff\xfe\xfd\xfc')
                f.write(b'Normal text content here with mixed garbage bytes')
                f.write(b'\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00')
                f.write(b'\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff')
        chaos_items.append("二进制垃圾文件：5个")
        
        # 6. 循环引用（3组）
        print("6. 创建循环引用文件...")
        # 1组
        with open(os.path.join(project_dir, 'circleA1.ets'), 'w') as f:
            f.write("struct A1 { method() { let b = new B1(); b.call(); } }")
        with open(os.path.join(project_dir, 'circleB1.ets'), 'w') as f:
            f.write("struct B1 { call() { let a = new A1(); a.method(); } }")
        # 2组
        with open(os.path.join(project_dir, 'circleA2.ets'), 'w') as f:
            f.write("struct A2 { m1() { let b = new B2(); b.m2(); } }")
        with open(os.path.join(project_dir, 'circleB2.ets'), 'w') as f:
            f.write("struct B2 { m2() { let a = new A2(); a.m1(); } }")
        # 3组
        with open(os.path.join(project_dir, 'circleC.ets'), 'w') as f:
            f.write("struct C { m() { let c = new C(); c.m(); } }")
        chaos_items.append("循环引用：3组")
        
        # 7. 注释中包含大量伪造代码（2个）
        print("7. 创建注释中大量伪造代码...")
        with open(os.path.join(project_dir, 'comment_chaos1.ets'), 'w') as f:
            f.write("""
/*
struct Fake1 { method1() { console.log('fake1'); } }
struct Fake2 { method2() { console.log('fake2'); } }
struct Fake3 { method3() { console.log('fake3'); } }
class FakeClass { fake() {} }
function fakeFunc() { }
*/
// struct InlineFake1 { fake() }
// struct InlineFake2 { fake() }
// struct InlineFake3 { fake() }
// struct InlineFake4 { fake() }
// struct InlineFake5 { fake() }

struct Real1 {
    aboutToAppear() {
        // struct InlineFake6 { fake() }
        console.log('real');
    }
    build() { Text('real'); }
}
""")
        with open(os.path.join(project_dir, 'comment_chaos2.ets'), 'w') as f:
            fake_code = []
            for i in range(100):
                fake_code.append(f"/* struct FakeComment{i} {{ m() {{}} }} */")
            f.write('\n'.join(fake_code))
            f.write('\nstruct Real2 { build() { Text("real2"); } }')
        chaos_items.append("注释中的伪造代码：2个文件")
        
        # 8. 字符串中包含大量伪造代码（2个）
        print("8. 创建字符串中大量伪造代码...")
        with open(os.path.join(project_dir, 'string_chaos1.ets'), 'w') as f:
            f.write("""
struct RealS1 {
    template: string = `
        <div>
            <struct FakeInString1>NotReal</struct>
            <struct FakeInString2>NotReal</struct>
            <method fakeMethod1()>NotReal</method>
            <method fakeMethod2()>NotReal</method>
            <struct FakeInString3>NotReal</struct>
        </div>
    `;
    code: string = "struct FakeCode1 { fake() { } }";
    more: string = 'struct FakeCode2 { f() {} }';
}
""")
        with open(os.path.join(project_dir, 'string_chaos2.ets'), 'w') as f:
            long_str = ''.join([f"struct FakeString{i} {{ m() {{}} }} " for i in range(100)])
            f.write(f"struct RealS2 {{ fakeCode: string = '{long_str}'; build() {{}} }}")
        chaos_items.append("字符串中的伪造代码：2个文件")
        
        # 9. 各种语法错误文件（15个）
        print("9. 创建各种语法错误文件...")
        errors = [
            ("unclosed_brace", "struct Bad { method() { "),
            ("unclosed_paren", "struct Bad2 { method() { x = 1; "),
            ("missing_colon", "struct Bad3 { method { } }"),
            ("extra_braces", "struct Bad4 { } } } build() { }"),
            ("broken_decorator", "@Comp @Compnt @Ent struct Bad5 { }"),
            ("bad_keywords", "struct Bad6 { 123method() {} }"),
            ("no_semicolon", "struct Bad7 { method() x = 1; }"),
            ("mismatched_brackets", "struct Bad8 { method() { (x } }"),
            ("invalid_char", "struct Bad9 { m() { let x = 'test\x00'; } }"),
            ("unicode_mess", "struct Bad10 { m() { console.log('测试\x00测试'); } }"),
            ("wrong_brace_dir", "struct Bad11 { method() { } } }"),
            ("duplicate_names", "struct Dupe { m() {} } struct Dupe { m() {} }"),
            ("invalid_operator", "struct Bad12 { m() { let x = 5 $ 3; } }"),
            ("unclosed_string", "struct Bad13 { m() { let x = 'hello; } }"),
            ("line_breaks", "struct\nBad14\n{\nm()\n{\nreturn\n1;\n}\n}")
        ]
        for name, content in errors:
            with open(os.path.join(project_dir, f'syntax_err_{name}.ets'), 'w') as f:
                f.write(content)
        chaos_items.append(f"语法错误文件：{len(errors)}个")
        
        # 10. 重复类名文件（20个）
        print("10. 创建重复类名文件...")
        for i in range(20):
            with open(os.path.join(project_dir, f'duplicate{i}.ets'), 'w') as f:
                f.write(f"@Component\nstruct SameName {{ build() {{ Text('dupe {i}'); }} }}")
        chaos_items.append("重复类名：20个文件")
        
        # 11. 超长标识符（5个）
        print("11. 创建超长标识符...")
        long_1 = 'A' * 1000
        long_2 = 'B' * 2000
        long_3 = 'C' * 3000
        with open(os.path.join(project_dir, 'very_long_id.ets'), 'w') as f:
            f.write(f"""
struct {long_1} {{
    {long_2}: string = 'test';
    {long_3}() {{ console.log('long'); }}
}}
""")
        with open(os.path.join(project_dir, 'long_meth.ets'), 'w') as f:
            very_long_meth = 'myVeryLongMethodNameThatGoesOnAndOnAndOnAndOn' + 'AndOnAndOn' * 20
            f.write(f"struct LongMeth {{ {very_long_meth}() {{ console.log('loooooong'); }} }}")
        with open(os.path.join(project_dir, 'long_var.ets'), 'w') as f:
            very_long_var = 'variableNameThatIsWayWayWayTooLongForNormalCode' + 'ButJustForTesting'
            f.write(f"struct LongVar {{ @State {very_long_var}: number = 1; }}")
        chaos_items.append("超长标识符：5个")
        
        # 12. 极深嵌套（3个）
        print("12. 创建极深嵌套...")
        with open(os.path.join(project_dir, 'deep_50.ets'), 'w') as f:
            for i in range(50):
                f.write('    ' * i + f'struct D{i} {{ \n')
            for i in range(49, -1, -1):
                f.write('    ' * i + '}\n')
        with open(os.path.join(project_dir, 'deep_100.ets'), 'w') as f:
            for i in range(100):
                f.write('    ' * i + f'struct D{i} {{ m{i}() {{}}\n')
            for i in range(99, -1, -1):
                f.write('    ' * i + '}\n')
        with open(os.path.join(project_dir, 'deep_mixed.ets'), 'w') as f:
            f.write('struct DRoot { ')
            for i in range(50):
                f.write(f'struct D{i} {{ ')
            for i in range(50):
                f.write('} ')
            f.write(' }')
        chaos_items.append("极深嵌套：3个文件")
        
        # 13. 符号链接（如果支持）
        print("13. 创建符号链接...")
        try:
            link_dir = os.path.join(project_dir, 'symlinks')
            os.makedirs(link_dir)
            with open(os.path.join(link_dir, 'source.ets'), 'w') as f:
                f.write("struct Source { build() {} }")
            os.symlink(os.path.abspath(os.path.join(link_dir, 'source.ets')), 
                       os.path.join(link_dir, 'link1.ets'))
            os.symlink(os.path.abspath(link_dir), os.path.join(link_dir, 'link_to_dir'))
            chaos_items.append("符号链接：2个")
        except Exception:
            chaos_items.append("符号链接：不支持")
        
        # 14. 大量微型文件（500个）
        print("14. 创建大量微型文件...")
        for i in range(500):
            with open(os.path.join(project_dir, f'micro{i}.ets'), 'w') as f:
                f.write(f"struct Micro{i} {{ build() {{}} }}")
        chaos_items.append("微型文件：500个")
        
        # 15. 混合扩展名文件（8个）
        print("15. 创建混合扩展名...")
        extensions = ['ets', 'ETS', 'ts', 'TS', 'tsx', 'TSX', 'js', 'JS']
        for ext in extensions:
            with open(os.path.join(project_dir, f'mixed.{ext}'), 'w') as f:
                f.write(f"struct Mixed{ext} {{ build() {{}} }}")
        chaos_items.append(f"混合扩展名：{len(extensions)}种")
        
        # 16. 正常有效的代码文件（50个）
        print("16. 创建正常有效的代码文件...")
        for i in range(50):
            with open(os.path.join(project_dir, f'valid{i}.ets'), 'w') as f:
                f.write(f"""@Component
struct Valid{i} {{
    @State data{i}: string = 'valid {i}';
    aboutToAppear() {{ console.log('init {i}'); }}
    method{i}() {{ console.log('method {i}'); }}
    build() {{ Column() {{ Text(this.data{i}); }} }}
}}
""")
        chaos_items.append("正常有效文件：50个")
        
        # 统计
        total_files = len([f for f in os.listdir(project_dir) 
                          if os.path.isfile(os.path.join(project_dir, f))])
        
        print("\n" + "=" * 80)
        print("超级混乱项目创建完成！")
        print("=" * 80)
        print(f"\n总文件数：{total_files}")
        print("\n项目成分：")
        for item in chaos_items:
            print(f"  - {item}")
        
        # 构建测试
        print("\n开始构建超级混乱项目...")
        start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=300  # 5分钟超时
        )
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 超级混乱场景构建成功！耗时: {elapsed:.2f}秒")
            
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
            print(f"  识别文件: {file_count}")
            print(f"  识别类: {class_count}")
            print(f"  识别方法: {method_count}")
            
            if file_count > 0:
                print(f"\n✅ 系统成功处理了超级混乱的文件！")
            
            conn.close()
            return True
        else:
            print(f"\n❌ 构建失败！返回码: {result.returncode}")
            if result.stderr:
                print(f"\nSTDERR: {result.stderr}")
            return False
        
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第八轮 - 超级混乱场景测试")
    print("=" * 80)
    
    success = create_super_chaotic_project()
    
    if success:
        print("\n🎉 超级混乱场景测试完成！")
    else:
        print("\n⚠️  测试发现问题")

if __name__ == "__main__":
    main()
