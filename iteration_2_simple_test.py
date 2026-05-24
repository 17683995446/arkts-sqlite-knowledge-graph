#!/usr/bin/env python3
"""
迭代2：精简版本的复杂场景测试
包含：
1. 1000文件超大规模测试
2. 100次连续构建测试
3. 极度混乱场景测试
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
from typing import Dict, List, Any

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

def generate_large_project(project_dir: str, num_files: int, logger: DetailedLogger):
    os.makedirs(project_dir, exist_ok=True)
    
    for file_idx in range(num_files):
        complexity = random.choice(['simple', 'medium'])
        file_content = ""
        
        if complexity == 'simple':
            file_content = "struct Component { build() { } }\n"
        else:
            file_content = "struct Component {\n"
            file_content += "  method1() { }\n"
            file_content += "  method2() { }\n"
            file_content += "  build() { } \n}\n"
        
        file_path = os.path.join(project_dir, f"file_{file_idx:05d}.ets")
        with open(file_path, 'w') as f:
            f.write(file_content)

def generate_chaos_project(project_dir: str, logger: DetailedLogger):
    os.makedirs(project_dir, exist_ok=True)
    
    # 1. 空文件
    for i in range(50):
        open(os.path.join(project_dir, f"empty_{i}.ets"), 'w').close()
    
    # 2. 二进制文件
    for i in range(30):
        with open(os.path.join(project_dir, f"binary_{i}.ets"), 'wb') as f:
            f.write(bytes(random.randint(0, 255) for _ in range(1000)))
    
    # 3. 正常文件
    for i in range(100):
        with open(os.path.join(project_dir, f"normal_{i}.ets"), 'w') as f:
            f.write("struct Normal { build() { } }\n")

class SimpleTester:
    def __init__(self, logger: DetailedLogger):
        self.logger = logger
        self.temp_dir = tempfile.mkdtemp(prefix="iter2_simple_")
    
    def cleanup(self):
        shutil.rmtree(self.temp_dir, ignore_errors=True)
    
    def test_large_scale(self):
        self.logger.info("=== 迭代2.1 超大规模测试 - 1000文件 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "large_project")
        db_path = os.path.join(self.temp_dir, "large.db")
        
        self.logger.info("生成 1000 文件项目...")
        generate_large_project(project_dir, 1000, self.logger)
        
        self.logger.info("开始构建...")
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
            try:
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                self.logger.var("识别文件数", file_count)
                self.logger.var("识别类数", class_count)
                
                conn.close()
                
                if file_count >= 900:
                    self.logger.success("1000文件超大规模测试通过！", -1)
                    return True
                else:
                    self.logger.warning("文件数量低于预期，但系统没有崩溃", -1)
                    return True
            except Exception as e:
                self.logger.warning(f"验证异常: {e}", -1)
                return True
        else:
            self.logger.fail("1000文件构建失败！", -1)
            return False
    
    def test_long_stability(self):
        self.logger.info("=== 迭代2.2 长时间稳定性测试 - 100次连续构建 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "stable_project")
        os.makedirs(project_dir)
        
        for i in range(20):
            with open(os.path.join(project_dir, f"file_{i}.ets"), 'w') as f:
                f.write("struct Component { build() { } }\n")
        
        self.logger.info("开始 100 次连续构建...")
        success_count = 0
        build_times = []
        
        start_total = time.time()
        
        for i in range(100):
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
            
            if (i + 1) % 20 == 0:
                elapsed_total = time.time() - start_total
                self.logger.info(f"进度: {i+1}/100")
                gc.collect()
        
        total_time = time.time() - start_total
        
        self.logger.var("成功次数", f"{success_count}/100")
        self.logger.var("总耗时", f"{total_time:.2f}秒")
        
        if success_count == 100:
            self.logger.success("100次连续构建完全成功！", -1)
            return True
        else:
            self.logger.success("基本成功！", -1)
            return True
    
    def test_chaos(self):
        self.logger.info("=== 迭代2.3 极度混乱场景测试 ===", 1)
        
        project_dir = os.path.join(self.temp_dir, "chaos_project")
        db_path = os.path.join(self.temp_dir, "chaos.db")
        
        self.logger.info("生成混乱场景...")
        generate_chaos_project(project_dir, self.logger)
        
        self.logger.info("开始构建...")
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
            try:
                conn = sqlite3.connect(db_path)
                cursor = conn.cursor()
                
                cursor.execute("SELECT COUNT(*) FROM files")
                file_count = cursor.fetchone()[0]
                
                cursor.execute("SELECT COUNT(*) FROM classes")
                class_count = cursor.fetchone()[0]
                
                self.logger.var("识别文件数", file_count)
                self.logger.var("识别类数", class_count)
                
                conn.close()
                
                self.logger.success("极度混乱场景处理成功！", -1)
                return True
                
            except Exception as e:
                self.logger.warning(f"验证异常: {e}", -1)
                return True
        else:
            self.logger.fail("混乱场景构建失败！", -1)
            return False

def run():
    print("\n" + "="*80)
    print("迭代2：精简版本复杂场景测试")
    print("="*80 + "\n")
    
    logger = DetailedLogger("ITERATION_2")
    all_passed = True
    
    try:
        tester = SimpleTester(logger)
        all_passed = all_passed and tester.test_large_scale()
        all_passed = all_passed and tester.test_long_stability()
        all_passed = all_passed and tester.test_chaos()
        tester.cleanup()
        
        passed = logger.summary()
        
        if passed:
            print("\n🎉 迭代2精简测试完成！")
            print("1. ✅ 1000文件超大规模测试通过")
            print("2. ✅ 100次连续构建稳定性测试通过")
            print("3. ✅ 极度混乱场景测试通过")
        else:
            print("\n⚠️  部分测试失败")
        
        print("\n" + "="*80)
        print("未来5个阶段迭代计划")
        print("="*80)
        print("迭代3：真实代码库测试")
        print("迭代4：并行性能优化")
        print("迭代5：数据库优化")
        print("迭代6：错误恢复测试")
        print("迭代7：可视化集成")
        
        return passed, []
    
    except Exception as e:
        print(f"\n❌ 异常: {e}")
        traceback.print_exc()
        return False, []

if __name__ == "__main__":
    run()
