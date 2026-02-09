#!/bin/bash

# GitHub Repository 快速設定腳本
# 使用方法: bash setup_github.sh YOUR_GITHUB_USERNAME

echo "=================================="
echo "GitHub Repository 快速設定"
echo "=================================="

# 檢查是否提供 GitHub 使用者名稱
if [ -z "$1" ]; then
    echo "❌ 錯誤: 請提供你的 GitHub 使用者名稱"
    echo "使用方法: bash setup_github.sh YOUR_GITHUB_USERNAME"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME="house-prices-prediction"

echo ""
echo "📝 設定資訊:"
echo "   GitHub 使用者: $GITHUB_USERNAME"
echo "   Repository 名稱: $REPO_NAME"
echo ""

# 1. 初始化 Git
echo "🔧 步驟 1: 初始化 Git repository..."
git init

# 2. 設定 Git config（如果尚未設定）
echo "🔧 步驟 2: 檢查 Git 設定..."
if ! git config user.name > /dev/null 2>&1; then
    echo "⚠️  請設定你的 Git 使用者名稱:"
    read -p "   輸入你的名字: " git_name
    git config --global user.name "$git_name"
fi

if ! git config user.email > /dev/null 2>&1; then
    echo "⚠️  請設定你的 Git Email:"
    read -p "   輸入你的 Email: " git_email
    git config --global user.email "$git_email"
fi

# 3. 添加所有檔案
echo "📦 步驟 3: 添加檔案..."
git add .

# 4. 提交
echo "💾 步驟 4: 提交檔案..."
git commit -m "Initial commit: Complete Kaggle House Prices solution"

# 5. 設定遠端 repository
echo "🔗 步驟 5: 連接到 GitHub..."
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# 6. 推送
echo "🚀 步驟 6: 推送到 GitHub..."
git branch -M main

echo ""
echo "準備推送到: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""
read -p "❓ 確定要推送嗎? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push -u origin main
    
    echo ""
    echo "=================================="
    echo "✅ 完成！"
    echo "=================================="
    echo ""
    echo "🌐 你的 Repository:"
    echo "   https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo ""
    echo "📝 下一步:"
    echo "   1. 前往上面的網址檢查檔案"
    echo "   2. 確認 README 顯示正確"
    echo "   3. 考慮添加圖片或其他資料"
    echo ""
else
    echo ""
    echo "❌ 已取消推送"
    echo ""
    echo "💡 提示: 你可以稍後手動推送:"
    echo "   git push -u origin main"
    echo ""
fi
