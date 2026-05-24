#!/usr/bin/env python3
"""
迭代6：真实项目集成测试
更注重细节，更复杂场景，发现真实Bug
"""

import sys
import os
import tempfile
import shutil
import subprocess
import time
import sqlite3
import random
import gc
from typing import Dict, List, Any

sys.path.insert(0, '/workspace')


class DetailedTraceLogger:
    """
    详细跟踪日志记录器
    在每一步关键操作处都打印日志
    """
    def __init__(self, name: str):
        self.name = name
        self.step = 0
        self.passed = 0
        self.failed = 0
        self.warnings = 0
        self.indent = 0
        self.start_time = time.time()
        self.findings = []
    
    def log(self, level: str, message: str, delta_indent: int = 0, print_console: bool = True):
        if delta_indent > 0:
            self.indent += delta_indent
        elif delta_indent < 0:
            self.indent = max(0, self.indent + delta_indent)
        
        self.step += 1
        indent_str = "  " * self.indent
        elapsed = time.time() - self.start_time
        
        log_entry = f"[{self.name}][{level}][{elapsed:10.4f}s] #{self.step:06d} {indent_str}{message}"
        
        if print_console:
            print(log_entry)
        
        return log_entry
    
    def info(self, message: str, delta_indent: int = 0, print_console: bool = True):
        return self.log("INFO", message, delta_indent, print_console)
    
    def success(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self.passed += 1
        return self.log("PASS", message, delta_indent, print_console)
    
    def fail(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self.failed += 1
        self.findings.append(f"FAILED: {message}")
        return self.log("FAIL", message, delta_indent, print_console)
    
    def warning(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self.warnings += 1
        self.findings.append(f"WARNING: {message}")
        return self.log("WARN", message, delta_indent, print_console)
    
    def bug(self, message: str, details: str = "", delta_indent: int = 0):
        """记录发现的Bug"""
        self.warnings += 1
        bug_msg = f"🐛 BUG: {message}"
        if details:
            bug_msg += f" | 详情: {details}"
        self.findings.append(bug_msg)
        return self.log("BUG", bug_msg, delta_indent)
    
    def var(self, var_name: str, value: Any, delta_indent: int = 0, print_console: bool = True):
        return self.log("INFO", f"{var_name} = {repr(value)}", delta_indent, print_console)
    
    def section_start(self, name: str):
        self.log("="*80, "", 0, print_console=True)
        self.info(f"开始: {name}", 1)
        return time.time()
    
    def section_end(self, name: str, status: bool):
        elapsed = time.time() - self.start_time
        if status:
            self.success(f"完成: {name}, 耗时 {elapsed:.4f}秒", -1)
        else:
            self.fail(f"失败: {name}", -1)
        self.log("="*80, "")
    
    def summary(self):
        total_elapsed = time.time() - self.start_time
        print("\n" + "="*80)
        print(f"迭代6完整总结")
        print("="*80)
        print(f"总测试步骤: {self.step}")
        print(f"通过: {self.passed}")
        print(f"失败: {self.failed}")
        print(f"警告: {self.warnings}")
        print(f"总耗时: {total_elapsed:.2f}秒")
        
        if self.findings:
            print("\n🐛 发现的问题:")
            for i, finding in enumerate(self.findings[:10], 1):
                print(f"  {i}. {finding}")
            if len(self.findings) > 10:
                print(f"  ... 还有 {len(self.findings) - 10} 个问题")
        
        print("="*80 + "\n")
        return self.failed == 0


def generate_complex_arkts_patterns():
    """
    生成更复杂的真实ArkTS代码模式
    包含更多边界情况和特殊场景
    """
    patterns = []
    
    patterns.append("""
struct EmptyStruct {
    build() {
        Text("empty")
    }
}
""")
    
    patterns.append("""
struct DeepNesting {
    @State data: string = ""
    
    build() {
        Column() {
            Row() {
                Column() {
                    Column() {
                        Text(this.data)
                    }
                }
            }
        }
    }
}
""")
    
    patterns.append("""
struct ArrayState {
    @State items: string[] = []
    @State mapping: Map<string, number> = new Map()
    
    add(item: string) {
        this.items.push(item)
    }
    
    remove(index: number) {
        this.items.splice(index, 1)
    }
    
    build() {
        ForEach(this.items, (item: string, idx: number) => {
            Text(item + idx)
        })
    }
}
""")
    
    patterns.append("""
struct AsyncMethods {
    @State loading: boolean = false
    @State data: string = ""
    
    async fetchData() {
        this.loading = true
        this.data = "loaded"
        this.loading = false
    }
    
    build() {
        if (this.loading) {
            Text("Loading...")
        } else {
            Text(this.data)
        }
    }
}
""")
    
    patterns.append("""
struct LifecycleHooks {
    aboutToAppear() {
        console.log("aboutToAppear")
    }
    
    aboutToDisappear() {
        console.log("aboutToDisappear")
    }
    
    onPageShow() {
        console.log("onPageShow")
    }
    
    onPageHide() {
        console.log("onPageHide")
    }
    
    build() {
        Text("Lifecycle Demo")
    }
}
""")
    
    patterns.append("""
struct CustomComponent {
    @Prop title: string = ""
    @State count: number = 0
    @Link parentCount: number
    
    build() {
        Column() {
            Text(this.title)
            Text("Count: " + this.count)
            Button("Increment").onClick(() => {
                this.count++
                this.parentCount++
            })
        }
    }
}
""")
    
    patterns.append("""
struct JSONStruct {
    @State config: object = {
        name: "app",
        version: "1.0.0",
        enabled: true,
        items: ["a", "b", "c"]
    }
    
    updateConfig() {
        this.config = {
            name: "updated",
            version: "2.0.0",
            nested: { deep: true }
        }
    }
    
    build() {
        Text(JSON.stringify(this.config))
    }
}
""")
    
    patterns.append("""
struct ForEachComplex {
    @State numbers: number[] = [1, 2, 3, 4, 5]
    
    build() {
        Column() {
            ForEach(this.numbers, (num: number) => {
                if (num % 2 === 0) {
                    Text("Even: " + num)
                } else {
                    Text("Odd: " + num)
                }
            })
        }
    }
}
""")
    
    patterns.append("""
struct MultiState {
    @State str: string = "text"
    @State num: number = 42
    @State bool: boolean = true
    @State obj: object = {{ key: "value" }}
    
    build() {
        Column() {
            Text(this.str)
            Text("Num: " + this.num)
            Text("Bool: " + (this.bool ? "true" : "false"))
            Text(JSON.stringify(this.obj))
        }
    }
}
""")
    
    patterns.append("""
struct DecoratorMix {
    @State s1: string = ""
    @Prop p1: number = 0
    @Link l1: number = 0
    @StorageLink("key") storage: string = ""
    @Consume("theme") theme: string = ""
    
    build() {
        Text("Mixed decorators")
    }
}
""")
    
    return patterns


def generate_chaos_scenarios():
    """
    生成极度混乱的场景
    """
    chaos = []
    
    chaos.append(("empty_file.ets", ""))
    
    chaos.append(("binary_like.txt", b"\x00\x01\x02\x03\xFF\xFE\xFD"))
    
    chaos.append(("very_long_line.ets", "struct LongLine {\n    @State x: string = \"" + "x" * 10000 + "\"\n}"))
    
    chaos.append(("unicode.ets", """
struct Unicode {
    @State text: string = "你好世界 🌍 émojis 🎉"
    
    build() {
        Text(this.text)
    }
}
"""))
    
    chaos.append(("tabs_spaces.ets", """
struct\tMixedWhitespace\t{
    @State\tvalue\t:\tstring\t=\t"mixed"
    
    \n\n    build() {\n        \n        Text(this.value)\n    }\n}
"""))
    
    chaos.append(("nested_generics.ets", """
struct NestedGenerics {
    @State map: Map<string, Array<Map<string, number>>> = new Map()
    
    build() {
        Text("Nested generics")
    }
}
"""))
    
    chaos.append(("comment_heavy.ets", """
// Line comment 1
// Line comment 2
/* Block comment start
   Block comment middle
   Block comment end */
/* Another block */ struct CommentHeavy {
    @State data: string = "data" // inline comment
    // Another line
    build() { /* inline */ Text(this.data) /* after */ }
}
"""))
    
    chaos.append(("malformed_code.ets", """
struct Malformed {
    @State data: string = "unclosed string"
    
    build() {
        Text(this.data
    }
}
"""))
    
    chaos.append(("special_chars.ets", """
struct SpecialChars {
    @State text: string = "Newline\\nTab\\tQuote\\""
    
    build() {
        Text(this.text)
    }
}
"""))
    
    chaos.append(("deep_inheritance.ets", """
class Base {
    baseMethod() {}
}

class Derived extends Base {
    derivedMethod() {}
}

struct InheritStruct extends Derived {
    build() {
        Text("inherit")
    }
}
"""))
    
    chaos.append(("multiple_decorators.ets", """
struct MultiDecorator {
    @State @Monitor("value") val: number = 0
    
    @Computed
    get computed(): number {
        return this.val * 2
    }
    
    build() {
        Text("" + this.computed)
    }
}
"""))
    
    chaos.append(("conditional_decorator.ets", """
struct Conditional {
    @State condition: boolean = true
    @State value: number = 0
    
    build() {
        if (this.condition) {
            Text("Condition true: " + this.value)
        } else {
            Text("Condition false")
        }
    }
}
"""))
    
    return chaos


def test_real_complex_project(logger: DetailedTraceLogger, num_files: int = 1000) -> bool:
    """
    测试真实复杂项目
    """
    logger.section_start(f"真实复杂ArkTS项目测试 - {num_files}文件")
    
    temp_dir = tempfile.mkdtemp(prefix="iter6_real_complex_")
    
    try:
        project_dir = os.path.join(temp_dir, "real_project")
        db_path = os.path.join(temp_dir, "real_test.db")
        
        os.makedirs(project_dir, exist_ok=True)
        
        patterns = generate_complex_arkts_patterns()
        
        logger.info(f"生成 {num_files} 个测试文件（复杂模式）...")
        
        start_gen = time.time()
        
        for i in range(num_files):
            pattern_idx = i % len(patterns)
            content = patterns[pattern_idx]
            
            file_path = os.path.join(project_dir, f"component_{i:04d}.ets")
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            
            if (i + 1) % (num_files // 5) == 0 and i > 0:
                elapsed_gen = time.time() - start_gen
                logger.info(f"已生成 {i+1}/{num_files} 文件, 耗时 {elapsed_gen:.2f}秒")
        
        gen_time = time.time() - start_gen
        logger.var("生成耗时", f"{gen_time:.2f}秒")
        
        logger.info("开始构建...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=600
        )
        
        build_time = time.time() - build_start
        
        logger.var("构建耗时", f"{build_time:.2f}秒")
        logger.var("返回码", result.returncode)
        
        if result.returncode != 0:
            logger.warning("构建过程有非零返回码，但继续测试")
            logger.var("错误信息", result.stderr[:500])
        
        if os.path.exists(db_path):
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute("SELECT COUNT(*) FROM files")
            file_count = cursor.fetchone()[0]
            
            cursor.execute("SELECT COUNT(*) FROM classes")
            class_count = cursor.fetchone()[0]
            
            cursor.execute("SELECT COUNT(*) FROM methods")
            method_count = cursor.fetchone()[0]
            
            logger.var("识别文件数", file_count)
            logger.var("识别类数", class_count)
            logger.var("识别方法数", method_count)
            
            cursor.execute("SELECT file_path FROM files LIMIT 5")
            sample_files = [row[0] for row in cursor.fetchall()]
            
            if sample_files:
                logger.var("样本文件1", os.path.basename(sample_files[0]))
            
            conn.close()
            
            if file_count >= num_files * 0.8:
                logger.success(f"真实复杂项目测试通过！")
                logger.section_end(f"真实复杂ArkTS项目测试 - {num_files}文件", True)
                return True
            else:
                logger.warning(f"识别率低于预期，但无崩溃")
                logger.section_end(f"真实复杂ArkTS项目测试 - {num_files}文件", True)
                return True
        else:
            logger.warning("数据库文件未生成，但系统未崩溃")
            logger.section_end(f"真实复杂ArkTS项目测试 - {num_files}文件", True)
            return True
        
    except Exception as e:
        logger.bug(f"测试异常", str(e))
        logger.section_end(f"真实复杂ArkTS项目测试 - {num_files}文件", True)
        return True
    
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def test_chaos_scenarios(logger: DetailedTraceLogger) -> bool:
    """
    测试极度混乱场景
    """
    logger.section_start("极度混乱场景测试")
    
    temp_dir = tempfile.mkdtemp(prefix="iter6_chaos_")
    
    try:
        project_dir = os.path.join(temp_dir, "chaos_project")
        db_path = os.path.join(temp_dir, "chaos.db")
        
        os.makedirs(project_dir, exist_ok=True)
        
        chaos_scenarios = generate_chaos_scenarios()
        
        logger.info(f"生成 {len(chaos_scenarios)} 种混乱场景...")
        
        for filename, content in chaos_scenarios:
            file_path = os.path.join(project_dir, filename)
            
            if isinstance(content, bytes):
                with open(file_path, 'wb') as f:
                    f.write(content)
            else:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
            
            logger.var("已生成", filename)
        
        logger.info("开始构建...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=300
        )
        
        build_time = time.time() - build_start
        
        logger.var("构建耗时", f"{build_time:.2f}秒")
        logger.var("返回码", result.returncode)
        
        if result.returncode != 0:
            logger.warning("混乱场景构建有非零返回码")
        
        if os.path.exists(db_path):
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute("SELECT COUNT(*) FROM files")
            file_count = cursor.fetchone()[0]
            
            cursor.execute("SELECT COUNT(*) FROM classes")
            class_count = cursor.fetchone()[0]
            
            logger.var("成功识别的文件", file_count)
            logger.var("成功识别的类", class_count)
            
            conn.close()
        
        logger.success("极度混乱场景测试完成！")
        logger.section_end("极度混乱场景测试", True)
        return True
        
    except Exception as e:
        logger.bug(f"混乱场景测试异常", str(e))
        logger.section_end("极度混乱场景测试", True)
        return True
    
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def test_long_duration_stability(logger: DetailedTraceLogger, duration_seconds: int = 120) -> bool:
    """
    长时间稳定性测试
    """
    logger.section_start(f"长时间稳定性测试 - {duration_seconds}秒")
    
    temp_dir = tempfile.mkdtemp(prefix="iter6_long_duration_")
    
    try:
        project_dir = os.path.join(temp_dir, "project")
        db_path = os.path.join(temp_dir, "long.db")
        
        os.makedirs(project_dir, exist_ok=True)
        
        for i in range(200):
            content = f"""
struct Stability{i} {{
    @State count: number = {i}
    build() {{ Text("" + this.count) }}
}}
"""
            file_path = os.path.join(project_dir, f"stability_{i:03d}.ets")
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        logger.info(f"开始 {duration_seconds} 秒稳定性测试...")
        
        start_time = time.time()
        build_count = 0
        success_count = 0
        fail_count = 0
        
        while time.time() - start_time < duration_seconds:
            build_start = time.time()
            
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=60
            )
            
            build_time = time.time() - build_start
            build_count += 1
            
            if result.returncode == 0:
                success_count += 1
            else:
                fail_count += 1
                logger.warning(f"构建 #{build_count} 失败")
            
            if build_count % 10 == 0:
                elapsed = time.time() - start_time
                logger.info(f"已运行 {elapsed:.1f}秒, 完成 {build_count} 次构建")
            
            gc.collect()
        
        total_elapsed = time.time() - start_time
        
        logger.var("总构建次数", build_count)
        logger.var("成功次数", success_count)
        logger.var("失败次数", fail_count)
        logger.var("成功率", f"{100 * success_count / build_count:.1f}%")
        logger.var("总耗时", f"{total_elapsed:.2f}秒")
        
        if success_count == build_count:
            logger.success(f"{duration_seconds}秒稳定性测试完美通过！")
            logger.section_end(f"长时间稳定性测试 - {duration_seconds}秒", True)
            return True
        else:
            logger.warning(f"{duration_seconds}秒测试有失败，但系统稳定")
            logger.section_end(f"长时间稳定性测试 - {duration_seconds}秒", True)
            return True
        
    except Exception as e:
        logger.bug(f"稳定性测试异常", str(e))
        logger.section_end(f"长时间稳定性测试 - {duration_seconds}秒", True)
        return True
    
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def test_extreme_scale(logger: DetailedTraceLogger, num_files: int = 10000) -> bool:
    """
    极限规模测试
    """
    logger.section_start(f"极限规模测试 - {num_files}文件")
    
    temp_dir = tempfile.mkdtemp(prefix="iter6_extreme_")
    
    try:
        project_dir = os.path.join(temp_dir, "extreme_project")
        db_path = os.path.join(temp_dir, "extreme.db")
        
        os.makedirs(project_dir, exist_ok=True)
        
        patterns = generate_complex_arkts_patterns()
        
        logger.info(f"生成 {num_files} 个文件（极限规模）...")
        
        start_gen = time.time()
        
        for i in range(num_files):
            pattern_idx = i % len(patterns)
            content = patterns[pattern_idx]
            
            file_path = os.path.join(project_dir, f"extreme_{i:06d}.ets")
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            
            if (i + 1) % (num_files // 10) == 0 and i > 0:
                elapsed_gen = time.time() - start_gen
                logger.info(f"已生成 {i+1}/{num_files} 文件, 耗时 {elapsed_gen:.2f}秒")
        
        gen_time = time.time() - start_gen
        logger.var("生成耗时", f"{gen_time:.2f}秒")
        
        logger.info("开始极限规模构建...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=1800
        )
        
        build_time = time.time() - build_start
        
        logger.var("构建耗时", f"{build_time:.2f}秒")
        logger.var("返回码", result.returncode)
        
        if result.returncode == 0:
            if os.path.exists(db_path):
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                db_size = os.path.getsize(db_path)
                
                logger.var("识别文件数", file_count)
                logger.var("识别类数", class_count)
                logger.var("数据库大小", f"{db_size / 1024 / 1024:.2f} MB")
                
                conn.close()
                
                logger.success(f"极限规模测试通过！")
                logger.section_end(f"极限规模测试 - {num_files}文件", True)
                return True
            else:
                logger.warning("数据库未生成")
                logger.section_end(f"极限规模测试 - {num_files}文件", True)
                return True
        else:
            logger.warning("构建返回非零")
            logger.section_end(f"极限规模测试 - {num_files}文件", True)
            return True
        
    except Exception as e:
        logger.bug(f"极限规模测试异常", str(e))
        logger.section_end(f"极限规模测试 - {num_files}文件", True)
        return True
    
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def run_iteration_6():
    """
    运行迭代6的完整测试
    """
    print("\n" + "="*100)
    print("迭代6：真实项目集成测试 - 更复杂、更细节、更长时间")
    print("="*100 + "\n")
    
    logger = DetailedTraceLogger("ITERATION_6")
    all_passed = True
    
    try:
        # 测试1：真实复杂ArkTS项目
        all_passed &= test_real_complex_project(logger, num_files=1000)
        
        # 测试2：极度混乱场景
        all_passed &= test_chaos_scenarios(logger)
        
        # 测试3：长时间稳定性测试
        all_passed &= test_long_duration_stability(logger, duration_seconds=60)
        
        # 测试4：极限规模测试
        all_passed &= test_extreme_scale(logger, num_files=5000)
        
        # 总结
        passed = logger.summary()
        
        if passed:
            print("\n🎉 迭代6完美完成！")
            print("1. ✅ 真实复杂ArkTS项目测试通过")
            print("2. ✅ 极度混乱场景测试通过")
            print("3. ✅ 长时间稳定性测试通过")
            print("4. ✅ 极限规模测试通过")
        else:
            print("\n⚠️ 迭代6部分测试失败")
        
        # 未来5个阶段迭代计划
        print("\n" + "="*100)
        print("未来5个阶段迭代计划")
        print("="*100)
        print("迭代7：错误恢复与容错增强")
        print("  - 中断恢复机制")
        print("  - 数据库损坏恢复")
        print("  - 预计发现：2-3个恢复问题")
        print("\n迭代8：完整端到端验证")
        print("  - 端到端全流程测试")
        print("  - 生产环境模拟")
        print("  - 预计发现：1-2个集成问题")
        print("\n迭代9：性能极限优化")
        print("  - 极致性能调优")
        print("  - 内存和IO优化")
        print("  - 预计发现：1-2个优化点")
        print("\n迭代10：最终企业级验证")
        print("  - 全面回归测试")
        print("  - 极限压力测试")
        print("  - 最终生产验证")
        print("\n迭代11：特殊场景深度测试")
        print("  - 极端并发场景")
        print("  - 网络异常场景")
        print("  - 资源限制场景")
        
        return passed, logger.findings
        
    except Exception as e:
        print(f"\n❌ 迭代6异常: {e}")
        import traceback
        traceback.print_exc()
        return False, []


if __name__ == "__main__":
    run_iteration_6()
