# 🚀 自动化部署脚本 (PowerShell)
# GitHub 用户: Phoebeiscool-lalala
# 仓库: labor-law-database

Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "🚀 全球劳动法律查询系统 - 自动化部署" -ForegroundColor Green
Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

$projectPath = "D:\Pheebs\labor-law-website"
$githubUsername = "Phoebeiscool-lalala"
$repoName = "labor-law-database"
$repoUrl = "https://github.com/$githubUsername/$repoName.git"

# 第 1 步：验证项目路径
Write-Host "📋 第 1 步：验证项目" -ForegroundColor Yellow
if (Test-Path $projectPath) {
    Write-Host "✅ 项目路径存在" -ForegroundColor Green
} else {
    Write-Host "❌ 项目路径不存在！" -ForegroundColor Red
    exit 1
}

cd $projectPath
Write-Host ""

# 第 2 步：检查 Git 状态
Write-Host "📋 第 2 步：检查 Git 状态" -ForegroundColor Yellow
Write-Host ""
git status
Write-Host ""

# 第 3 步：配置远程仓库
Write-Host "📋 第 3 步：配置远程仓库" -ForegroundColor Yellow
git remote set-url origin $repoUrl 2>$null
if ($LASTEXITCODE -ne 0) {
    git remote add origin $repoUrl
}
Write-Host "✅ 远程仓库已配置：$repoUrl" -ForegroundColor Green
Write-Host ""

# 第 4 步：确保分支是 main
Write-Host "📋 第 4 步：准备 main 分支" -ForegroundColor Yellow
git branch -M main
Write-Host "✅ 分支已设置为 main" -ForegroundColor Green
Write-Host ""

# 第 5 步：显示最近的提交
Write-Host "📋 第 5 步：提交历史" -ForegroundColor Yellow
Write-Host ""
git log --oneline -5
Write-Host ""

# 第 6 步：推送到 GitHub
Write-Host "📋 第 6 步：推送代码到 GitHub" -ForegroundColor Yellow
Write-Host ""
Write-Host "⚠️  重要提示：" -ForegroundColor Yellow
Write-Host "   • 当要求输入'Password'时，请输入 GitHub Personal Access Token"
Write-Host "   • 不是你的 GitHub 密码，而是生成的 token"
Write-Host "   • 没有 token？访问：https://github.com/settings/tokens/new" -ForegroundColor Yellow
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Green
    Write-Host "✅ 代码已成功推送到 GitHub！" -ForegroundColor Green
    Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Green
    Write-Host ""
    Write-Host "📍 你的 GitHub 仓库：" -ForegroundColor Cyan
    Write-Host "   https://github.com/$githubUsername/$repoName" -ForegroundColor White
    Write-Host ""
    Write-Host "🌐 接下来部署到 Vercel：" -ForegroundColor Yellow
    Write-Host "   1. 访问 https://vercel.com" -ForegroundColor White
    Write-Host "   2. 用 GitHub 登录" -ForegroundColor White
    Write-Host "   3. 点击 'Add New' → 'Project'" -ForegroundColor White
    Write-Host "   4. 搜索 '$repoName'" -ForegroundColor White
    Write-Host "   5. 点击 'Import' → 'Deploy'" -ForegroundColor White
    Write-Host ""
    Write-Host "⏱️  Vercel 部署需要 2-3 分钟..." -ForegroundColor Yellow
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "❌ 推送失败！" -ForegroundColor Red
    Write-Host ""
    Write-Host "可能的原因：" -ForegroundColor Yellow
    Write-Host "   • GitHub 认证失败" -ForegroundColor White
    Write-Host "   • Personal Access Token 无效" -ForegroundColor White
    Write-Host "   • 网络连接问题" -ForegroundColor White
    Write-Host ""
    Write-Host "解决方案：" -ForegroundColor Yellow
    Write-Host "   1. 重新生成 token：https://github.com/settings/tokens/new" -ForegroundColor White
    Write-Host "   2. 清除旧凭证：git credential-manager-core erase https://github.com" -ForegroundColor White
    Write-Host "   3. 重新运行此脚本" -ForegroundColor White
    exit 1
}
