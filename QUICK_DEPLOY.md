# 🚀 快速部署指南（3 分钟上线）

## 当前状态

✅ 代码已准备好  
✅ Git 仓库已初始化  
✅ 本地测试成功  

开发服务器运行在：http://localhost:3000

---

## 部署到 Vercel（推荐，最简单）

### 步骤 1: 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 输入仓库名：`labor-law-database`
3. 选择 "Public"（或 Private）
4. 点击 "Create repository"

### 步骤 2: 推送代码到 GitHub

运行这些命令：

```bash
cd D:\Pheebs\labor-law-website

# 添加远程仓库（替换 YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/labor-law-database.git

# 重命名分支为 main
git branch -M main

# 推送代码
git push -u origin main
```

### 步骤 3: 部署到 Vercel

1. 访问 https://vercel.com
2. 点击 "Sign Up" 并用 GitHub 登录
3. 点击 "New Project"
4. 搜索 "labor-law-database"
5. 点击 "Import"
6. 使用默认设置
7. 点击 "Deploy"

**等待 1-3 分钟...**

### ✅ 完成！

你的网站现在在线了！  
访问：https://labor-law-database.vercel.app

---

## 自定义域名（可选）

### 在 Vercel 上添加域名

1. 打开 Vercel Dashboard
2. 选择你的项目
3. 点击 "Settings" → "Domains"
4. 输入你的域名
5. 按照 DNS 配置指示操作

---

## 更新网站

### 添加新的法律条款

1. 编辑 `public/data/laws.json`
2. 保存文件
3. 运行：
   ```bash
   git add public/data/laws.json
   git commit -m "Add: New labor law regulations"
   git push origin main
   ```
4. Vercel 自动重新部署（1-2 分钟）

### 修改网站功能

编辑任何源代码文件后：

```bash
git add .
git commit -m "Update: Feature improvements"
git push origin main
```

自动部署！

---

## 本地测试

### 开发模式（实时热重载）

```bash
cd D:\Pheebs\labor-law-website
npm run dev

# 访问 http://localhost:3000
```

### 生产模式（最终版本）

```bash
npm run build
npm start

# 访问 http://localhost:3000
```

---

## 监控部署

### 查看部署日志

1. 打开 https://vercel.com/dashboard
2. 选择项目
3. 点击 "Deployments"
4. 查看最新部署的日志

### 解决问题

常见问题：
- **构建失败**：检查依赖版本、TypeScript 错误
- **网页显示空白**：检查 JSON 数据文件格式
- **搜索不工作**：检查浏览器控制台错误

---

## 预期成本

**完全免费！** 🎉

- Vercel 免费计划包含：
  - ✅ 无限部署
  - ✅ 自动 HTTPS / SSL
  - ✅ 全球 CDN
  - ✅ 0 停机部署

---

## 下一步

1. ✅ 推送到 GitHub
2. ✅ 部署到 Vercel
3. 📊 添加更多国家和法律条款
4. 🔄 设置自动更新爬虫
5. 📢 宣传你的网站

---

## 问题？

查看 `DEPLOYMENT.md` 获取详细指南
