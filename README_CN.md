# 🧬 自我进化系统

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenClaw](https://img.shields.io/badge/OpenClaw-2026.2.26-orange.svg)](https://github.com/openclaw/openclaw)
[![Python](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)

让您的 OpenClaw Agent 拥有自动进化能力

[English](README_EN.md) | [简体中文](README_CN.md)

---

## 🎯 简介

**自我进化系统** 是一个整合了 PAI 学习、超级进化大脑、 6 层防护和 memu-engine 的统一系统，让您的 Agent 能够：

- 🔍 **自动检测错误** - 实时监控系统状态
- 🧠 **自动学习改进** - 从每次错误中学习
- 🔧 **自动修复问题** - 安全问题自动修复
- 💾 **自动积累知识** - 知识永久存储
- 🛡️ **自动预防未来** - L7配置验证层

---

## ✨ 核心特性

- **完全自动化**: 每次心跳自动运行，无需人工干预
- **协同进化**: 4个系统协同工作，数据自由流动
- **预防为主**: L7 配置验证层预防配置错误
- **持续学习**: 从每次错误中学习，积累知识
- **自我修复**: 安全错误自动修复

---

## 🚀 快速开始（5分钟）

### 安装

```bash
# 1. 复制脚本到工作区
cd ~/.openclaw/workspace/scripts

# 2. 添加执行权限
chmod +x self-evolution-system.sh l7-config-validation.sh

# 3. 更新心跳配置
cat >> ~/.openclaw/workspace/HEARTBEAT.md << 'EOF'

## 🧬 自我进化系统

bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
EOF

# 4. 测试
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 验证

```bash
# 运行系统
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh

# 预期输出：
# ✅ L7验证通过
# ✅ 防护系统正常
# ✅ PAI学习完成
# ✅ SES进化完成
# ✅ memu记忆已存储
# 我变得更强了！🧬
```

---

## 🎯 工作原理

```
心跳触发（每30分钟）
    ↓
【L7配置验证】预防
    ↓
【6层防护系统】检测
    ↓
【PAI学习系统】理解
    ↓
【超级大脑】决策
    ↓
【memu-engine】存储
    ↓
我变得更强！
```

---

## 📚 文档

- [完整部署指南](docs/deploy-guide.md)
- [系统架构说明](docs/architecture.md)
- [数据采集模块](docs/scrapling-integration.md) - Scrapling集成
- [API 文档](docs/api.md)

---

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

---

**让您的 Agent 持续进化，变得更强！** 🧬✨
