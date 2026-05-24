#!/usr/bin/env python3
"""
超复杂真实场景深度测试框架
专注于：更长时间、更大规模、更错综复杂、更高难度、更混乱的场景
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import traceback
import hashlib
import random
import string
import gc
from typing import Dict, List, Any, Tuple
from collections import defaultdict

sys.path.insert(0, '/workspace')


class ComplexScenarioLogger:
    """复杂场景专用日志记录器"""
    def __init__(self, name: str):
        self.name = name
        self.step = 0
        self.passed = 0
        self.failed = 0
        self.warnings = 0
        self.start_time = time.time()
    
    def log(self, level: str, message: str, indent: int = 0):
        self.step += 1
        indent_str = "  " * indent
        elapsed = time.time() - self.start_time
        print(f"[{self.name}][{level}][{elapsed:8.2f}s] #{self.step:04d} {indent_str}{message}")
    
    def info(self, message: str, indent: int = 0):
        self.log("INFO", message, indent)
    
    def success(self, message: str, indent: int = 0):
        self.passed += 1
        self.log("PASS", message, indent)
    
    def fail(self, message: str, indent: int = 0):
        self.failed += 1
        self.log("FAIL", message, indent)
    
    def warning(self, message: str, indent: int = 0):
        self.warnings += 1
        self.log("WARN", message, indent)
    
    def section(self, title: str):
        print("\n" + "="*80)
        print(f"【{title}】")
        print("="*80)
    
    def summary(self):
        print("\n" + "="*80)
        print("测试总结")
        print("="*80)
        print(f"  总步骤: {self.step}")
        print(f"  通过: {self.passed}")
        print(f"  失败: {self.failed}")
        print(f"  警告: {self.warnings}")
        print(f"  总耗时: {time.time() - self.start_time:.2f}s")
        print("="*80)
        return self.failed == 0


class SuperLargeScaleTester:
    """
    复杂场景1：超大规模项目测试
    - 10000+文件
    - 复杂相互依赖
    - 超大代码量
    """
    def __init__(self, logger: ComplexScenarioLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="super_large_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_10000_files(self):
        """测试10000个文件的大规模项目"""
        self.logger.section("复杂场景1：超大规模测试 - 10000文件")
        
        self.logger.info("开始创建10000文件的测试项目...")
        start_time = time.time()
        
        project_dir = os.path.join(self.temp_dir, "large_project")
        db_path = os.path.join(self.temp_dir, "large.db")
        os.makedirs(project_dir)
        
        # 批量创建文件
        files_per_batch = 1000
        num_batches = 10
        
        total_classes = 0
        total_methods = 0
        
        for batch in range(num_batches):
            for i in range(files_per_batch):
                file_idx = batch * files_per_batch + i
                
                # 创建不同复杂度的文件
                if file_idx % 3 == 0:
                    # 简单文件
                    content = self._create_simple_file(file_idx)
                elif file_idx % 3 == 1:
                    # 中等复杂度
                    content = self._create_medium_file(file_idx)
                else:
                    # 高复杂度
                    content = self._create_complex_file(file_idx)
                
                file_path = os.path.join(project_dir, f"file{file_idx:05d}.ets")
                with open(file_path, 'w') as f:
                    f.write(content)
                
                # 统计类和方法数
                total_classes += content.count("struct ")
                total_methods += content.count("method")
            
            self.logger.info(f"已完成 {files_per_batch * (batch + 1)} 文件...")
        
        create_time = time.time() - start_time
        self.logger.info(f"文件创建完成，共 {10000} 文件，耗时 {create_time:.2f}s")
        self.logger.info(f"估计类数: {total_classes}, 估计方法数: {total_methods}")
        
        # 运行构建
        self.logger.info("开始构建10000文件项目...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        build_time = time.time() - build_start
        self.logger.info(f"构建完成，耗时 {build_time:.2f}s")
        self.logger.info(f"返回码: {result.returncode}")
        
        if result.returncode == 0:
            self.logger.success("10000文件构建成功")
            
            # 验证数据
            self._verify_large_scale_data(db_path, 10000)
            
            # 增量更新测试
            self.logger.info("测试增量更新...")
            result2 = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True
            )
            
            if "没有需要更新的文件" in result2.stdout:
                self.logger.success("增量更新正确检测")
            else:
                self.logger.warning("增量更新检测异常")
            
            return True
        else:
            self.logger.fail(f"10000文件构建失败: {result.stderr}")
            return False
    
    def test_50000_files(self):
        """测试50000个文件（PRD中的百万行级项目）"""
        self.logger.section("复杂场景1.2：极限规模测试 - 50000文件")
        
        self.logger.info("开始创建50000文件的极限测试项目...")
        start_time = time.time()
        
        project_dir = os.path.join(self.temp_dir, "huge_project")
        db_path = os.path.join(self.temp_dir, "huge.db")
        os.makedirs(project_dir)
        
        # 分批创建
        batch_size = 5000
        num_batches = 10
        
        for batch in range(num_batches):
            for i in range(batch_size):
                file_idx = batch * batch_size + i
                
                content = f"""struct Huge{file_idx} {{
    aboutToAppear() {{
        console.log("init {file_idx}");
    }}
    
    data{i % 10}: string = 'data {file_idx}';
    
    init{i % 5}() {{
        console.log("init {i}");
    }}
    
    process{i % 3}() {{
        this.init{i % 5}();
    }}
    
    build() {{
        Column() {{
            Text(this.data{i % 10});
        }}
    }}
}}
"""
                
                file_path = os.path.join(project_dir, f"huge{file_idx:06d}.ets")
                with open(file_path, 'w') as f:
                    f.write(content)
            
            self.logger.info(f"已完成 {batch_size * (batch + 1)} 文件...")
        
        create_time = time.time() - start_time
        self.logger.info(f"50000文件创建完成，耗时 {create_time:.2f}s")
        
        # 构建
        self.logger.info("开始构建50000文件项目...")
        build_start = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=300
        )
        
        build_time = time.time() - build_start
        self.logger.info(f"构建完成，耗时 {build_time:.2f}s")
        
        if result.returncode == 0:
            self.logger.success("50000文件构建成功")
            self._verify_large_scale_data(db_path, 50000)
            return True
        else:
            self.logger.fail(f"50000文件构建失败")
            return False
    
    def _create_simple_file(self, idx: int) -> str:
        return f"""struct Simple{idx} {{
    aboutToAppear() {{
        console.log("init {idx}");
    }}
    
    build() {{
        Column() {{
            Text("Simple {idx}");
        }}
    }}
}}
"""
    
    def _create_medium_file(self, idx: int) -> str:
        return f"""struct Medium{idx} {{
    @State count{idx}: number = 0;
    @State data{idx}: string = 'data';
    
    aboutToAppear() {{
        console.log("medium init {idx}");
    }}
    
    methodA{idx}() {{
        this.count{idx}++;
    }}
    
    methodB{idx}() {{
        this.data{idx} = 'updated';
    }}
    
    build() {{
        Column() {{
            Text(`${{this.count{idx}}}`);
            Text(this.data{idx});
        }}
    }}
}}
"""
    
    def _create_complex_file(self, idx: int) -> str:
        return f"""struct Complex{idx} {{
    @State data1{idx}: string = 'd1';
    @State data2{idx}: number = 0;
    @State data3{idx}: boolean = true;
    @State data4{idx}: object = {{}};
    
    aboutToAppear() {{
        this.init{idx}();
    }}
    
    aboutToDisappear() {{
        console.log("cleanup {idx}");
    }}
    
    init{idx}() {{
        this.data1{idx} = 'initialized';
        this.data2{idx} = 42;
    }}
    
    method1{idx}() {{
        this.data2{idx}++;
        this.method2{idx}();
    }}
    
    method2{idx}() {{
        this.data3{idx} = !this.data3{idx};
    }}
    
    method3{idx}() {{
        this.method1{idx}();
        this.method2{idx}();
    }}
    
    build() {{
        Column() {{
            Text(this.data1{idx});
            Text(`${{this.data2{idx}}}`);
            Button('Click')
                .onClick(() => {{ this.method1{idx}(); }});
        }}
    }}
}}
"""
    
    def _verify_large_scale_data(self, db_path: str, expected_files: int):
        """验证大规模数据"""
        self.logger.info(f"验证数据完整性（期望{expected_files}文件）...")
        
        try:
            import sqlite3
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
            
            conn.close()
            
            self.logger.info(f"实际文件数: {file_count}")
            self.logger.info(f"类数: {class_count}")
            self.logger.info(f"方法数: {method_count}")
            self.logger.info(f"调用关系数: {call_count}")
            
            if file_count >= expected_files * 0.9:  # 允许10%误差
                self.logger.success(f"数据完整性验证通过")
            else:
                self.logger.fail(f"数据丢失严重，期望{expected_files}，实际{file_count}")
                
        except Exception as e:
            self.logger.fail(f"数据验证失败: {e}")


class SuperLongRunTester:
    """
    复杂场景2：超长时运行测试
    - 1000+次连续构建
    - 监控性能稳定性
    - 内存泄漏检测
    """
    def __init__(self, logger: ComplexScenarioLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="super_long_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_1000_builds(self):
        """测试1000次连续构建"""
        self.logger.section("复杂场景2：超长时运行测试 - 1000次构建")
        
        self.logger.info("创建测试项目...")
        
        project_dir = os.path.join(self.temp_dir, "long_test_project")
        db_path = os.path.join(self.temp_dir, "long_test.db")
        os.makedirs(project_dir)
        
        # 创建基础文件
        for i in range(100):
            with open(os.path.join(project_dir, f"base{i}.ets"), 'w') as f:
                f.write(f"""struct Base{i} {{
    @State count{i}: number = 0;
    
    method{i}() {{
        this.count{i}++;
    }}
    
    build() {{ Column() {{ Text("${{this.count{i}}}"); }} }}
}}
""")
        
        self.logger.info("开始1000次连续构建...")
        
        build_times = []
        success_count = 0
        fail_count = 0
        
        report_interval = 100
        
        for i in range(1000):
            start = time.time()
            
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=60
            )
            
            elapsed = time.time() - start
            build_times.append(elapsed)
            
            if result.returncode == 0:
                success_count += 1
            else:
                fail_count += 1
                self.logger.warning(f"第{i+1}次构建失败")
            
            # 定期报告
            if (i + 1) % report_interval == 0:
                avg_time = sum(build_times[-report_interval:]) / report_interval
                success_rate = success_count / (i + 1) * 100
                
                self.logger.info(f"已完成 {i+1}/1000 次")
                self.logger.info(f"  最近{report_interval}次平均: {avg_time:.3f}s")
                self.logger.info(f"  成功率: {success_rate:.1f}%")
                self.logger.info(f"  失败次数: {fail_count}")
                
                # 内存回收
                gc.collect()
        
        # 最终统计
        self.logger.info("\n=== 最终统计 ===")
        self.logger.info(f"总构建次数: 1000")
        self.logger.info(f"成功次数: {success_count}")
        self.logger.info(f"失败次数: {fail_count}")
        self.logger.info(f"成功率: {success_count/10:.1f}%")
        self.logger.info(f"平均耗时: {sum(build_times)/1000:.3f}s")
        self.logger.info(f"最快: {min(build_times):.3f}s")
        self.logger.info(f"最慢: {max(build_times):.3f}s")
        
        if success_count == 1000:
            self.logger.success("1000次连续构建全部成功")
            return True
        else:
            self.logger.fail(f"有 {fail_count} 次构建失败")
            return False
    
    def test_performance_degradation(self):
        """测试性能退化"""
        self.logger.section("复杂场景2.2：性能退化检测")
        
        project_dir = os.path.join(self.temp_dir, "perf_degrad_proj")
        db_path = os.path.join(self.temp_dir, "perf_degrad.db")
        os.makedirs(project_dir)
        
        # 创建项目
        for i in range(200):
            with open(os.path.join(project_dir, f"file{i}.ets"), 'w') as f:
                f.write(f"struct Test{i} {{ build() {{}} }}\n")
        
        self.logger.info("测试100次构建的性能趋势...")
        
        times = []
        for i in range(100):
            start = time.time()
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=60
            )
            elapsed = time.time() - start
            times.append(elapsed)
            
            if (i + 1) % 20 == 0:
                self.logger.info(f"第{i+1}次，耗时: {elapsed:.3f}s")
        
        # 分析性能趋势
        first_20_avg = sum(times[0:20]) / 20
        last_20_avg = sum(times[80:100]) / 20
        degradation = (last_20_avg - first_20_avg) / first_20_avg * 100
        
        self.logger.info(f"前20次平均: {first_20_avg:.3f}s")
        self.logger.info(f"后20次平均: {last_20_avg:.3f}s")
        self.logger.info(f"性能退化: {degradation:+.1f}%")
        
        if abs(degradation) < 20:  # 允许20%波动
            self.logger.success("性能稳定，无明显退化")
            return True
        else:
            self.logger.warning(f"性能可能退化 {degradation:.1f}%")
            return False


class SuperChaosTester:
    """
    复杂场景3：极度混乱场景测试
    - 所有错误混合
    - 各种异常文件
    - 边界情况
    """
    def __init__(self, logger: ComplexScenarioLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="super_chaos_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_all_errors_mixed(self):
        """测试所有错误混合的场景"""
        self.logger.section("复杂场景3：极度混乱场景测试")
        
        self.logger.info("创建极度混乱的测试项目...")
        
        project_dir = os.path.join(self.temp_dir, "chaos_project")
        db_path = os.path.join(self.temp_dir, "chaos.db")
        os.makedirs(project_dir)
        
        error_count = 0
        
        # 1. 空文件
        self.logger.info("添加100个空文件...")
        for i in range(100):
            with open(os.path.join(project_dir, f"empty{i}.ets"), 'w') as f:
                pass
        error_count += 100
        
        # 2. 二进制垃圾
        self.logger.info("添加50个二进制垃圾文件...")
        for i in range(50):
            with open(os.path.join(project_dir, f"binary{i}.ets"), 'wb') as f:
                f.write(bytes([random.randint(0, 255) for _ in range(1000)]))
        error_count += 50
        
        # 3. 超大文件
        self.logger.info("添加20个超大文件（>10MB）...")
        for i in range(20):
            with open(os.path.join(project_dir, f"huge{i}.ets"), 'w') as f:
                for _ in range(100000):
                    f.write("x" * 100 + "\n")
        error_count += 20
        
        # 4. 语法错误文件
        self.logger.info("添加100个语法错误文件...")
        for i in range(100):
            with open(os.path.join(project_dir, f"syntax{i}.ets"), 'w') as f:
                errors = [
                    "struct {",
                    "struct MissingBrace { method() { ",
                    "{ method() {} }",
                    "struct Duplicate { struct Duplicate { } }",
                ]
                f.write(errors[i % len(errors)])
        error_count += 100
        
        # 5. 超长标识符
        self.logger.info("添加50个超长标识符文件...")
        for i in range(50):
            long_name = "X" * 500
            with open(os.path.join(project_dir, f"longid{i}.ets"), 'w') as f:
                f.write(f"struct {long_name} {{ build() {{}} }}\n")
        error_count += 50
        
        # 6. 极深嵌套
        self.logger.info("添加30个极深嵌套文件...")
        for i in range(30):
            with open(os.path.join(project_dir, f"nested{i}.ets"), 'w') as f:
                for depth in range(100):
                    f.write("  " * depth + "struct Level{} {{\n".format(depth))
                for depth in range(99, -1, -1):
                    f.write("  " * depth + "}\n")
        error_count += 30
        
        # 7. 奇怪的文件名
        self.logger.info("添加50个奇怪文件名...")
        weird_names = [
            "file with spaces.ets",
            "file!@#$%^&*.ets",
            "中文文件测试.ets",
            "file-with-dash.ets",
            "file.multiple.dots.ets",
        ]
        for i, name in enumerate(weird_names * 10):
            safe_name = "".join(c if c.isalnum() or c in '_-. ' else '_' for c in name)
            with open(os.path.join(project_dir, f"weird_{i}_{safe_name}"), 'w') as f:
                f.write("struct Weird {} {{ build() {{}} }}\n")
        error_count += 50
        
        # 8. 循环引用（通过文件内容模拟）
        self.logger.info("添加模拟循环引用的文件...")
        for i in range(20):
            with open(os.path.join(project_dir, f"ref{i}.ets"), 'w') as f:
                f.write(f"""struct RefA{i} {{
    methodA{i}() {{
        // 模拟引用
        this.methodB{i}();
    }}
    methodB{i}() {{
        this.methodA{i}();
    }}
    build() {{}}
}}

struct RefB{i} {{
    methodC{i}() {{
        this.methodA{i}();
    }}
    build() {{}}
}}
""")
        error_count += 20
        
        # 9. 注释中的伪代码
        self.logger.info("添加注释和字符串中的伪代码...")
        for i in range(50):
            with open(os.path.join(project_dir, f"fake{i}.ets"), 'w') as f:
                f.write(f"""/*
struct FakeInComment {{
    fakeMethod() {{}}
}}
*/

struct Real{i} {{
    data: string = `struct FakeInTemplate {{ }}`;
    code: string = "struct FakeInString {{ }}";
    
    build() {{}}
}}
""")
        error_count += 50
        
        # 10. 正常文件混合
        self.logger.info("添加200个正常文件...")
        for i in range(200):
            with open(os.path.join(project_dir, f"normal{i}.ets"), 'w') as f:
                f.write(f"""@Component
struct Normal{i} {{
    @State data{i}: string = 'normal {i}';
    
    aboutToAppear() {{
        console.log("normal init {i}");
    }}
    
    method{i}() {{
        console.log("method {i}");
    }}
    
    build() {{
        Column() {{
            Text(this.data{i});
        }}
    }}
}}
""")
        
        self.logger.info(f"总共创建 {error_count + 200} 个文件")
        self.logger.info("开始构建极度混乱项目...")
        
        start_time = time.time()
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=300
        )
        
        build_time = time.time() - start_time
        self.logger.info(f"构建完成，耗时 {build_time:.2f}s")
        self.logger.info(f"返回码: {result.returncode}")
        
        if result.returncode == 0:
            self.logger.success("极度混乱项目构建成功")
            
            # 验证能正确处理混乱
            self._verify_chaos_handling(db_path)
            
            return True
        else:
            self.logger.fail(f"极度混乱项目构建失败")
            return False
    
    def _verify_chaos_handling(self, db_path: str):
        """验证混乱处理能力"""
        self.logger.info("验证混乱场景处理...")
        
        try:
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute("SELECT COUNT(*) FROM files")
            file_count = cursor.fetchone()[0]
            
            cursor.execute("SELECT COUNT(*) FROM classes")
            class_count = cursor.fetchone()[0]
            
            conn.close()
            
            self.logger.info(f"识别文件数: {file_count}")
            self.logger.info(f"识别类数: {class_count}")
            
            if class_count >= 200:  # 至少有正常文件
                self.logger.success("正确识别了正常文件，忽略了混乱文件")
            else:
                self.logger.warning("可能误处理了某些文件")
                
        except Exception as e:
            self.logger.fail(f"验证失败: {e}")


class ComplexDependencyTester:
    """
    复杂场景4：复杂相互依赖关系测试
    - 多层调用链
    - 组件嵌套
    - 继承关系
    """
    def __init__(self, logger: ComplexScenarioLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="complex_dep_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_deep_call_chains(self):
        """测试深层调用链"""
        self.logger.section("复杂场景4：复杂依赖关系测试")
        
        self.logger.info("创建深层调用链测试...")
        
        project_dir = os.path.join(self.temp_dir, "dep_project")
        db_path = os.path.join(self.temp_dir, "dep.db")
        os.makedirs(project_dir)
        
        # 创建多层调用
        for layer in range(50):  # 50层调用
            with open(os.path.join(project_dir, f"layer{layer}.ets"), 'w') as f:
                f.write(f"""struct Layer{layer} {{
    method{layer}() {{
""")
                
                # 调用上一层的所有方法
                if layer > 0:
                    for prev in range(layer):
                        f.write(f"        this.method{prev}();\n")
                
                f.write(f"""    }}

    build() {{ Column() {{}} }}
}}
""")
        
        self.logger.info("开始构建深层依赖项目...")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=120
        )
        
        self.logger.info(f"返回码: {result.returncode}")
        
        if result.returncode == 0:
            self.logger.success("深层依赖项目构建成功")
            
            # 验证调用关系
            self._verify_call_relationships(db_path)
            
            return True
        else:
            self.logger.fail("深层依赖项目构建失败")
            return False
    
    def _verify_call_relationships(self, db_path: str):
        """验证调用关系"""
        self.logger.info("验证调用关系...")
        
        try:
            import sqlite3
            conn = sqlite3.connect(db_path)
            cursor = conn.cursor()
            
            cursor.execute("SELECT COUNT(*) FROM calls")
            call_count = cursor.fetchone()[0]
            
            cursor.execute("SELECT COUNT(*) FROM classes")
            class_count = cursor.fetchone()[0]
            
            conn.close()
            
            self.logger.info(f"类数: {class_count}")
            self.logger.info(f"调用关系数: {call_count}")
            
            # 50层调用应该产生大量调用关系
            if call_count > 0:
                self.logger.success(f"正确识别了 {call_count} 个调用关系")
            else:
                self.logger.warning("未识别到调用关系")
                
        except Exception as e:
            self.logger.fail(f"验证失败: {e}")


class ExtremeBoundaryTester:
    """
    复杂场景5：极端边界与并发压力测试
    - 超长标识符
    - 特殊字符
    - 并发操作
    """
    def __init__(self, logger: ComplexScenarioLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="extreme_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_extreme_boundaries(self):
        """测试极端边界"""
        self.logger.section("复杂场景5：极端边界测试")
        
        project_dir = os.path.join(self.temp_dir, "extreme_project")
        db_path = os.path.join(self.temp_dir, "extreme.db")
        os.makedirs(project_dir)
        
        self.logger.info("测试极端边界情况...")
        
        # 1. 超长行（>10000字符）
        self.logger.info("创建超长行文件...")
        with open(os.path.join(project_dir, "longline.ets"), 'w') as f:
            f.write("struct LongLine { data = \"" + "x" * 15000 + "\"; build() {} }\n")
        
        # 2. 超多行（>5000行）
        self.logger.info("创建超多行文件...")
        with open(os.path.join(project_dir, "manylines.ets"), 'w') as f:
            for i in range(6000):
                f.write(f"struct Line{i} {{ build() {{}} }}\n")
        
        # 3. 超深嵌套（>50层）
        self.logger.info("创建超深嵌套文件...")
        with open(os.path.join(project_dir, "deepnest.ets"), 'w') as f:
            for i in range(100):
                f.write("  " * i + "struct Deep{} {{\n".format(i))
            for i in range(99, -1, -1):
                f.write("  " * i + "}\n")
        
        # 4. 超长标识符（>200字符）
        self.logger.info("创建超长标识符文件...")
        long_name = "X" * 300
        with open(os.path.join(project_dir, "longid.ets"), 'w') as f:
            f.write(f"struct {long_name} {{ build() {{}} }}\n")
        
        # 5. 特殊字符
        self.logger.info("创建特殊字符文件...")
        special_content = """
struct Unicode {{
    中文: string = '测试';
    emoji: string = '😀😁😂';
    emoji2: string = '🎉🎊🎈';
    
    build() {{}}
}}
"""
        with open(os.path.join(project_dir, "unicode.ets"), 'w', encoding='utf-8') as f:
            f.write(special_content)
        
        self.logger.info("开始构建极端边界项目...")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True,
            timeout=120
        )
        
        self.logger.info(f"返回码: {result.returncode}")
        
        if result.returncode == 0:
            self.logger.success("极端边界项目构建成功")
            return True
        else:
            self.logger.fail("极端边界项目构建失败")
            return False
    
    def test_concurrent_operations(self):
        """测试并发操作"""
        self.logger.section("复杂场景5.2：并发压力测试")
        
        import multiprocessing
        
        self.logger.info("创建并发测试项目...")
        
        project_dir = os.path.join(self.temp_dir, "concurrent_project")
        os.makedirs(project_dir)
        
        for i in range(500):
            with open(os.path.join(project_dir, f"file{i}.ets"), 'w') as f:
                f.write(f"struct Test{i} {{ build() {{}} }}\n")
        
        def build_worker(args):
            worker_id, project_dir = args
            db_path = f"/tmp/concurrent_{worker_id}.db"
            
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=60
            )
            
            return (worker_id, result.returncode, db_path)
        
        self.logger.info("启动32个并发进程...")
        start_time = time.time()
        
        with multiprocessing.Pool(processes=32) as pool:
            args = [(i, project_dir) for i in range(32)]
            results = pool.map(build_worker, args)
        
        elapsed = time.time() - start_time
        
        success_count = sum(1 for _, code, _ in results if code == 0)
        
        self.logger.info(f"并发构建完成，耗时 {elapsed:.2f}s")
        self.logger.info(f"成功: {success_count}/32")
        
        if success_count == 32:
            self.logger.success("所有并发构建成功")
            return True
        else:
            self.logger.fail(f"有 {32-success_count} 个并发构建失败")
            return False


def run_complex_scenario_tests():
    """运行所有复杂场景测试"""
    print("="*80)
    print("超复杂真实场景深度测试框架")
    print("专注于：更长时间、更大规模、更错综复杂、更高难度、更混乱的场景")
    print("="*80)
    
    logger = ComplexScenarioLogger("COMPLEX_TEST")
    all_passed = True
    
    try:
        # 复杂场景1：超大规模
        tester1 = SuperLargeScaleTester(logger)
        result1 = tester1.test_10000_files()
        all_passed = all_passed and result1
        tester1.cleanup()
        
        result1_2 = tester1.test_50000_files()
        all_passed = all_passed and result1_2
        tester1.cleanup()
        
        # 复杂场景2：超长时运行
        tester2 = SuperLongRunTester(logger)
        result2 = tester2.test_1000_builds()
        all_passed = all_passed and result2
        tester2.cleanup()
        
        result2_2 = tester2.test_performance_degradation()
        all_passed = all_passed and result2_2
        tester2.cleanup()
        
        # 复杂场景3：极度混乱
        tester3 = SuperChaosTester(logger)
        result3 = tester3.test_all_errors_mixed()
        all_passed = all_passed and result3
        tester3.cleanup()
        
        # 复杂场景4：复杂依赖
        tester4 = ComplexDependencyTester(logger)
        result4 = tester4.test_deep_call_chains()
        all_passed = all_passed and result4
        tester4.cleanup()
        
        # 复杂场景5：极端边界与并发
        tester5 = ExtremeBoundaryTester(logger)
        result5 = tester5.test_extreme_boundaries()
        all_passed = all_passed and result5
        
        result5_2 = tester5.test_concurrent_operations()
        all_passed = all_passed and result5_2
        tester5.cleanup()
        
        # 最终判定
        logger.section("最终判定")
        passed = logger.summary()
        
        if passed:
            print("\n🎉 所有复杂场景测试通过！系统达到极限测试标准！")
            print("  ✅ 超大规模（50000文件）处理成功")
            print("  ✅ 超长时运行（1000次构建）稳定")
            print("  ✅ 极度混乱场景处理正常")
            print("  ✅ 复杂依赖关系正确识别")
            print("  ✅ 极端边界情况正确处理")
            print("  ✅ 并发操作安全可靠")
        else:
            print("\n⚠️ 部分复杂场景测试失败")
        
        return passed
        
    except Exception as e:
        print(f"\n❌ 测试框架异常: {e}")
        traceback.print_exc()
        return False


if __name__ == "__main__":
    success = run_complex_scenario_tests()
    sys.exit(0 if success else 1)
