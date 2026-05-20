#!/usr/bin/env python3
"""
创建极端复杂的测试场景，专门用于发现系统的真实运行时bug
包括超大文件、边界情况、压力测试
"""

import os
import random
import string
import sys

def create_large_file(file_path, num_lines=10000):
    """创建超大型文件"""
    print(f"正在创建超大文件 {num_lines} 行: {file_path}")
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    
    content = []
    
    for i in range(num_lines):
        line = f"  console.log('Line {i}');"
        content.append(line)
    
    content = f"""import {{ SomeImport }} from '@ohos.app.ability.Ability';

@Entry
@Component
struct LargeComponent{random.randint(1, 10000)} {{
  @State count: number = 0;
  @State message: string = 'Initial';

  aboutToAppear() {{
    // 非常大的aboutToAppear
    this.count = 0;
    this.message = 'Hello World';
    {chr(10).join([f"    this.count++;"] * 500)}
  }}

  build() {{
    Column() {{
      Text(this.message)
        .fontSize(20)
        .onClick(() => {{
          this.handleClick();
        }})
      Text(`Count: ${{this.count}}`)
    }}
  }}

  handleClick() {{
    this.count++;
    {chr(10).join([f"    this.doSomething{i}();" for i in range(100)])}
  }}

  {chr(10).join([f"""  doSomething{i}(): void {{
    this.count++;
    console.log('Doing something');
  }}""" for i in range(100)])}
}}
"""
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def create_empty_file(file_path):
    """创建空文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    with open(file_path, 'w') as f:
        pass

def create_syntax_error_file(file_path):
    """创建有语法错误的文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    content = """@Component
struct BadSyntaxError {
  build() {
    Column() {
      Text("Hello)
    }
  }
"""
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def create_weird_characters_file(file_path):
    """创建包含奇怪字符的文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    special_chars = "!@#$%^&*()_+[]{}|;:,.<>?~"
    content = f"""@Entry
@Component
struct WeirdChars {{
  @State weirdText: string = '{special_chars}';
  
  build() {{
    Text(this.weirdText)
  }}
}}
"""
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def create_deep_nesting_file(file_path, depth=50):
    """创建深度嵌套的文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    nested = "Column() {{"
    closing = "}"
    
    for i in range(depth):
        nested += "\n" + "  " * i + "Column() {"
    
    for i in range(depth):
        closing = "  " * (depth - i) + "}\n" + closing
    
    content = f"""@Entry
@Component
struct DeepNesting {{
  build() {{
{nested}
    Text("Deep Nesting")
{closing}
  }}
}}
"""
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def create_unicode_file(file_path):
    """创建包含Unicode字符的文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    content = """@Entry
@Component
struct UnicodeTest {{
  @State text: string = 'Chinese Test';
  
  build() {{
    Text(this.text)
  }}
}}
"""
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def create_very_long_name_file(file_path):
    """创建超长长变量名和方法名的文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    very_long_name = 'a' * 100
    content = f"""@Entry
@Component
struct ComponentWithVeryLongNames {{
  @State {very_long_name}: number = 0;
  
  build() {{
    Text('Hello')
  }}
  
  {very_long_name}(): void {{
    this.{very_long_name}++;
  }}
}}
"""
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def create_many_components_file(file_path, num_components=100):
    """创建大量组件的文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    content = []
    
    for i in range(num_components):
        content.append(f"""
@Component
struct Component{i} {{
  build() {{
    Text('Component {i}')
  }}
}}
""")
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(chr(10).join(content))

def main(base_path):
    print("="*80)
    print("开始创建极端复杂的测试场景！")
    print("="*80)
    
    base_path = base_path or "/workspace/extreme_test"
    os.makedirs(base_path, exist_ok=True)
    
    print(f"创建超大文件 (10000行)...")
    create_large_file(os.path.join(base_path, "large_10000_lines.ets"), 10000)
    print("  ✓ 完成")
    
    print(f"创建空文件...")
    create_empty_file(os.path.join(base_path, "empty.ets"))
    print("  ✓ 完成")
    
    print(f"创建语法错误文件...")
    create_syntax_error_file(os.path.join(base_path, "syntax_error.ets"))
    print("  ✓ 完成")
    
    print(f"创建奇怪字符文件...")
    create_weird_characters_file(os.path.join(base_path, "weird_chars.ets"))
    print("  ✓ 完成")
    
    print(f"创建深度嵌套文件...")
    create_deep_nesting_file(os.path.join(base_path, "deep_nesting.ets"), 50)
    print("  ✓ 完成")
    
    print(f"创建Unicode文件...")
    create_unicode_file(os.path.join(base_path, "unicode_test.ets"))
    print("  ✓ 完成")
    
    print(f"创建超长名称文件...")
    create_very_long_name_file(os.path.join(base_path, "very_long_names.ets"))
    print("  ✓ 完成")
    
    print(f"创建多组件文件 (100组件)...")
    create_many_components_file(os.path.join(base_path, "many_components.ets"), 100)
    print("  ✓ 完成")
    
    print("\n✅ 极端测试场景创建完成！")
    print(f"   测试目录: {base_path}")
    print("="*80)

if __name__ == "__main__":
    base = sys.argv[1] if len(sys.argv) > 1 else None
    main(base)
