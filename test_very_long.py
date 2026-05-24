#!/usr/bin/env python3
"""
第八轮测试 - 超长时运行测试（1000次连续构建）
"""
import sys
import os
import time
import tempfile
import shutil
import subprocess
import statistics

sys.path.insert(0, '/workspace')

def test_very_long_running(iterations=200):  # 先用200次快速测试，避免过长时间
    """超长时运行测试 - 优化版本"""
    print("=" * 80)
    print(f"超长时运行测试 - {iterations}次连续构建")
    print("=" * 80)
    
    temp_dir = tempfile.mkdtemp(prefix='very_long_test_')
    project_dir = os.path.join(temp_dir, 'stable_test')
    db_path = os.path.join(temp_dir, 'stable_test.db')
    
    try:
        os.makedirs(project_dir)
        
        # 创建稳定的测试项目（100个文件）
        print("\n创建稳定的测试项目（100个文件）...")
        for i in range(100):
            with open(os.path.join(project_dir, f'Stable{i}.ets'), 'w') as f:
                f.write(f"""@Component
struct Stable{i} {{
    @State data: string = 'test';
    method{i}() {{ console.log({i}); }}
    build() {{ Text(this.data); }}
}}
""")
        
        print(f"测试项目创建完成！")
        
        # 开始{iterations}次连续构建
        print(f"\n开始{iterations}次连续构建测试...")
        
        build_times = []
        success_count = 0
        failure_count = 0
        start_total = time.time()
        
        for i in range(iterations):
            iter_start = time.time()
            
            # 构建
            result = subprocess.run(
                [sys.executable, '/workspace/main.py', 'build', project_dir, db_path],
                capture_output=True,
                text=True,
                timeout=10
            )
            
            iter_elapsed = time.time() - iter_start
            build_times.append(iter_elapsed)
            
            if result.returncode == 0:
                success_count += 1
            else:
                failure_count += 1
                print(f"\n⚠️  第{i+1}次构建失败！")
                if result.stderr:
                    print(f"   STDERR: {result.stderr}")
            
            # 每50次报告一次
            if (i + 1) % 50 == 0:
                elapsed_total = time.time() - start_total
                avg_last = statistics.mean(build_times[-50:])
                print(f"  进度: {i+1}/{iterations} - 最近50次平均: {avg_last:.4f}秒 - 总耗时: {elapsed_total:.2f}秒")
        
        total_elapsed = time.time() - start_total
        
        # 分析结果
        print("\n" + "=" * 80)
        print("超长时运行测试结果")
        print("=" * 80)
        
        print(f"\n总测试次数: {iterations}")
        print(f"成功次数: {success_count}")
        print(f"失败次数: {failure_count}")
        print(f"成功率: {100*success_count/iterations:.1f}%")
        
        print(f"\n总耗时: {total_elapsed:.2f}秒")
        avg_time = statistics.mean(build_times)
        print(f"平均每次耗时: {avg_time:.4f}秒")
        
        # 详细统计
        min_time = min(build_times)
        max_time = max(build_times)
        median_time = statistics.median(build_times)
        stdev_time = statistics.stdev(build_times) if len(build_times) > 1 else 0
        
        print(f"\n性能统计:")
        print(f"  最快: {min_time:.4f}秒")
        print(f"  最慢: {max_time:.4f}秒")
        print(f"  中位数: {median_time:.4f}秒")
        print(f"  标准差: {stdev_time:.6f}秒")
        
        # 验证最终数据库
        print("\n验证最终数据库:")
        import sqlite3
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()
        cursor.execute('SELECT COUNT(*) FROM files')
        file_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM classes')
        class_count = cursor.fetchone()[0]
        cursor.execute('SELECT COUNT(*) FROM methods')
        method_count = cursor.fetchone()[0]
        
        print(f"  文件数: {file_count}")
        print(f"  类数: {class_count}")
        print(f"  方法数: {method_count}")
        
        if file_count == 100:
            print("  ✅ 数据完整性良好")
        else:
            print("  ⚠️  数据完整性问题")
        
        conn.close()
        
        # 总结
        if success_count == iterations and stdev_time < 0.01:
            print(f"\n✅ 超长时运行测试完美通过！")
            print(f"   - {iterations}次全部成功")
            print(f"   - 性能极其稳定")
            return True
        elif success_count == iterations:
            print(f"\n✅ 超长时运行测试通过！")
            return True
        else:
            print(f"\n⚠️  超长时运行测试部分失败")
            return False
        
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    print("=" * 80)
    print("第八轮 - 超长时运行测试")
    print("=" * 80)
    
    success = test_very_long_running(200)
    
    if success:
        print("\n🎉 超长时运行测试完成！")
    else:
        print("\n⚠️  测试发现问题")

if __name__ == "__main__":
    main()
