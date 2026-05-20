#!/usr/bin/env python3
"""
内存泄漏检测：长时间运行监控内存使用
"""
import subprocess
import time
import os
import tempfile
import shutil
import psutil

def get_process_memory(pid):
    """获取进程内存使用（MB）"""
    try:
        process = psutil.Process(pid)
        mem_info = process.memory_info()
        return mem_info.rss / 1024 / 1024  # MB
    except:
        return 0

def create_test_project(project_path, num_files=100):
    """创建测试项目"""
    os.makedirs(project_path, exist_ok=True)

    for i in range(num_files):
        filename = os.path.join(project_path, f"Test{i}.ets")
        with open(filename, 'w', encoding='utf-8') as f:
            # 创建中等大小的文件
            f.write(f"@Component\nstruct Test{i} {{\n")
            f.write(f"  @State data: string = 'Test Data'\n")

            # 添加一些方法和生命周期
            for j in range(10):
                f.write(f"  method{j}() {{\n")
                f.write(f"    let x = {j} * 100\n")
                f.write(f"    return x\n")
                f.write(f"  }}\n")

            f.write("  aboutToAppear() {\n")
            f.write("    console.info('Init')\n")
            f.write("  }\n")

            f.write("  build() {\n")
            f.write("    Column() {\n")
            f.write("      Text('Hello')\n")
            f.write("    }\n")
            f.write("  }\n")
            f.write("}\n")

    print(f"创建了 {num_files} 个测试文件")

def test_memory_leak():
    """测试内存泄漏"""
    print("\n" + "="*80)
    print("内存泄漏检测测试")
    print("="*80)

    # 创建临时目录
    temp_dir = tempfile.mkdtemp(prefix="memory_test_")
    project_path = os.path.join(temp_dir, "project")
    db_path = os.path.join(temp_dir, "code.db")

    try:
        # 创建测试项目
        print(f"创建测试项目: {project_path}")
        create_test_project(project_path, num_files=100)

        # 连续运行多次构建，监控内存
        print("\n--- 开始连续构建测试 ---")
        memory_samples = []

        for iteration in range(5):
            print(f"\n迭代 {iteration + 1}/5...")

            # 启动构建进程
            proc = subprocess.Popen(
                ["python", "main.py", "build", project_path, db_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )

            # 监控内存
            peak_memory = 0
            while proc.poll() is None:
                mem = get_process_memory(proc.pid)
                if mem > peak_memory:
                    peak_memory = mem
                time.sleep(0.01)

            # 等待完成
            stdout, stderr = proc.communicate()

            memory_samples.append(peak_memory)

            print(f"  峰值内存: {peak_memory:.2f} MB")
            print(f"  返回码: {proc.returncode}")

            if proc.returncode != 0:
                print("  错误:")
                print(stderr)

            # 短暂休息
            time.sleep(0.5)

        # 分析内存趋势
        print("\n" + "="*80)
        print("内存使用分析")
        print("="*80)

        print("\n内存样本（MB）:")
        for i, mem in enumerate(memory_samples, 1):
            print(f"  迭代 {i}: {mem:.2f} MB")

        # 计算趋势
        if len(memory_samples) >= 2:
            first_half_avg = sum(memory_samples[:len(memory_samples)//2]) / (len(memory_samples)//2)
            second_half_avg = sum(memory_samples[len(memory_samples)//2:]) / (len(memory_samples) - len(memory_samples)//2)
            trend = second_half_avg - first_half_avg

            print(f"\n前半段平均: {first_half_avg:.2f} MB")
            print(f"后半段平均: {second_half_avg:.2f} MB")
            print(f"内存变化趋势: {trend:+.2f} MB")

            if abs(trend) < 5:
                print("✓ 内存使用稳定，无明显泄漏")
            elif trend > 5:
                print("⚠ 警告：内存有增长趋势，可能存在泄漏")
            else:
                print("✓ 内存使用下降，运行正常")

        # 检查数据库大小
        print(f"\n数据库文件: {db_path}")
        if os.path.exists(db_path):
            db_size = os.path.getsize(db_path)
            print(f"数据库大小: {db_size / 1024:.2f} KB")

    finally:
        print(f"\n清理: {temp_dir}")
        shutil.rmtree(temp_dir, ignore_errors=True)

if __name__ == "__main__":
    # 检查 psutil 是否安装
    try:
        import psutil
        test_memory_leak()
    except ImportError:
        print("错误: 需要安装 psutil")
        print("运行: pip install psutil")
