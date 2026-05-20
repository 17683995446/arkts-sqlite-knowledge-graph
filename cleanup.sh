#!/bin/bash
# 清理临时测试文件
echo "=================================================================================="
echo "清理临时测试文件"
echo "=================================================================================="

# 删除临时测试文件和目录
echo "删除临时测试文件..."
rm -rf test_project/
rm -rf large_test_project/
rm -rf extreme_test/
rm -rf tmp_*
rm -rf temp_*
rm -f *.db
rm -f code.db
rm -f test.db
rm -f chaos.db
rm -f random.db
rm -f test_real.db

# 删除临时测试脚本
echo "删除临时测试脚本..."
rm -f test_*.py
rm -f create_extreme_test.py
rm -f generate_test_project.py
rm -f check_db_real.py
rm -f test_chaos.py
rm -f git_init.sh

# 重新添加到 git
echo "更新 git 状态..."
git add -u
git add .gitignore
git add -A

# 提交
echo "提交清理..."
git commit -m "chore: 清理临时测试文件，保留核心代码"

echo ""
echo "=================================================================================="
echo "仓库清理完成！"
echo "=================================================================================="
echo ""
echo "现在可以进行远程推送了！"
