#!/usr/bin/env python3
"""
详细日志跟踪测试 - 逐行验证代码执行
"""
import sys
import os
import tempfile
import shutil
import subprocess
import time
import traceback
from typing import Dict, List, Any

sys.path.insert(0, '/workspace')

class Logger:
    """详细日志记录器"""
    def __init__(self, name: str):
        self.name = name
        self.logs = []
        self.step = 0
    
    def log(self, message: str, indent: int = 0):
        self.step += 1
        indent_str = "  " * indent
        log_entry = f"[{self.name}] #{self.step:04d} {indent_str}{message}"
        print(log_entry)
        self.logs.append(log_entry)
    
    def log_func(self, func_name: str, args: tuple = (), kwargs: dict = None):
        if kwargs is None:
            kwargs = {}
        self.log(f"进入 {func_name}()", indent=1)
        if args:
            self.log(f"  参数: {args}", indent=2)
        if kwargs:
            self.log(f"  关键字参数: {kwargs}", indent=2)
    
    def log_var(self, var_name: str, value: Any, indent: int = 2):
        self.log(f"{var_name} = {repr(value)}", indent=indent)
    
    def log_success(self, message: str = "成功", indent: int = 1):
        self.log(f"✅ {message}", indent=indent)
    
    def log_error(self, message: str = "错误", indent: int = 1):
        self.log(f"❌ {message}", indent=indent)

def test_detailed_logging():
    """详细日志跟踪测试"""
    print("=" * 80)
    print("详细日志跟踪测试")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='logging_test_')
    project_dir = os.path.join(temp_dir, 'test_project')
    db_path = os.path.join(temp_dir, 'test_log.db')
    
    try:
        logger = Logger("Main")
        
        logger.log("创建测试项目")
        os.makedirs(project_dir)
        
        # 创建测试文件
        logger.log_func("创建测试文件")
        test_files = []
        
        for i in range(10):
            fname = os.path.join(project_dir, f'Test{i}.ets')
            with open(fname, 'w') as f:
                f.write(f"""@Component
struct Test{i} {{
    @State data{i}: string = 'test {i}';
    
    aboutToAppear() {{
        console.log('init {i}');
    }}
    
    build() {{
        Column() {{
            Text(this.data{i});
        }}
    }}
}}
""")
            test_files.append(fname)
            logger.log_var(f"创建文件 {i}", fname)
        
        logger.log_success(f"创建 {len(test_files)} 个测试文件")
        
        # 导入并测试核心模块
        logger.log_func("导入核心模块")
        
        logger.log("导入 database 模块...")
        import database
        logger.log_success("database 模块导入成功")
        
        logger.log("导入 file_scanner 模块...")
        import file_scanner
        logger.log_success("file_scanner 模块导入成功")
        
        logger.log("导入 arkts_parser 模块...")
        import arkts_parser
        logger.log_success("arkts_parser 模块导入成功")
        
        logger.log("导入 parallel_processor 模块...")
        import parallel_processor
        logger.log_success("parallel_processor 模块导入成功")
        
        # 逐功能测试
        logger.log_func("测试 database 模块")
        db = database.CodeGraphDatabase(db_path)
        logger.log_success("数据库初始化成功")
        
        logger.log_func("测试 file_scanner 模块")
        old_hashes = db.get_all_file_hashes()
        logger.log_var("旧文件哈希数", len(old_hashes))
        
        changed_files, deleted_files = file_scanner.get_changed_files(project_dir, old_hashes)
        logger.log_var("变更文件数", len(changed_files))
        logger.log_var("删除文件数", len(deleted_files))
        
        logger.log_func("测试 arkts_parser 模块")
        parser = arkts_parser.ArkTSParser()
        logger.log_success("解析器初始化成功")
        
        logger.log_func("测试解析单个文件")
        for i, fpath in enumerate(changed_files[:3]):  # 只测试前3个文件
            logger.log(f"解析文件 {i+1}: {os.path.basename(fpath)}", indent=1)
            result = parser.parse_file(fpath)
            logger.log_var("文件路径", result['file_path'], indent=2)
            logger.log_var("类数", len(result['classes']), indent=2)
            logger.log_var("方法数", len(result['methods']), indent=2)
            logger.log_var("调用数", len(result['calls']), indent=2)
            logger.log_success(f"文件 {os.path.basename(fpath)} 解析成功")
        
        logger.log_func("测试 parallel_processor 模块")
        logger.log("开始并行处理...", indent=1)
        processed = parallel_processor.process_files_in_parallel(changed_files, db)
        logger.log_var("处理文件数", processed, indent=2)
        logger.log_success("并行处理完成")
        
        logger.log_func("测试数据库优化")
        db.optimize()
        logger.log_success("数据库优化完成")
        
        logger.log_func("获取图谱摘要")
        summary = db.get_graph_summary()
        logger.log_var("文件总数", summary['files'], indent=2)
        logger.log_var("类总数", summary['classes'], indent=2)
        logger.log_var("方法总数", summary['methods'], indent=2)
        logger.log_var("调用关系总数", summary['calls'], indent=2)
        
        db.close()
        logger.log_success("数据库关闭成功")
        
        logger.log("=" * 80)
        logger.log("所有模块详细日志测试完成！")
        logger.log("=" * 80)
        logger.log(f"总计执行步骤: {logger.step}")
        
        return True
        
    except Exception as e:
        print(f"\n❌ 测试失败！")
        print(f"错误: {e}")
        print(f"\n堆栈跟踪:")
        traceback.print_exc()
        return False
        
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)

def test_critical_path():
    """测试关键路径 - 执行完整构建流程"""
    print("\n" + "=" * 80)
    print("关键路径完整测试")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='critical_test_')
    project_dir = os.path.join(temp_dir, 'critical_project')
    db_path = os.path.join(temp_dir, 'critical.db')
    
    try:
        os.makedirs(project_dir)
        
        # 创建更复杂的测试项目
        for i in range(20):
            with open(os.path.join(project_dir, f'Critical{i}.ets'), 'w') as f:
                f.write(f"""@Component
struct Critical{i} {{
    @State count: number = 0;
    @State title: string = 'Critical {i}';
    
    aboutToAppear() {{
        console.log('Critical component {i} init');
    }}
    
    increment() {{
        this.count++;
    }}
    
    reset() {{
        this.count = 0;
    }}
    
    build() {{
        Column() {{
            Text(this.title).fontSize(20);
            Text(`Count: ${{this.count}}`);
            Button('+')
                .onClick(() => {{ this.increment(); }});
            Button('Reset')
                .onClick(() => {{ this.reset(); }});
        }}
    }}
}}
""")
        
        print(f"\n执行完整构建流程...")
        
        result = subprocess.run(
            [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
            capture_output=True,
            text=True
        )
        
        print(result.stdout)
        
        if result.returncode != 0:
            print(f"\n❌ 构建失败！返回码: {result.returncode}")
            if result.stderr:
                print(f"STDERR: {result.stderr}")
            return False
        
        print(f"\n✅ 关键路径完整测试通过！")
        return True
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("\n开始详细日志跟踪测试...\n")
    
    success1 = test_detailed_logging()
    success2 = test_critical_path()
    
    if success1 and success2:
        print("\n" + "=" * 80)
        print("🎉 详细日志跟踪测试全部完成！")
        print("=" * 80)
    else:
        print("\n⚠️  部分测试失败")

if __name__ == "__main__":
    main()
