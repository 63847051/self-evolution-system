# 🧬 自我进化系统

让您的 OpenClaw Agent 拥有自动进化能力

## 🎯 简介

**自我进化系统** 是一个整合了 PAI 学习、超级进化大脑、6 层防护和 memu-engine 的统一系统，让您的 Agent 能够：

- 🔍 自动检测错误
- 🧠 自动学习改进
- 🔧 自动修复问题
- 💾 自动积累知识
- 🛡️ 自动预防未来

## ✨ 核心特性

- **完全自动化**: 每次心跳自动运行，无需人工干预
- **协同进化**: 4个系统协同工作，数据自由流动
- **预防为主**: L7 配置验证层预防配置错误
- **持续学习**: 从每次错误中学习，积累知识
- **自我修复**: 安全错误自动修复

## 📦 包含组件

1. **`self-evolution-system.sh`** - 统一调度器（核心）
2. **`l7-config-validation.sh`** - L7 配置验证层
3. **README.md`** - 使用文档
4. `LICENSE`** - MIT 许可证

## 🚀 快速开始

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

## 📚 文档

- [完整部署指南](docs/deploy-guide.md)
- [系统架构说明](docs/architecture.md)
- [API 文档](docs/api.md)

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

---

**让您的 Agent 持续进化，变得更强！** 🧬✨
