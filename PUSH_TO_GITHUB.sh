#!/bin/bash

# 🚀 推送代码到 GitHub 的脚本
# GitHub 用户：Phoebeiscool-lalala
# 仓库名：labor-law-database

echo "════════════════════════════════════════════════════════════"
echo "🚀 开始推送代码到 GitHub..."
echo "════════════════════════════════════════════════════════════"
echo ""

cd "D:\Pheebs\labor-law-website"

echo "📋 当前 Git 状态："
git status

echo ""
echo "🔗 配置的远程仓库："
git remote -v

echo ""
echo "📤 推送代码到 GitHub..."
git push -u origin main

echo ""
echo "✅ 推送完成！"
echo ""
echo "访问你的仓库："
echo "https://github.com/Phoebeiscool-lalala/labor-law-database"
echo ""
echo "════════════════════════════════════════════════════════════"
