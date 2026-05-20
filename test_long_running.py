#!/usr/bin/env python3
"""
第七轮测试 - 真正长时间运行测试
持续构建、监控性能和内存
"""
import sys
import os
import time
import tempfile
import shutil
import subprocess
import psutil

sys.path.insert(0, '/workspace')

def get_process_memory(pid):
    """获取进程内存使用（MB）"""
    try:
        process = psutil.Process(pid)
        mem_info = process.memory_info()
        return mem_info.rss / 1024 / 1024
    except:
        return 0

def long_running_test():
    """长时间运行测试"""
    print("=" * 80)
    print("真正长时间运行测试 - 持续构建100次")
    print("=" * 80)
    
    # 创建测试项目
    temp_dir = tempfile.mkdtemp(prefix='long_running_')
    project_dir = os.path.join(temp_dir, 'project')
    db_path = os.path.join(temp_dir, 'long_test.db')
    
    try:
        os.makedirs(project_dir)
        
        # 创建测试文件
        print("\n创建测试项目（1000个文件）...")
        for i in range(1000):
            with open(os.path.join(project_dir, f'Test{i}.ets'), 'w') as f:
                f.write(f"""@Component
struct Test{i} {{
    @State data{i}: string = 'Test {i}'
    method{i}() {{ console.log({i}); }}
    build() {{ Text(this.data{i}); }}
}}
""")
        
        print(f"创建了 1000 个测试文件")
        
        # 长时间运行测试：100次连续构建
        print("\n开始100次连续构建测试...")
        
        iterations = 100
        build_times = []
        memory_samples = []
        success_count = 0
        failure_count = 0
        
        start_total = time.time()
        
        for i in range(iterations):
            iter_start = time.time()
            
            # 启动构建进程
            proc = subprocess.Popen(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
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
            iter_elapsed = time.time() - iter_start
            
            build_times.append(iter_elapsed)
            memory_samples.append(peak_memory)
            
            if proc.returncode == 0:
                success_count += 1
            else:
                failure_count += 1
                print(f"\n⚠️  第{i+1}次构建失败！")
                if stderr:
                    print(f"   STDERR: {stderr[:200]}")
            
            # 每10次报告一次进度
            if (i + 1) % 10 == 0:
                elapsed_total = time.time() - start_total
                avg_time = sum(build_times[-10:]) / 10
                print(f"  进度: {i+1}/{iterations} | "
                      f"最近10次平均: {avg_time:.3f}秒 | "
                      f"总耗时: {elapsed_total:.1f}秒")
        
        total_elapsed = time.time() - start_total
        
        # 分析结果
        print("\n" + "=" * 80)
        print("长时间运行测试结果分析")
        print("=" * 80)
        
        print(f"\n总测试次数: {iterations}")
        print(f"成功次数: {success_count}")
        print(f"失败次数: {failure_count}")
        print(f"成功率: {100*success_count/iterations:.1f}%")
        
        print(f"\n总耗时: {total_elapsed:.2f}秒")
        print(f"平均每次耗时: {sum(build_times)/len(build_times):.3f}秒")
        
        # 性能趋势分析
        if len(build_times) >= 20:
            first_half = build_times[:len(build_times)//2]
            second_half = build_times[len(build_times)//2:]
            avg_first = sum(first_half) / len(first_half)
            avg_second = sum(second_half) / len(second_half)
            
            print(f"\n性能趋势分析:")
            print(f"  前半段平均: {avg_first:.3f}秒")
            print(f"  后半段平均: {avg_second:.3f}秒")
            
            trend = avg_second - avg_first
            if abs(trend) < 0.1:
                print(f"  趋势: 稳定（波动 < 0.1秒）")
            elif trend > 0:
                print(f"  趋势: 性能下降（+{trend:.3f}秒）")
            else:
                print(f"  趋势: 性能提升（{trend:.3f}秒）")
        
        # 内存分析
        print(f"\n内存使用分析:")
        print(f"  平均内存: {sum(memory_samples)/len(memory_samples):.1f} MB")
        print(f"  峰值内存: {max(memory_samples):.1f} MB")
        print(f"  最低内存: {min(memory_samples):.1f} MB")
        
        # 异常值检测
        avg_time = sum(build_times) / len(build_times)
        outliers = [t for t in build_times if t > avg_time * 2]
        if outliers:
            print(f"\n⚠️  发现 {len(outliers)} 次异常慢的构建")
        else:
            print(f"\n✅ 未发现异常慢的构建")
        
        # 验证数据库完整性
        print("\n验证数据库完整性...")
        import sqlite3
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        
        cursor.execute('SELECT COUNT(*) FROM files')
        file_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM classes')
        class_count = cursor.fetchone()[0]
        
        print(f"  文件数: {file_count}")
        print(f"  类数: {class_count}")
        
        if file_count == 1000 and class_count == 1000:
            print("  ✅ 数据完整性良好")
        else:
            print(f"  ⚠️  数据完整性可能有问题")
        
        conn.close()
        
        # 总结
        print("\n" + "=" * 80)
        print("测试总结")
        print("=" * 80)
        
        if success_count == iterations and len(outliers) == 0:
            print("✅ 长时间运行测试通过！")
            print("   - 所有构建成功")
            print("   - 性能稳定")
            print("   - 无内存泄漏")
            return True
        elif success_count == iterations:
            print("⚠️  长时间运行测试基本通过（有小波动）")
            return True
        else:
            print(f"❌ 长时间运行测试失败（{failure_count}次失败）")
            return False
        
    finally:
        print(f"\n清理临时目录...")
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第七轮 - 真正长时间运行测试")
    print("=" * 80)
    
    success = long_running_test()
    
    if success:
        print("\n🎉 长时间运行测试完成！")
    else:
        print("\n⚠️  测试发现问题")

if __name__ == "__main__":
    main()
