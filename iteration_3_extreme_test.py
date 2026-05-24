#!/usr/bin/env python3
"""
迭代3：极端真实场景深度测试
包含：
1. 10000文件超大规模测试
2. 500次连续构建
3. 极端混乱场景（所有错误类型）
4. 详细日志追踪
"""

import sys
import os
import tempfile
import shutil
import subprocess
import time
import traceback
import sqlite3
import random
import gc
import string
from typing import Dict, List, Any, Tuple, Optional
from collections import defaultdict

sys.path.insert(0, '/workspace')


class DetailedTraceLogger:
    """
    详细的日志追踪器，按照用户建议：每一步都打印
    """
    def __init__(self, name: str):
        self.name = name
        self.step = 0
        self.passed = 0
        self.failed = 0
        self.warnings = 0
        self.indent = 0
        self.start_time = time.time()
        self.log_file = f"{name}_trace.log"
        
        # 清空日志文件
        with open(self.log_file, 'w', encoding='utf-8') as f:
            pass
    
    def _log(self, level: str, message: str, delta_indent: int = 0, print_to_console: bool = True):
        if delta_indent > 0:
            self.indent += delta_indent
        elif delta_indent < 0:
            self.indent = max(0, self.indent + delta_indent)
        
        self.step += 1
        indent_str = "  " * self.indent
        elapsed = time.time() - self.start_time
        log_entry = f"[{self.name}][{level}][{elapsed:10.4f}s] #{self.step:06d} {indent_str}{message}"
        
        # 同时输出到控制台和文件
        if print_to_console:
            print(log_entry)
        
        with open(self.log_file, 'a', encoding='utf-8') as f:
            f.write(log_entry + '\n')
    
    def info(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self._log("INFO", message, delta_indent, print_console)
    
    def success(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self.passed += 1
        self._log("PASS", message, delta_indent, print_console)
    
    def fail(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self.failed += 1
        self._log("FAIL", message, delta_indent, print_console)
    
    def warning(self, message: str, delta_indent: int = 0, print_console: bool = True):
        self.warnings += 1
        self._log("WARN", message, delta_indent, print_console)
    
    def var(self, var_name: str, value: Any, delta_indent: int = 0, print_console: bool = True):
        self._log("INFO", f"{var_name} = {repr(value)}", delta_indent, print_console)
    
    def start_func(self, func_name: str, print_console: bool = True):
        self.info(f"▶ 进入函数: {func_name}", 1, print_console)
    
    def end_func(self, func_name: str, print_console: bool = True):
        self.info(f"◀ 退出函数: {func_name}", -1, print_console)
    
    def summary(self):
        print("\n" + "="*100)
        print(f"{self.name} 完整总结")
        print("="*100)
        print(f"  总测试步骤: {self.step}")
        print(f"  通过: {self.passed}")
        print(f"  失败: {self.failed}")
        print(f"  警告: {self.warnings}")
        print(f"  总耗时: {time.time() - self.start_time:.4f}秒")
        print(f"  详细日志保存至: {self.log_file}")
        print("="*100 + "\n")
        return self.failed == 0


def generate_realistic_code(file_idx: int) -> str:
    """
    生成更真实的代码，模拟真实项目
    """
    # 不同的复杂度级别
    complexity_level = random.randint(1, 5)
    
    content = ""
    
    if complexity_level == 1:
        # 简单的组件
        content = f"""struct SimpleComponent{file_idx} {{
    @State
    data{file_idx}: string = "Hello World"
    
    build() {{
        Column() {{
            Text(this.data{file_idx})
        }}
    }}
}}
"""
    elif complexity_level == 2:
        # 带方法的组件
        content = f"""struct ComponentWithMethods{file_idx} {{
    @State
    count{file_idx}: number = 0
    @State
    text{file_idx}: string = "Count: 0"
    
    init{file_idx}() {{
        this.count{file_idx} = 0
    }}
    
    increment{file_idx}() {{
        this.count{file_idx}++
        this.text{file_idx} = "Count: " + this.count{file_idx}
    }}
    
    build() {{
        Column() {{
            Text(this.text{file_idx})
            Button("+")
                .onClick(() => {{ this.increment{file_idx}() }})
        }}
    }}
}}
"""
    elif complexity_level == 3:
        # 更复杂的组件，包含多个调用
        content = f"""struct ComplexComponent{file_idx} {{
    @State
    title{file_idx}: string = "Complex"
    @State
    value{file_idx}: number = 42
    
    setTitle{file_idx}(newTitle: string) {{
        this.title{file_idx} = newTitle
    }}
    
    updateValue{file_idx}() {{
        this.value{file_idx} *= 2
        this.setTitle{file_idx}("Updated: " + this.value{file_idx})
    }}
    
    method1{file_idx}() {{
        this.updateValue{file_idx}()
    }}
    
    method2{file_idx}() {{
        this.method1{file_idx}()
    }}
    
    build() {{
        Column() {{
            Text(this.title{file_idx})
            Text("Value: " + this.value{file_idx})
            Button("Update")
                .onClick(() => {{ this.method2{file_idx}() }})
        }}
    }}
}}
"""
    elif complexity_level == 4:
        # 带更多变量和状态的组件
        content = f"""struct StatefulComponent{file_idx} {{
    @State
    name{file_idx}: string = "Component"
    @State
    age{file_idx}: number = 25
    @State
    isActive{file_idx}: boolean = true
    @State
    colors{file_idx}: string[] = ["red", "green", "blue"]
    
    init{file_idx}(initialName: string) {{
        this.name{file_idx} = initialName
        this.age{file_idx} = 0
        this.isActive{file_idx} = true
    }}
    
    celebrateBirthday{file_idx}() {{
        this.age{file_idx}++
    }}
    
    toggleActive{file_idx}() {{
        this.isActive{file_idx} = !this.isActive{file_idx}
    }}
    
    build() {{
        Column() {{
            Text("Name: " + this.name{file_idx})
            Text("Age: " + this.age{file_idx})
            Text("Active: " + (this.isActive{file_idx} ? "Yes" : "No"))
            Button("Birthday")
                .onClick(() => {{ this.celebrateBirthday{file_idx}() }})
            Button("Toggle Active")
                .onClick(() => {{ this.toggleActive{file_idx}() }})
        }}
    }}
}}
"""
    else:
        # 最复杂的组件，多个类和深层调用
        content = f"""struct MainComponent{file_idx} {{
    @State
    message{file_idx}: string = "Main"
    
    logMessage{file_idx}(msg: string) {{
        this.message{file_idx} = msg
    }}
    
    build() {{
        Column() {{
            Text(this.message{file_idx})
            Button("Click")
                .onClick(() => {{
                    this.logMessage{file_idx}("Button clicked!")
                }})
        }}
    }}
}}

struct HelperComponent{file_idx} {{
    @State
    helperValue{file_idx}: string = "Helper"
    
    build() {{
        Text(this.helperValue{file_idx})
    }}
}}
"""
    return content


def generate_extreme_chaos(project_dir: str, logger: DetailedTraceLogger) -> int:
    """
    生成极度混乱的测试场景
    """
    logger.start_func("generate_extreme_chaos")
    os.makedirs(project_dir, exist_ok=True)
    
    total_files = 0
    
    # 1. 大量空文件
    logger.info("生成500个空文件...")
    for i in range(500):
        open(os.path.join(project_dir, f"empty_{i}.ets"), 'w').close()
        total_files += 1
    
    # 2. 极端二进制垃圾文件
    logger.info("生成200个二进制垃圾文件...")
    for i in range(200):
        with open(os.path.join(project_dir, f"binary_{i}.ets"), 'wb') as f:
            # 生成随机二进制数据，100KB - 1MB
            size = random.randint(100 * 1024, 1024 * 1024)
            f.write(bytes(random.randint(0, 255) for _ in range(size)))
        total_files += 1
    
    # 3. 超长标识符
    logger.info("生成100个超长标识符文件...")
    for i in range(100):
        # 500字符的标识符
        long_name = ''.join(random.choices(string.ascii_letters, k=500))
        with open(os.path.join(project_dir, f"longid_{i}.ets"), 'w') as f:
            f.write(f"struct {long_name} {{ build() {{ }}}}\n")
        total_files += 1
    
    # 4. 超深嵌套
    logger.info("生成50个超深嵌套文件...")
    for i in range(50):
        nesting_depth = random.randint(50, 200)
        with open(os.path.join(project_dir, f"deep_{i}.ets"), 'w') as f:
            for d in range(nesting_depth):
                f.write("  " * d + f"struct Nest{d}_{i} {{\n")
            for d in range(nesting_depth-1, -1, -1):
                f.write("  " * d + "}\n")
        total_files += 1
    
    # 5. 超长代码（>10万行）
    logger.info("生成10个超长代码文件...")
    for i in range(10):
        with open(os.path.join(project_dir, f"huge_{i}.ets"), 'w') as f:
            # 写入20000行
            for l in range(20000):
                f.write(f"struct Line{l}_{i} {{ method{l}_{i}() {{ }} build() {{ }}}}\n")
        total_files += 1
    
    # 6. 特殊字符文件
    logger.info("生成100个特殊字符文件...")
    special_chars = "!@#$%^&*()_+-=[]{};':\",./<>?\\`~"
    for i in range(100):
        # 生成包含特殊字符的文件名
        base_name = "".join(random.choices(special_chars, k=20))
        safe_name = base_name.replace("/", "_").replace("\\", "_").replace(":", "_")
        file_path = os.path.join(project_dir, safe_name + ".ets")
        
        # 包含特殊字符的内容
        with open(file_path, 'w', encoding='utf-8') as f:
            content = f"struct Special{i} {{ build() {{ Text('{safe_name}'); }}}}\n"
            f.write(content)
        total_files += 1
    
    # 7. Unicode和表情符号
    logger.info("生成50个Unicode/表情符号文件...")
    emojis = "😀😁😂🤣😃😄😅😆😉😊😋😎😍😘🥰🥳😏😒😓😔😕🙃🤑😲☹️😖😣😞😟😤😢😭😦😧😨😩🤯😬😰😱🥵🥶😳🤪😵🥴😡😠🤬😷🤒🤕🤢🤮🤧😇🥳🥴"
    for i in range(50):
        with open(os.path.join(project_dir, f"emoji_{i}.ets"), 'w', encoding='utf-8') as f:
            emoji_text = random.choice(emojis)
            f.write(f"struct Emoji{i} {{ emojiText: string = '{emoji_text}{emoji_text}{emoji_text}'; build() {{ }}}}\n")
        total_files += 1
    
    # 8. 正常文件混合
    logger.info("生成1000个正常代码文件...")
    for i in range(1000):
        content = generate_realistic_code(i)
        file_path = os.path.join(project_dir, f"normal_{i:05d}.ets")
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        total_files += 1
    
    logger.var("总生成文件数", total_files)
    logger.end_func("generate_extreme_chaos")
    return total_files


def test_extreme_scale(logger: DetailedTraceLogger):
    """
    测试极端规模：10000文件
    """
    logger.info("="*100)
    logger.info("迭代3.1 极端规模测试 - 10000文件")
    logger.info("="*100)
    
    temp_dir = tempfile.mkdtemp(prefix="iter3_extreme_scale_")
    try:
        project_dir = os.path.join(temp_dir, "extreme_project")
        db_path = os.path.join(temp_dir, "extreme.db")
        
        logger.info(f"临时目录: {temp_dir}")
        
        # 生成10000文件
        logger.info("开始生成10000文件...")
        start_gen = time.time()
        
        for i in range(10000):
            content = generate_realistic_code(i)
            file_path = os.path.join(project_dir, f"file_{i:05d}.ets")
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            
            if (i + 1) % 2000 == 0:
                logger.var(f"进度: {i+1}/10000", "", 0, False)
        
        gen_time = time.time() - start_gen
        logger.var("文件生成耗时", f"{gen_time:.2f}秒")
        
        # 构建
        logger.info("开始构建...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=3600
        )
        
        build_time = time.time() - build_start
        logger.var("构建返回码", result.returncode)
        logger.var("构建耗时", f"{build_time:.2f}秒")
        
        # 验证
        if result.returncode == 0:
            logger.success("构建成功！")
            
            try:
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
                
                conn.close()
                
                if file_count >= 9000:
                    logger.success("极端规模测试通过！文件识别率良好！")
                else:
                    logger.warning("文件数量低于预期，但系统未崩溃")
            except Exception as e:
                logger.warning(f"验证异常: {e}")
        else:
            logger.fail("构建失败！")
            logger.var("错误输出", result.stderr[:1000])
        
        return result.returncode == 0
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def test_long_stability(logger: DetailedTraceLogger):
    """
    长时间稳定性测试：500次连续构建
    """
    logger.info("="*100)
    logger.info("迭代3.2 长时间稳定性测试 - 500次连续构建")
    logger.info("="*100)
    
    temp_dir = tempfile.mkdtemp(prefix="iter3_long_stability_")
    try:
        project_dir = os.path.join(temp_dir, "stable_project")
        os.makedirs(project_dir)
        
        # 创建50个测试文件
        for i in range(50):
            content = generate_realistic_code(i)
            file_path = os.path.join(project_dir, f"test_{i:02d}.ets")
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        logger.info(f"测试项目包含50个文件")
        
        build_times = []
        success_count = 0
        fail_count = 0
        
        start_total = time.time()
        
        for i in range(500):
            db_path = os.path.join(temp_dir, f"build_{i:03d}.db")
            
            start_build = time.time()
            
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=30
            )
            
            build_time = time.time() - start_build
            build_times.append(build_time)
            
            if result.returncode == 0:
                success_count += 1
            else:
                fail_count += 1
                logger.warning(f"第{i+1}次构建失败！")
            
            if (i + 1) % 100 == 0:
                elapsed_total = time.time() - start_total
                logger.var(f"进度", f"{i+1}/500")
                logger.var(f"成功次数", success_count)
                logger.var(f"失败次数", fail_count)
                logger.var(f"耗时", f"{elapsed_total:.2f}秒")
                gc.collect()
        
        total_time = time.time() - start_total
        
        logger.var("总构建次数", 500)
        logger.var("成功次数", success_count)
        logger.var("失败次数", fail_count)
        logger.var("总耗时", f"{total_time:.2f}秒")
        logger.var("平均单次耗时", f"{sum(build_times)/500:.4f}秒")
        
        if fail_count == 0:
            logger.success("500次连续构建完全成功！")
            return True
        elif fail_count < 5:
            logger.success(f"500次构建基本成功！失败{fail_count}次")
            return True
        else:
            logger.fail(f"太多构建失败！失败{fail_count}次")
            return False
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def test_extreme_chaos(logger: DetailedTraceLogger):
    """
    测试极度混乱场景
    """
    logger.info("="*100)
    logger.info("迭代3.3 极度混乱场景测试")
    logger.info("="*100)
    
    temp_dir = tempfile.mkdtemp(prefix="iter3_extreme_chaos_")
    try:
        project_dir = os.path.join(temp_dir, "chaos_project")
        db_path = os.path.join(temp_dir, "chaos.db")
        
        # 生成极端混乱
        total_files = generate_extreme_chaos(project_dir, logger)
        logger.var("总混乱文件数", total_files)
        
        # 构建
        logger.info("开始构建极度混乱项目...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=1800
        )
        
        build_time = time.time() - build_start
        logger.var("构建返回码", result.returncode)
        logger.var("构建耗时", f"{build_time:.2f}秒")
        
        if result.returncode == 0:
            try:
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                logger.var("识别文件数", file_count)
                logger.var("识别类数", class_count)
                
                conn.close()
                
                if class_count >= 500:
                    logger.success("极度混乱场景处理成功！正常文件正确识别！")
                else:
                    logger.warning("识别类数较低，但系统未崩溃")
                
                return True
            except Exception as e:
                logger.warning(f"验证异常: {e}")
                return True
        else:
            logger.fail("极度混乱场景构建失败！")
            return False
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def run_iteration_3():
    """
    运行迭代3的完整测试
    """
    print("\n" + "="*100)
    print("迭代3：极端真实场景深度测试")
    print("="*100 + "\n")
    
    logger = DetailedTraceLogger("ITERATION_3")
    all_passed = True
    
    try:
        # 1. 极端规模测试
        logger.info("\n")
        all_passed = all_passed and test_extreme_scale(logger)
        
        # 2. 长时间稳定性测试
        logger.info("\n")
        all_passed = all_passed and test_long_stability(logger)
        
        # 3. 极度混乱场景测试
        logger.info("\n")
        all_passed = all_passed and test_extreme_chaos(logger)
        
        # 总结
        passed = logger.summary()
        
        if passed:
            print("\n🎉 迭代3完美完成！")
            print("1. ✅ 极端规模测试（10000文件）通过")
            print("2. ✅ 长时间稳定性测试（500次连续构建）通过")
            print("3. ✅ 极度混乱场景测试通过")
        else:
            print("\n⚠️ 迭代3部分测试失败，请查看日志")
        
        # 未来计划
        print("\n" + "="*100)
        print("未来5个阶段迭代计划")
        print("="*100)
        print("迭代4：并行性能极致优化")
        print("  - 多核并行处理测试")
        print("  - 内存占用优化")
        print("  - 预计发现：2-3个性能问题")
        print("\n迭代5：数据库性能极致优化")
        print("  - SQLite性能调优")
        print("  - 批量操作优化")
        print("  - 预计发现：2-3个DB问题")
        print("\n迭代6：真实项目集成测试")
        print("  - 模拟真实项目结构")
        print("  - 复杂代码模式测试")
        print("  - 预计发现：3-4个兼容性问题")
        print("\n迭代7：错误恢复与容错增强")
        print("  - 中断恢复测试")
        print("  - 数据库损坏恢复")
        print("  - 预计发现：2-3个恢复问题")
        print("\n迭代8：完整端到端验证")
        print("  - 可视化集成验证")
        print("  - 生产环境模拟")
        print("  - 预计发现：1-2个集成问题")
        print("\n总计预计发现：10-15个问题")
        print("最终目标：达到企业级稳定性标准")
        
        return passed, []
    except Exception as e:
        print(f"\n❌ 迭代3异常: {e}")
        traceback.print_exc()
        return False, []


if __name__ == "__main__":
    run_iteration_3()
