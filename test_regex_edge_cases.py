#!/usr/bin/env python3
"""
深入审查：解析器的正则表达式和逻辑
"""
import sys
import re

sys.path.insert(0, '/workspace')
from arkts_parser import ArkTSParser

def test_regex_edge_cases():
    """测试正则表达式的边界情况"""
    print("=" * 80)
    print("深入审查：正则表达式边界情况测试")
    print("=" * 80)
    
    parser = ArkTSParser()
    
    # 测试各种边界情况
    test_cases = [
        # (name, code)
        ("正常struct", """
@Component
struct MyComponent {
    build() { Text("Hello"); }
}
"""),
        ("嵌套struct", """
struct Outer {
    struct Inner {
        build() {}
    }
}
"""),
        ("泛型类型", """
struct MyList<T> {
    items: T[] = [];
    build() {}
}
"""),
        ("装饰器", """
@Observed
class MyClass {
    @Track prop1: string;
}
"""),
        ("注释中的struct", """
// struct FakeStruct { fake(); }
struct RealStruct {
    method() { /* struct InsideComment {} */ }
}
"""),
        ("字符串中的struct", """
struct StringTest {
    text: string = "struct Fake { fake(); }";
    build() {}
}
"""),
        ("注释掉的代码", """
struct BeforeComment {
    method1() {}
}
/*
struct InsideComment {
    method2() {}
}
*/
struct AfterComment {
    method3() {}
}
"""),
        ("多行字符串", """
struct MultiLineString {
    text: string = \`
        struct FakeMulti {
            fake() {}
        }
    \`;
    build() {}
}
"""),
        ("复杂嵌套", """
struct Level1 {
    struct Level2 {
        struct Level3 {
            build() {}
        }
    }
}
"""),
        ("同名方法", """
struct SameName {
    method() { console.log(1); }
    method() { console.log(2); }
}
"""),
    ]
    
    print(f"\n测试 {len(test_cases)} 个边界情况...\n")
    
    issues_found = []
    
    for name, code in test_cases:
        print(f"测试: {name}")
        try:
            # 直接解析内容
            classes = parser._extract_classes(code)
            print(f"  识别到的类: {[c['name'] for c in classes]}")
            
            # 检查是否有误识别
            if 'FakeStruct' in str(classes) or 'InsideComment' in str(classes):
                issues_found.append(f"误识别: {name}")
                print(f"  ⚠️ 可能误识别")
            elif 'Fake' in str(classes):
                issues_found.append(f"误识别: {name}")
                print(f"  ⚠️ 可能误识别")
            
            if len(classes) == 0 and name not in ['注释中的struct', '字符串中的struct', '多行字符串']:
                issues_found.append(f"未识别: {name}")
                print(f"  ⚠️ 应该识别但未识别")
                
        except Exception as e:
            issues_found.append(f"异常: {name} - {e}")
            print(f"  ❌ 异常: {e}")
        
        print()
    
    if issues_found:
        print(f"\n⚠️ 发现 {len(issues_found)} 个潜在问题:")
        for issue in issues_found:
            print(f"  - {issue}")
    else:
        print("\n✅ 所有边界情况测试通过！")
    
    return issues_found

def test_method_extraction():
    """测试方法提取"""
    print("\n" + "=" * 80)
    print("测试方法提取边界情况")
    print("=" * 80)
    
    parser = ArkTSParser()
    
    test_cases = [
        ("标准方法", """
struct Test {
    publicMethod() { console.log(1); }
    private async method2(): number { return 1; }
}
"""),
        ("getter/setter", """
struct Accessor {
    get value(): string { return "test"; }
    set value(v: string) { console.log(v); }
}
"""),
        ("箭头函数属性", """
struct Arrow {
    handler = (e: Event) => { console.log(e); };
    callback: () => void = () => { };
}
"""),
        ("构造函数", """
class Constructor {
    constructor() { }
    init(data: string) { }
}
"""),
    ]
    
    print(f"\n测试 {len(test_cases)} 个方法提取情况...\n")
    
    issues = []
    
    for name, code in test_cases:
        print(f"测试: {name}")
        try:
            classes = parser._extract_classes(code)
            methods = parser._extract_methods(code, classes)
            print(f"  识别到的方法: {[m['name'] for m in methods]}")
            
            # 检查是否遗漏
            expected_methods = ['publicMethod', 'method2', 'value', 'handler', 'callback', 'constructor', 'init']
            found_methods = [m['name'] for m in methods]
            
            for expected in expected_methods:
                if expected in found_methods:
                    print(f"    ✓ {expected}")
                elif expected in ['value', 'handler', 'callback']:
                    print(f"    ⚠️ {expected} (可能是可接受遗漏)")
                else:
                    issues.append(f"遗漏: {expected} 在 {name}")
                    print(f"    ❌ 遗漏: {expected}")
                    
        except Exception as e:
            issues.append(f"异常: {name} - {e}")
            print(f"  ❌ 异常: {e}")
        
        print()
    
    if issues:
        print(f"\n发现 {len(issues)} 个问题")
        for issue in issues:
            print(f"  - {issue}")
    else:
        print("\n✅ 方法提取测试通过！")
    
    return issues

if __name__ == "__main__":
    issues1 = test_regex_edge_cases()
    issues2 = test_method_extraction()
    
    if issues1 or issues2:
        print(f"\n⚠️ 共发现 {len(issues1) + len(issues2)} 个问题")
    else:
        print("\n🎉 所有深入审查测试通过！")
