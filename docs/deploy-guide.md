# 📖 自我进化系统 - 完整部署指南

本指南将帮助你在任何OpenClaw环境（"小龙虾"）上部署自我进化系统。

---

## 📋 前置要求

- OpenClaw已安装（版本 >= 2026.2.26）
- Bash shell
- Python 3.10+
- systemctl（用户级）
- 工作区权限

---

## 🚀 快速部署（5分钟）

### 步骤1: 下载脚本

```bash
# 方式1: 克隆仓库
git clone https://github.com/63847051/self-evolution-system.git
cd self-evolution-system

# 方式2: 直接下载
wget https://raw.githubusercontent.com//63847051/self-evolution-system/main/self-evolution-system.sh
wget https://raw.githubusercontent.com//63847051/self-evolution-system/main/l7-config-validation.sh
```

### 步骤2: 安装脚本

```bash
# 复制到工作区
cp self-evolution-system.sh ~/.openclaw/workspace/scripts/
cp l7-config-validation.sh ~/.openclaw/workspace/scripts/

# 添加执行权限
chmod +x ~/.openclaw/workspace/scripts/self-evolution-system.sh
chmod +x ~/.openclaw/workspace/scripts/l7-config-validation.sh
```

### 步骤3: 集成到心跳

```bash
# 更新心跳配置
cat >> ~/.openclaw/workspace/HEARTBEAT.md << 'EOF'

## 🧬 自我进化系统

bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
EOF
```

### 步骤4: 测试

```bash
# 运行测试
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh

# 检查输出，应该看到：
# ✅ L7验证通过
# ✅ 防护系统正常
# ✅ PAI学习完成
# ✅ SES进化完成
# ✅ memu记忆已存储
```

---

## 🔧 高级配置

### 调整心跳频率

编辑 `~/.openclaw/workspace/openclaw.json`:

```json
{
  "agents": {
    "defaults": {
      "heartbeat": {
        "every": "15m"  // 改为15分钟
      }
    }
  }
}
```

### 启用/禁用组件

编辑 `self-evolution-system.sh`，注释掉不需要的步骤：

```bash
# 不需要PAI学习，注释掉步骤4
# echo "🧠 步骤4: PAI深度学习..."
```

---

## 📊 验证部署

### 检查文件

```bash
# 检查脚本存在
ls -la ~/.openclaw/workspace/scripts/self-evolution-system.sh
ls -la ~/.openclaw/workspace/scripts/l7-config-validation.sh

# 检查权限
ls -l ~/.openclaw/workspace/scripts/self-evolution-system.sh
# 应该显示 -rwxr-xr-x
```

### 检查日志

```bash
# 查看进化日志
cat ~/.openclaw/workspace/.evolution/evolution.log

# 检查进化记录
ls -la ~/.openclaw/workspace/.learnings/errors/
ls -la ~/.openclaw/workspace/.learnings/evolution_report_*.md
```

---

## 🆘 故障排除

### 问题1: 脚本没有执行权限

```bash
chmod +x ~/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 问题2: PAI工作流不存在

这是正常的，系统会跳过PAI步骤。

### 问题3: 心跳没有触发

```bash
# 检查心跳配置
grep "self-evolution-system" ~/.openclaw/workspace/HEARTBEAT.md

# 手动触发
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 问题4: Gateway重启失败

```bash
# 检查配置文件
openclaw config validate

# 查看日志
journalctl --user -u openclaw-gateway -n 50
```

---

## ✅ 部署完成

你的自我进化系统现在已经运行！

### 查看效果

```bash
# 查看最新进化报告
cat ~/.openclaw/workspace/.learnings/evolution_report_*.md | tail -20

# 查看学习统计
ls -la ~/.openclaw/workspace/.pai-learning/signals/
```

---

## 🎯 下一步

- 监控系统运行效果
- 查看进化报告
- 优化自动修复规则
- 提升自动化程度

---

**部署完成后，系统将持续自动进化！** 🧬✨
