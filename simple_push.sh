#!/bin/bash
# 简化版GitHub部署脚本 - 直接推送
echo "=================================================================================="
echo "直接推送到GitHub"
echo "=================================================================================="

# 仓库信息
REPO_NAME="arkts-sqlite-knowledge-graph"
USER_NAME="2358384171"
PAT="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"

echo "1. 添加远程仓库..."
git remote add origin https://github.com/$USER_NAME/$REPO_NAME.git 2>/dev/null || git remote set-url origin https://github.com/$USER_NAME/$REPO_NAME.git

echo "2. 重命名分支为 main..."
git branch -M main

echo "3. 检查当前状态..."
git status

echo ""
echo "=================================================================================="
echo "推送前的准备工作已完成！"
echo "=================================================================================="
echo ""
echo "📝 下一步操作选项："
echo ""
echo "选项 1: 先在 GitHub 网页上创建私有仓库，然后："
echo "   git push -u origin main"
echo ""
echo "选项 2: 使用 GitHub CLI (需要先安装 gh)："
echo "   gh repo create $REPO_NAME --private --source=. --remote=origin"
echo "   git push -u origin main"
echo ""
echo "选项 3: 使用 Personal Access Token 直接推送："
echo "   git push -u https://$PAT@github.com/$USER_NAME/$REPO_NAME.git main"
echo ""
echo "选项 4: 检查当前已准备好的 git 状态 (无需等待)："
echo "   (仓库已经初始化好，你可以随时推送)"
echo ""
echo "=================================================================================="
echo "✅ Git仓库已完全准备好！"
echo "=================================================================================="
