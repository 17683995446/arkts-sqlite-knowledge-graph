#!/usr/bin/env python3
"""
使用GitHub API创建私有仓库并推送代码
"""
import os
import sys
import subprocess
import json
import requests

# 使用提供的GitHub Personal Access Token
GITHUB_TOKEN = "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"
GITHUB_USERNAME = "2358384171"  # 从邮箱推断

# 仓库信息
REPO_NAME = "arkts-sqlite-knowledge-graph"
REPO_DESCRIPTION = "百万行级 ArkTS/TypeScript 代码知识图谱系统，支持增量更新、多进程并发、LLM查询"

def create_github_repo():
    """使用GitHub API创建私有仓库"""
    print("=" * 80)
    print("创建GitHub私有仓库")
    print("=" * 80)
    
    url = "https://api.github.com/user/repos"
    
    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json"
    }
    
    data = {
        "name": REPO_NAME,
        "description": REPO_DESCRIPTION,
        "private": True,
        "auto_init": False
    }
    
    try:
        response = requests.post(url, headers=headers, json=data)
        
        if response.status_code == 201:
            repo_info = response.json()
            repo_url = repo_info["html_url"]
            clone_url = repo_info["clone_url"]
            
            print(f"✅ 私有仓库创建成功！")
            print(f"仓库地址: {repo_url}")
            print(f"Clone地址: {clone_url}")
            return clone_url
        elif response.status_code == 422 and "name already exists" in response.text:
            print(f"⚠️  仓库已存在，使用现有仓库")
            return f"https://github.com/{GITHUB_USERNAME}/{REPO_NAME}.git"
        else:
            print(f"❌ 创建仓库失败: {response.status_code}")
            print(f"响应: {response.text}")
            return None
            
    except Exception as e:
        print(f"❌ 错误: {e}")
        return None

def push_to_github(repo_url):
    """推送代码到GitHub"""
    print("\n" + "=" * 80)
    print("推送代码到GitHub")
    print("=" * 80)
    
    try:
        # 添加远程仓库
        print("添加远程仓库...")
        subprocess.run(["git", "remote", "remove", "origin"], 
                     capture_output=True, text=True)
        subprocess.run(["git", "remote", "add", "origin", repo_url],
                     check=True, capture_output=True, text=True)
        
        # 重命名分支为 main
        print("重命名分支为 main...")
        subprocess.run(["git", "branch", "-M", "main"], check=True)
        
        # 使用PAT进行认证
        print("配置认证...")
        auth_url = repo_url.replace("https://", f"https://{GITHUB_TOKEN}@")
        
        # 推送
        print("推送代码...")
        push_result = subprocess.run(
            ["git", "push", "-u", auth_url, "main"],
            capture_output=True,
            text=True
        )
        
        if push_result.returncode == 0:
            print("\n🎉 代码推送成功！")
            print(f"仓库地址: https://github.com/{GITHUB_USERNAME}/{REPO_NAME}")
            return True
        else:
            print(f"❌ 推送失败")
            print(f"STDOUT: {push_result.stdout}")
            print(f"STDERR: {push_result.stderr}")
            return False
            
    except Exception as e:
        print(f"❌ 错误: {e}")
        return False

def print_manual_instructions():
    """打印手动操作说明"""
    print("\n" + "=" * 80)
    print("📋 备用方案 - 手动操作说明")
    print("=" * 80)
    print()
    print("如果自动化方法有问题，请按以下步骤手动操作：")
    print()
    print("1. 访问 https://github.com/new 并创建私有仓库")
    print("   仓库名称: " + REPO_NAME)
    print("   描述: " + REPO_DESCRIPTION)
    print("   Privacy: Private")
    print()
    print("2. 然后在本地执行：")
    print("")
    print(f"   git remote add origin https://github.com/{GITHUB_USERNAME}/{REPO_NAME}.git")
    print("   git branch -M main")
    print("   git push -u origin main")
    print()
    print("   或使用PAT认证：")
    print("")
    print(f"   git push -u https://{GITHUB_TOKEN}@github.com/{GITHUB_USERNAME}/{REPO_NAME}.git main")
    print()
    print("3. 验证仓库：")
    print(f"   访问 https://github.com/{GITHUB_USERNAME}/{REPO_NAME}")
    print()

def main():
    print("==================================================================================")
    print("GitHub 仓库部署脚本")
    print("==================================================================================")
    print()
    
    # 首先尝试自动创建和推送
    repo_url = create_github_repo()
    
    if repo_url:
        print(f"\n仓库 URL: {repo_url}")
        success = push_to_github(repo_url)
        
        if not success:
            print_manual_instructions()
    else:
        print_manual_instructions()
    
    # 检查当前Git状态
    print("\n当前仓库状态：")
    subprocess.run(["git", "status"], check=True)
    print("\n已提交的文件：")
    subprocess.run(["git", "log", "--oneline", "-3"], check=True)
    
    print("\n" + "=" * 80)
    print("✅ 准备工作完成！")
    print("=" * 80)

if __name__ == "__main__":
    main()
