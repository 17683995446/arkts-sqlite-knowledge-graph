#!/bin/bash
# 使用curl直接调用GitHub API创建仓库
echo "=================================================================================="
echo "使用GitHub API创建私有仓库"
echo "=================================================================================="

PAT="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"
USER_NAME="2358384171"
REPO_NAME="arkts-sqlite-knowledge-graph"

# 1. 尝试创建仓库
echo "1. 创建 GitHub 私有仓库..."
CREATE_RESPONSE=$(curl -s -w "%{http_code}" -X POST \
  -H "Authorization: token $PAT" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d "{
    \"name\": \"$REPO_NAME\",
    \"description\": \"百万行级 ArkTS/TypeScript 代码知识图谱系统，支持增量更新、多进程并发、LLM查询\",
    \"private\": true,
    \"auto_init\": false
  }")

HTTP_CODE=$(echo "$CREATE_RESPONSE" | tail -n1)
RESPONSE_BODY=$(echo "$CREATE_RESPONSE" | sed '$d')

echo "HTTP 状态码: $HTTP_CODE"

if [ "$HTTP_CODE" == "201" ]; then
  echo "✅ 仓库创建成功！"
elif [ "$HTTP_CODE" == "422" ] && echo "$RESPONSE_BODY" | grep -q "name already exists"; then
  echo "⚠️  仓库已存在"
else
  echo "❌ 创建仓库失败"
  echo "$RESPONSE_BODY"
fi

# 2. 尝试推送
echo ""
echo "=================================================================================="
echo "2. 尝试推送代码"
echo "=================================================================================="

# 使用PAT直接推送
REPO_URL="https://$PAT@github.com/$USER_NAME/$REPO_NAME.git"

# 确保远程存在
git remote set-url origin "$REPO_URL" 2>/dev/null || git remote add origin "$REPO_URL"

echo "正在推送到 GitHub..."
git push -u origin main 2>&1 | head -100

PUSH_EXIT=$?

if [ $PUSH_EXIT -eq 0 ]; then
  echo ""
  echo "🎉 代码推送成功！"
  echo ""
  echo "✅ 项目已成功提交到 GitHub 私有仓库！"
  echo ""
  echo "仓库地址: https://github.com/$USER_NAME/$REPO_NAME"
  echo ""
else
  echo ""
  echo "=================================================================================="
  echo "📝 手动操作说明"
  echo "=================================================================================="
  echo ""
  echo "如果推送失败，请按以下步骤操作："
  echo ""
  echo "1. 访问 https://github.com/new 创建私有仓库"
  echo "   仓库名称: $REPO_NAME"
  echo "   类型: Private"
  echo ""
  echo "2. 然后在当前目录执行："
  echo ""
  echo "   git push -u origin main"
  echo ""
  echo "或者使用Personal Access Token直接推送："
  echo ""
  echo "   git push -u \"https://$PAT@github.com/$USER_NAME/$REPO_NAME.git\" main"
  echo ""
fi
