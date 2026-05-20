#!/usr/bin/env python3
"""
测试正则表达式回溯问题
"""
import sys
import re
import time

sys.path.insert(0, '/workspace')

def test_regex_backtracking():
    """测试正则表达式的回溯性能"""
    print("=" * 80)
    print("测试正则表达式回溯问题")
    print("=" * 80)
    
    # 模拟当前的 method_pattern
    method_pattern = re.compile(r'\b(?:public|private|protected)?\s*(?:async\s+)?(\w+)\s*\([^)]{0,1000}?\)\s*(?::\s*\w+)?\s*\{')
    
    # 测试用例1：正常代码
    print("\n测试1：正常代码")
    normal_code = """
    public method1(): void {
        console.log("test");
    }
    """
    start = time.time()
    matches = method_pattern.findall(normal_code)
    elapsed = time.time() - start
    print(f"  耗时: {elapsed*1000:.3f}ms")
    print(f"  匹配: {matches}")
    
    # 测试用例2：超长参数列表（不闭合）
    print("\n测试2：超长参数列表（可能导致回溯）")
    long_code = "method(" + "a," * 500  # 500个参数
    start = time.time()
    try:
        matches = method_pattern.findall(long_code)
        elapsed = time.time() - start
        print(f"  耗时: {elapsed*1000:.3f}ms")
        print(f"  匹配: {matches}")
    except Exception as e:
        print(f"  异常: {e}")
    
    # 测试用例3：没有闭合括号
    print("\n测试3：没有闭合括号")
    unclosed_code = "public method(abc def ghi"
    start = time.time()
    try:
        matches = method_pattern.findall(unclosed_code)
        elapsed = time.time() - start
        print(f"  耗时: {elapsed*1000:.3f}ms")
        print(f"  匹配: {matches}")
    except Exception as e:
        print(f"  异常: {e}")
    
    # 测试用例4：超长单行代码（模拟真实场景）
    print("\n测试4：超长单行（10000字符）")
    long_line = "public method(" + "param" * 2000 + " : void { console.log(1); }"
    start = time.time()
    try:
        matches = method_pattern.findall(long_line)
        elapsed = time.time() - start
        print(f"  耗时: {elapsed*1000:.3f}ms")
        print(f"  匹配: {matches[:5]}...")  # 只显示前5个
    except Exception as e:
        print(f"  异常: {e}")
    
    # 测试用例5：真正的灾难性回溯场景
    print("\n测试5：灾难性回溯场景")
    catastrophic_code = "public method(" + "(((((" * 100 + "abc"
    start = time.time()
    try:
        matches = method_pattern.findall(catastrophic_code)
        elapsed = time.time() - start
        print(f"  耗时: {elapsed*1000:.3f}ms")
        print(f"  匹配: {matches}")
        if elapsed > 1:
            print(f"  ⚠️  发现性能问题！耗时超过1秒")
    except Exception as e:
        print(f"  异常: {e}")

def test_with_preprocessing():
    """测试预处理后的正则性能"""
    print("\n" + "=" * 80)
    print("测试预处理后的正则性能")
    print("=" * 80)
    
    from arkts_parser import ArkTSParser
    parser = ArkTSParser()
    
    # 测试用例1：超长参数
    print("\n测试1：超长参数列表（500个参数）")
    long_code = "public method(" + "a," * 500
    processed = parser._preprocess_content(long_code)
    start = time.time()
    matches = parser._extract_methods(processed, [])
    elapsed = time.time() - start
    print(f"  预处理后长度: {len(processed)}")
    print(f"  耗时: {elapsed*1000:.3f}ms")
    print(f"  识别方法: {len(matches)}")
    
    # 测试用例2：真实ArkTS代码
    print("\n测试2：真实ArkTS代码")
    real_code = """
    @Component
    struct MyComponent {
        @State data: string = 'test'
        
        aboutToAppear() {
            console.log('init')
        }
        
        build() {
            Column() {
                Text(this.data)
            }
        }
    }
    """
    start = time.time()
    result = parser.parse_file.__wrapped__(parser, '/fake/path.ets')
    elapsed = time.time() - start
    print(f"  耗时: {elapsed*1000:.3f}ms")

if __name__ == "__main__":
    test_regex_backtracking()
    test_with_preprocessing()
    print("\n✅ 正则表达式测试完成！")
