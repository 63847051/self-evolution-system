# 📤 上传到GitHub指南

## 🎯 创建GitHub仓库

### 步骤1: 在GitHub上创建新仓库

1. 访问 https://github.com/new
2. 仓库名称: `self-evolution-system`
3. 描述: `让您的OpenClaw Agent拥有自动进化能力`
4. 选择: Public
5. 不要勾选初始化README（我们已经有了）
6. 点击 "Create repository"

### 步骤2: 上传文件

**在本地服务器执行**:

```bash
# 进入目录
cd /root/.openclaw/workspace/github-repo/self-evolution-system

# 添加远程仓库（替换YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/self-evolution-system.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

**如果提示输入密码**:
- Username: 你的GitHub用户名
- Password: 你的GitHub Token（不是密码！）
  - 创建Token: https://github.com/settings/tokens
  - 权限: repo（全选）

## 📦 上传的文件

```
self-evolution-system/
├── README.md                 # 项目说明
├── LICENSE                   # MIT许可证
├── self-evolution-system.sh  # 统一调度器
└── l7-config-validation.sh    # L7配置验证
```

## 🔗 在其他地方使用

### 方式1: 直接克隆

```bash
git clone https://github.com/YOUR_USERNAME/self-evolution-system.git ~/.openclaw/skills/self-evolution-system
cd ~/.openclaw/skills/self-evolution-system
bash install.sh
```

### 方式2: 下载脚本

```bash
# 下载核心脚本
wget https://raw.githubusercontent.com/YOUR_USERNAME/self-evolution-system/main/self-evolution-system.sh
wget https://raw.githubusercontent.com/YOUR_USERNAME/self-evolution-system/main/l7-config-validation.sh

# 设置权限
chmod +x self-evolution-system.sh l7-config-validation.sh

# 使用
bash self-evolution-system.sh
```

### 方式3: 作为OpenClaw Skill安装

```bash
# 添加到openclaw.json
{
  "skills": {
    "load": {
      "paths": [
        "~/.openclaw/skills/self-evolution-system"
      ]
    }
  }
}

# 重启Gateway
openclaw gateway restart
```

## 🎯 快速使用

在任何"小龙虾"上：

```bash
# 1. 下载脚本
wget https://raw.githubusercontent.com/YOUR_USERNAME/self-evolution-system/main/self-evolution-system.sh

# 2. 运行
bash self-evolution-system.sh
```

## 📚 文档

完整文档请查看：
- [部署指南](https://github.com/YOUR_USERNAME/self-evolution-system/blob/main/docs/deploy-guide.md)
- [架构说明](https://github.com/YOUR_USERNAME/self-evolution-system/blob/main/docs/architecture.md)

---

**上传后，您的自我进化系统就可以在任何地方使用了！** 🚀
