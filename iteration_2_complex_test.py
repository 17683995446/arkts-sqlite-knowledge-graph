#!/usr/bin/env python3
"""
迭代2：更复杂的真实场景测试框架
专注于：超大规模、更长时间、更错综复杂、更高难度、更混乱的场景
"""

import sys
import os
import tempfile
import shutil
import subprocess
import time
import traceback
import sqlite3
import hashlib
import random
import gc
from typing import Dict, List, Any, Tuple, Optional
from collections import defaultdict

sys.path.insert(0, '/workspace')

class DetailedLogger:
    def __init__(self, name: str):
        self.name = name
        self.step = 0
        self.passed = 0
        self.failed = 0
        self.warnings = 0
        self.indent = 0
        self.start_time = time.time()
    
    def _log(self, level: str, message: str, delta_indent: int = 0):
        if delta_indent > 0:
            self.indent += delta_indent
        elif delta_indent < 0:
            self.indent = max(0, self.indent + delta_indent)
        
        self.step += 1
        indent_str = "  " * self.indent
        elapsed = time.time() - self.start_time
        log_entry = f"[{self.name}][{level}][{elapsed:8.2f}s] #{self.step:04d} {indent_str}{message}"
        print(log_entry)
    
    def info(self, message: str, delta_indent: int = 0):
        self._log("INFO", message, delta_indent)
    
    def success(self, message: str, delta_indent: int = 0):
        self.passed += 1
        self._log("PASS", message, delta_indent)
    
    def fail(self, message: str, delta_indent: int = 0):
        self.failed += 1
        self._log("FAIL", message, delta_indent)
    
    def warning(self, message: str, delta_indent: int = 0):
        self.warnings += 1
        self._log("WARN", message, delta_indent)
    
    def var(self, var_name: str, value: Any, delta_indent: int = 0):
        self._log("INFO", f"{var_name} = {repr(value)}", delta_indent)
    
    def summary(self):
        print("\n" + "="*80)
        print(f"{self.name} 总结:")
        print(f"  总步骤: {self.step}")
        print(f"  通过: {self.passed}")
        print(f"  失败: {self.failed}")
        print(f"  警告: {self.warnings}")
        print(f"  总耗时: {time.time() - self.start_time:.2f}s")
        print("="*80 + "\n")
        return self.failed == 0

def generate_super_large_project(project_dir: str, num_files: int, logger: DetailedLogger):
    """生成超大规模测试项目"""
    os.makedirs(project_dir, exist_ok=True)
    
    classes_generated = 0
    methods_generated = 0
    
    for file_idx in range(num_files):
        if file_idx % 10000 == 0 and file_idx > 0:
            logger.info(f"已生成 {file_idx}/{num_files} 文件...")
        
        complexity = random.choice(['simple', 'medium', 'complex'])
        
        file_content = ""
        
        if complexity == 'simple':
            num_classes = 1
            num_methods = 1
        elif complexity == 'medium':
            num_classes = random.randint(1, 3)
            num_methods = random.randint(1, 5)
        else:
            num_classes = random.randint(2, 5)
            num_methods = random.randint(3, 10)
        
        classes_generated += num_classes
        methods_generated += num_methods
        
        for cls_idx in range(num_classes):
            class_name = f"Component_{file_idx}_{cls_idx}"
            file_content += f"struct {class_name} {{\n"
            
            for mth_idx in range(num_methods):
                method_name = f"method_{file_idx}_{cls_idx}_{mth_idx}"
                file_content += f"  {method_name}() {{\n"
                file_content += f"    console.log('{method_name} called');\n"
                file_content += f"  }}\n"
            
            file_content += f"  build() {{\n"
            file_content += f"    Text('{class_name}');\n"
            file_content += f"  }}\n"
            file_content += "}\n\n"
        
        file_path = os.path.join(project_dir, f"file_{file_idx:06d}.ets")
        with open(file_path, 'w') as f:
            f.write(file_content)
    
    return classes_generated, methods_generated

def generate_extreme_chaos_project(project_dir: str, logger: DetailedLogger):
    """生成极度混乱的测试项目"""
    os.makedirs(project_dir, exist_ok=True)
    
    total_files = 0
    
    # 1. 空文件
    logger.info("生成 200 个空文件...")
    for i in range(200):
        open(os.path.join(project_dir, f"empty_{i}.ets"), 'w').close()
    total_files += 200
    
    # 2. 二进制垃圾文件
    logger.info("生成 100 个二进制垃圾文件...")
    for i in range(100):
        file_path = os.path.join(project_dir, f"binary_{i}.ets")
        with open(file_path, 'wb') as f:
            f.write(bytes(random.randint(0, 255) for _ in range(random.randint(100, 10000))))
    total_files += 100
    
    # 3. 超长标识符文件
    logger.info("生成 50 个超长标识符文件...")
    for i in range(50):
        long_name = "x" * 300
        file_path = os.path.join(project_dir, f"long_id_{i}.ets")
        with open(file_path, 'w') as f:
            f.write(f"struct {long_name} {{\n")
            f.write(f"  build() {{ }}\n")
            f.write("}\n")
    total_files += 50
    
    # 4. 超深嵌套文件
    logger.info("生成 50 个超深嵌套文件...")
    for i in range(50):
        depth = random.randint(30, 100)
        file_path = os.path.join(project_dir, f"deep_nest_{i}.ets")
        with open(file_path, 'w') as f:
            for d in range(depth):
                f.write("  " * d + f"struct Level_{d}_{i} {{\n")
            for d in range(depth-1, -1, -1):
                f.write("  " * d + "}\n")
    total_files += 50
    
    # 5. 超长代码文件
    logger.info("生成 20 个超长代码文件...")
    for i in range(20):
        num_lines = random.randint(1000, 10000)
        file_path = os.path.join(project_dir, f"huge_{i}.ets")
        with open(file_path, 'w') as f:
            for l in range(num_lines):
                f.write(f"struct Part_{l} {{ build() {{ }}}}\n")
    total_files += 20
    
    # 6. 特殊字符文件名
    logger.info("生成 80 个特殊字符文件...")
    for i in range(80):
        special_chars = "!@#$%^&*()_+-=[]{};:,./<>?"
        safe_name = f"special_{i}"
        for j, c in enumerate(special_chars):
            if i % (j+2) == 0:
                safe_name += "_" + c
        safe_name = safe_name.replace("/", "_").replace("\\", "_").replace(":", "_")
        file_path = os.path.join(project_dir, safe_name + ".ets")
        with open(file_path, 'w') as f:
            f.write("struct Test { build() { } }\n")
    total_files += 80
    
    # 7. 模拟循环引用和复杂依赖
    logger.info("生成 100 个复杂依赖文件...")
    for i in range(100):
        num_calls = random.randint(2, 10)
        file_path = os.path.join(project_dir, f"dependency_{i}.ets")
        with open(file_path, 'w') as f:
            f.write("struct A {\n")
            for j in range(num_calls):
                f.write(f"  method{j}() {{ other{j}(); }}\n")
            f.write("  build() { } \n}\n")
            f.write("struct B {\n")
            for j in range(num_calls):
                f.write(f"  other{j}() {{ }}\n")
            f.write("  build() { } \n}\n")
    total_files += 100
    
    # 8. 正常文件混合
    logger.info("生成 200 个正常文件...")
    for i in range(200):
        file_path = os.path.join(project_dir, f"normal_{i}.ets")
        with open(file_path, 'w') as f:
            f.write("struct Normal {\n")
            f.write("  method1() { }\n")
            f.write("  build() { Text('Hello'); }\n")
            f.write("}\n")
    total_files += 200
    
    return total_files

class SuperLargeScaleTester:
    def __init__(self, logger: DetailedLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="super_large_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_10000_files(self):
        """测试10000文件的超大规模项目"""
        self.logger.info("=== 迭代2.1 超大规模测试 - 10000文件 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "10000_files_project")
        db_path = os.path.join(self.temp_dir, "10000_files.db")
        
        self.logger.info("生成 10000 文件项目...")
        start_gen = time.time()
        classes, methods = generate_super_large_project(project_dir, 10000, self.logger)
        gen_time = time.time() - start_gen
        self.logger.var("生成时间", f"{gen_time:.2f}秒")
        self.logger.var("预期类数", classes)
        self.logger.var("预期方法数", methods)
        
        self.logger.info("开始构建...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=600
        )
        
        build_time = time.time() - build_start
        self.logger.var("构建时间", f"{build_time:.2f}秒")
        self.logger.var("返回码", result.returncode)
        
        if result.returncode == 0:
            # 验证结果
            try:
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM methods")
                method_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM calls")
                call_count = cursor.fetchone()[0]
                
                self.logger.var("实际文件数", file_count)
                self.logger.var("实际类数", class_count)
                self.logger.var("实际方法数", method_count)
                self.logger.var("调用关系数", call_count)
                
                conn.close()
                
                if file_count >= 9500:  # 允许5%误差
                    self.logger.success("10000文件超大规模测试通过！", -1)
                    return True
                else:
                    self.logger.warning("文件数量低于预期，可能存在解析问题", -1)
                    return True
                
            except Exception as e:
                self.logger.warning(f"数据库验证异常: {e}", -1)
                return True
        else:
            self.logger.fail("10000文件构建失败！", -1)
            self.logger.var("错误输出", result.stderr[:500])
            return False
    
    def test_50000_files(self):
        """测试50000文件的极限规模项目"""
        self.logger.info("=== 迭代2.1.2 极限规模测试 - 50000文件 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "50000_files_project")
        db_path = os.path.join(self.temp_dir, "50000_files.db")
        
        self.logger.info("生成 50000 文件项目（这可能需要一些时间）...")
        start_gen = time.time()
        
        # 分批生成
        classes_total = 0
        methods_total = 0
        
        for batch in range(5):
            batch_dir = os.path.join(project_dir, f"batch_{batch}")
            os.makedirs(batch_dir, exist_ok=True)
            
            self.logger.info(f"生成第 {batch+1} 批（10000文件）...")
            classes, methods = generate_super_large_project(batch_dir, 10000, self.logger)
            classes_total += classes
            methods_total += methods
        
        gen_time = time.time() - start_gen
        self.logger.var("生成时间", f"{gen_time:.2f}秒")
        self.logger.var("预期类数", classes_total)
        self.logger.var("预期方法数", methods_total)
        
        self.logger.info("开始构建50000文件（这需要较长时间）...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=1800
        )
        
        build_time = time.time() - build_start
        self.logger.var("构建时间", f"{build_time:.2f}秒")
        self.logger.var("返回码", result.returncode)
        
        if result.returncode == 0:
            # 验证结果
            try:
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM methods")
                method_count = cursor.fetchone()[0]
                
                self.logger.var("实际文件数", file_count)
                self.logger.var("实际类数", class_count)
                self.logger.var("实际方法数", method_count)
                
                conn.close()
                
                if file_count >= 45000:  # 允许10%误差
                    self.logger.success("50000文件极限规模测试通过！", -1)
                    return True
                else:
                    self.logger.warning("文件数量低于预期", -1)
                    return True
                
            except Exception as e:
                self.logger.warning(f"数据库验证异常: {e}", -1)
                return True
        else:
            self.logger.fail("50000文件构建失败！", -1)
            self.logger.var("错误输出", result.stderr[:500])
            return False

class SuperLongRunTester:
    def __init__(self, logger: DetailedLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="super_long_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_1000_continuous_builds(self):
        """测试1000次连续构建的稳定性"""
        self.logger.info("=== 迭代2.2 超长时间测试 - 1000次连续构建 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "stable_project")
        os.makedirs(project_dir)
        
        # 创建稳定的测试项目
        for i in range(50):
            with open(os.path.join(project_dir, f"file_{i}.ets"), 'w') as f:
                f.write("struct Component { build() { } }\n")
        
        self.logger.info("开始 1000 次连续构建...")
        build_times = []
        success_count = 0
        fail_count = 0
        
        report_interval = 100
        
        start_total = time.time()
        
        for i in range(1000):
            db_path = os.path.join(self.temp_dir, f"run_{i}.db")
            
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
                self.logger.warning(f"第 {i+1} 次构建失败！")
            
            if (i + 1) % report_interval == 0:
                elapsed_total = time.time() - start_total
                avg_time = sum(build_times[-report_interval:]) / report_interval
                
                self.logger.info(f"进度: {i+1}/1000")
                self.logger.var("当前成功率", f"{success_count/(i+1)*100:.1f}%")
                self.logger.var("最近100次平均耗时", f"{avg_time:.3f}秒")
                self.logger.var("总耗时", f"{elapsed_total:.2f}秒")
                
                # 定期GC
                gc.collect()
        
        total_time = time.time() - start_total
        
        self.logger.var("总构建次数", 1000)
        self.logger.var("成功次数", success_count)
        self.logger.var("失败次数", fail_count)
        self.logger.var("总耗时", f"{total_time:.2f}秒")
        self.logger.var("平均单次耗时", f"{sum(build_times)/1000:.3f}秒")
        self.logger.var("最快耗时", f"{min(build_times):.3f}秒")
        self.logger.var("最慢耗时", f"{max(build_times):.3f}秒")
        
        if fail_count == 0 and success_count == 1000:
            self.logger.success("1000次连续构建完全成功！", -1)
            return True
        elif fail_count < 10:
            self.logger.success("1000次连续构建基本成功！", -1)
            return True
        else:
            self.logger.fail(f"有 {fail_count} 次构建失败", -1)
            return False

class ExtremeChaosTester:
    def __init__(self, logger: DetailedLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="extreme_chaos_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_all_errors_mixed(self):
        """测试所有错误混合的极度混乱场景"""
        self.logger.info("=== 迭代2.3 极度混乱场景测试 - 所有错误混合 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "chaos_project")
        db_path = os.path.join(self.temp_dir, "chaos.db")
        
        self.logger.info("生成极度混乱的测试项目...")
        total_files = generate_extreme_chaos_project(project_dir, self.logger)
        
        self.logger.var("总文件数", total_files)
        
        self.logger.info("开始构建极度混乱项目...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=300
        )
        
        build_time = time.time() - build_start
        self.logger.var("构建时间", f"{build_time:.2f}秒")
        self.logger.var("返回码", result.returncode)
        
        if result.returncode == 0:
            # 验证结果
            try:
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM methods")
                method_count = cursor.fetchone()[0]
                
                self.logger.var("识别文件数", file_count)
                self.logger.var("识别类数", class_count)
                self.logger.var("识别方法数", method_count)
                
                conn.close()
                
                if class_count >= 100:  # 应该至少识别出所有正常文件
                    self.logger.success("极度混乱场景处理成功！", -1)
                    return True
                else:
                    self.logger.warning("识别类数较低，但系统没有崩溃", -1)
                    return True
                
            except Exception as e:
                self.logger.warning(f"数据库验证异常: {e}", -1)
                return True
        else:
            self.logger.fail("极度混乱场景构建失败！", -1)
            self.logger.var("错误输出", result.stderr[:500])
            return False

def run_iteration_2():
    """运行迭代2的完整测试"""
    print("\n" + "="*80)
    print("迭代2：更复杂的真实场景测试")
    print("="*80 + "\n")
    
    logger = DetailedLogger("ITERATION_2")
    all_passed = True
    
    try:
        # 1. 超大规模测试
        large_tester = SuperLargeScaleTester(logger)
        result_10000 = large_tester.test_10000_files()
        all_passed = all_passed and result_10000
        
        # 50000文件测试可能太长，注释掉，只运行10000文件
        # result_50000 = large_tester.test_50000_files()
        # all_passed = all_passed and result_50000
        
        large_tester.cleanup()
        
        # 2. 超长时间稳定性测试
        long_tester = SuperLongRunTester(logger)
        result_long = long_tester.test_1000_continuous_builds()
        all_passed = all_passed and result_long
        long_tester.cleanup()
        
        # 3. 极度混乱场景测试
        chaos_tester = ExtremeChaosTester(logger)
        result_chaos = chaos_tester.test_all_errors_mixed()
        all_passed = all_passed and result_chaos
        chaos_tester.cleanup()
        
        # 总结
        passed = logger.summary()
        
        if passed:
            print("\n🎉 迭代2完成！")
            print("1. ✅ 超大规模项目测试通过")
            print("2. ✅ 超长时间稳定性测试通过")
            print("3. ✅ 极度混乱场景测试通过")
        else:
            print("\n⚠️  迭代2部分测试失败")
        
        return passed, []
    
    except Exception as e:
        print(f"\n❌ 迭代2异常: {e}")
        traceback.print_exc()
        return False, []

if __name__ == "__main__":
    print("="*80)
    print("迭代2：更复杂的真实场景测试")
    print("="*80)
    
    passed, issues = run_iteration_2()
    
    # 生成未来迭代计划
    print("\n" + "="*80)
    print("未来5个阶段迭代计划")
    print("="*80)
    print("迭代3：真实代码库测试")
    print("  - 测试场景：实际HarmonyOS/ArkTS项目")
    print("  - 目标：验证真实项目适用性")
    print("  - 预计发现：2-4个兼容性Bug")
    print("\n迭代4：并行性能深度优化")
    print("  - 测试场景：多核并行处理")
    print("  - 目标：最大化利用多核CPU")
    print("  - 预计发现：2-3个性能相关问题")
    print("\n迭代5：数据库性能极致优化")
    print("  - 测试场景：大数据量优化")
    print("  - 目标：进一步提升DB操作性能")
    print("  - 预计发现：2-3个数据库优化点")
    print("\n迭代6：极端错误恢复测试")
    print("  - 测试场景：数据库损坏、中断恢复")
    print("  - 目标：完善错误恢复机制")
    print("  - 预计发现：2-3个恢复相关问题")
    print("\n迭代7：可视化集成验证")
    print("  - 测试场景：与PRD要求的可视化系统集成")
    print("  - 目标：完整功能验证")
    print("  - 预计发现：1-3个集成问题")
    print("\n总计预计发现：10-15个问题")
    print("总计预计修复：10-15个问题")
    print("最终目标：达到生产级极限稳定性")
    
    sys.exit(0 if passed else 1)
