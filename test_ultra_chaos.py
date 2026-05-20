#!/usr/bin/env python3
"""
第七轮测试 - 极混乱真实场景模拟
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import random

sys.path.insert(0, '/workspace')

def create_ultra_chaotic_project():
    """创建极度混乱的项目"""
    print("=" * 80)
    print("创建极度混乱的真实场景")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='ultra_chaos_')
    project_dir = os.path.join(temp_dir, 'ultra_chaos')
    db_path = os.path.join(temp_dir, 'ultra.db')
    
    try:
        os.makedirs(project_dir)
        
        chaos_items = []
        
        # 1. 各种奇怪的空文件
        print("\n1. 创建各种空文件...")
        for i in range(5):
            with open(os.path.join(project_dir, f'empty{i}.ets'), 'w') as f:
                pass
        chaos_items.append(f"空文件: 5个")
        
        # 2. 各种编码的文件
        print("2. 创建各种编码的文件...")
        for encoding in ['utf-8', 'gbk', 'utf-16', 'latin-1']:
            filename = os.path.join(project_dir, f'encoding_{encoding}.ets')
            try:
                with open(filename, 'w', encoding=encoding) as f:
                    f.write(f"""@Component
struct Encoded{encoding} {{
    build() {{ Text('{encoding}'); }}
}}
""")
            except:
                pass
        chaos_items.append(f"编码文件: 4种")
        
        # 3. 包含各种奇怪字符的文件
        print("3. 创建包含奇怪字符的文件...")
        weird_chars = [
            'emoji_😀', '中文_中文', '日本語', '한국어',
            'spaces   with   spaces', 'tabs\there', 
            'newlines\n\n\nhere', 'quotes"and\'quotes',
            'backticks`and`backticks', 'dollar$sign', 'percent%sign',
            'special<<>>&&||', 'unicode_é_è_ê', 'arabic_العربية',
            'russian_Русский', 'hebrew_עברית', 'thai_ไทย'
        ]
        for name in weird_chars:
            safe_name = ''.join(c if c.isalnum() or c in ['_', '-', '.'] else '_' for c in name)
            with open(os.path.join(project_dir, f'{safe_name}.ets'), 'w') as f:
                f.write(f"""@Component
struct Safe{name} {{
    build() {{ Text('{name}'); }}
}}
""")
        chaos_items.append(f"奇怪字符文件: {len(weird_chars)}个")
        
        # 4. 超大文件
        print("4. 创建超大文件...")
        with open(os.path.join(project_dir, 'huge_10k_lines.ets'), 'w') as f:
            for i in range(10000):
                f.write(f"// Line {i}\nstruct Line{i} {{ m{i}() {{}} }}\n")
        
        with open(os.path.join(project_dir, 'huge_50k_chars.ets'), 'w') as f:
            f.write("@Component\nstruct Huge {\n  data: string = '")
            f.write('x' * 50000)
            f.write("';\n}\n")
        chaos_items.append("超大文件: 2个")
        
        # 5. 二进制垃圾文件
        print("5. 创建二进制垃圾文件...")
        for i in range(3):
            with open(os.path.join(project_dir, f'garbage{i}.ets'), 'wb') as f:
                f.write(b'\x00\x01\x02\x03\xff\xfe\xfd')
                f.write(b'Normal text here\n')
                f.write(b'\x00\x01\x02\x03' * 100)
        chaos_items.append("二进制文件: 3个")
        
        # 6. 循环引用文件
        print("6. 创建循环引用文件...")
        with open(os.path.join(project_dir, 'circular_a.ets'), 'w') as f:
            f.write("""
struct A {
    method() {
        let b = new B();
        b.call();
    }
}
""")
        
        with open(os.path.join(project_dir, 'circular_b.ets'), 'w') as f:
            f.write("""
struct B {
    call() {
        let a = new A();
        a.method();
    }
}
""")
        chaos_items.append("循环引用文件: 2个")
        
        # 7. 注释中的大量代码
        print("7. 创建注释中的大量代码...")
        with open(os.path.join(project_dir, 'comment_chaos.ets'), 'w') as f:
            f.write("""
/*
struct Fake1 { method1() { console.log('fake1'); } }
struct Fake2 { method2() { console.log('fake2'); } }
struct Fake3 { method3() { console.log('fake3'); } }
// More fake code in comments
struct Fake4 { method4() { console.log('fake4'); } }
struct Fake5 { method5() { console.log('fake5'); } }
*/

struct RealComponent {
    aboutToAppear() {
        // struct InlineFake { fake(); }
        console.log('real');
    }
}
""")
        chaos_items.append("注释混沌文件: 1个")
        
        # 8. 字符串中的大量代码
        print("8. 创建字符串中的大量代码...")
        with open(os.path.join(project_dir, 'string_chaos.ets'), 'w') as f:
            f.write("""
struct Component {
    template: string = `
        <div>
            <struct FakeHTML>NotReal</struct>
            <struct AnotherFake>AlsoFake</struct>
        </div>
    `;
    code: string = "struct StringFake { fake() {}}";
}
""")
        chaos_items.append("字符串混沌文件: 1个")
        
        # 9. 语法错误文件
        print("9. 创建语法错误文件...")
        syntax_errors = [
            ("unclosed_brace", "struct A { method() {"),
            ("unclosed_parens", "struct B { method( {"),
            ("missing_colon", "struct C { method {}}"),
            ("extra_brace", "struct D {}} build() {}"),
            ("broken_template", "@Component @Entry @State struct E {}"),
        ]
        for name, content in syntax_errors:
            with open(os.path.join(project_dir, f'{name}.ets'), 'w') as f:
                f.write(content)
        chaos_items.append(f"语法错误文件: {len(syntax_errors)}个")
        
        # 10. 重复类名文件
        print("10. 创建重复类名文件...")
        for i in range(10):
            with open(os.path.join(project_dir, f'duplicate{i}.ets'), 'w') as f:
                f.write(f"""@Component
struct DuplicateClass {{
    build() {{ Text('duplicate {i}'); }}
}}
""")
        chaos_items.append("重复类名文件: 10个")
        
        # 11. 超长标识符
        print("11. 创建超长标识符...")
        with open(os.path.join(project_dir, 'long_identifiers.ets'), 'w') as f:
            long_name_1 = 'A' * 1000
            long_name_2 = 'B' * 500
            long_name_3 = 'C' * 200
            f.write(f"""
struct {long_name_1} {{
    {long_name_2}(): void {{}}
    property_{long_name_3}: string = 'test';
}}
""")
        chaos_items.append("超长标识符文件: 1个")
        
        # 12. 嵌套极深的文件
        print("12. 创建嵌套极深的文件...")
        with open(os.path.join(project_dir, 'deep_nest.ets'), 'w') as f:
            code = ""
            for i in range(100):
                code += "  " * i + f"struct Level{i} {{\n"
                code += "  " * (i+1) + f"method{i}() {{}}\n"
            for i in range(99, -1, -1):
                code += "  " * i + "}\n"
            f.write(code)
        chaos_items.append("深嵌套文件: 1个")
        
        # 13. 符号链接循环
        print("13. 创建符号链接...")
        subdir = os.path.join(project_dir, 'subdir')
        os.makedirs(subdir)
        
        # 创建符号链接指向父目录
        try:
            link_path = os.path.join(subdir, 'back_to_parent')
            if not os.path.exists(link_path):
                os.symlink(project_dir, link_path)
            chaos_items.append("符号链接循环: 1个")
        except:
            chaos_items.append("符号链接: (跳过)")
        
        # 14. 大量小文件
        print("14. 创建大量小文件...")
        for i in range(200):
            with open(os.path.join(project_dir, f'tiny{i}.ets'), 'w') as f:
                f.write(f"@Component\nstruct Tiny{i} {{ build() {{}} }}\n")
        chaos_items.append("微小文件: 200个")
        
        # 15. 混合扩展名
        print("15. 创建混合扩展名...")
        extensions = ['.ets', '.ts', '.tsx', '.js', '.JS', '.ETS']
        for ext in extensions:
            with open(os.path.join(project_dir, f'multi{ext}'), 'w') as f:
                f.write(f"@Component\nstruct Multi{ext} {{ build() {{}} }}\n")
        chaos_items.append(f"混合扩展名: {len(extensions)}个")
        
        # 统计
        total_files = len([f for f in os.listdir(project_dir) if os.path.isfile(os.path.join(project_dir, f))])
        
        print("\n" + "=" * 80)
        print("混乱场景创建完成！")
        print("=" * 80)
        print(f"\n总计文件数: {total_files}")
        print("\n混乱项目清单:")
        for item in chaos_items:
            print(f"  - {item}")
        
        # 构建测试
        print("\n开始构建极度混乱的项目...")
        start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=30
        )
        
        elapsed = time.time() - start
        
        print(result.stdout)
        
        if result.returncode == 0:
            print(f"\n✅ 极度混乱场景构建成功！耗时: {elapsed:.2f}秒")
            
            # 验证
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
            
            conn.close()
            
            return True
        else:
            print(f"\n❌ 构建失败")
            return False
        
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第七轮 - 极混乱真实场景模拟")
    print("=" * 80)
    
    success = create_ultra_chaotic_project()
    
    if success:
        print("\n🎉 极混乱场景测试完成！")
    else:
        print("\n⚠️  测试发现问题")

if __name__ == "__main__":
    main()
