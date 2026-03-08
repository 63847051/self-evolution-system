# 🧬 自自我进化系统

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenClaw](https://img.shields.io/badge/OpenClaw-2026.2.26-orange.svg)](https://github.com/openclaw/openclaw)
[![Python](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)

让您的 OpenClaw Agent 拥有自动进化能力

[English](README.md) | [简体中文](README_CN.md)

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

### 🚀 完全自动化
- 每次心跳自动运行，无需人工干预
- 6步完整进化流程
- 零配置，开箱即用

### 🔄 协同进化
- 4个独立系统协同工作
- 数据在系统间自由流动
- 1+1+1+1 > 4 的效果

### 🛡️ 预防为主
- L7 配置验证层预防配置错误
- 6层防护系统实时监控
- 问题发生前就预防

### 🧠 持续学习
- 从每次错误中学习
- 积累最佳实践
- 生成进化报告

### 🔧 自我修复
- 安全错误自动修复
- 配置问题自动纠正
- 系统自动恢复

---

## 🚀 快速开始（5分钟）

### 安装

```bash
# 1. 克隆仓库
git clone https://github.com/63847051/self-evolution-system.git
cd self-evolution-system

# 2. 复制脚本到工作区
cp self-evolution-system.sh ~/.openclaw/workspace/scripts/
cp l7-config-validation.sh ~/.openclaw/workspace/scripts/

# 3. 添加执行权限
chmod +x ~/.openclaw/workspace/scripts/self-evolution-system.sh
chmod +x ~/.openclaw/workspace/scripts/l7-config-validation.sh

# 4. 更新心跳配置
cat >> ~/.openclaw/workspace/HEARTBEAT.md << 'EOF'

## 🧬 自我进化系统

bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
EOF

# 5. 测试
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 验证

```bash
# 运行系统
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh

# 预期输出：
# 🧬 自我进化系统启动...
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
【L7配置验证】预防配置错误
    ↓
【6层防护系统】检测异常
    ↓
【PAI学习系统】深度分析
    ↓
【超级大脑】进化决策
    ↓
【memu-engine】知识存储
    ↓
我变得更强！🧬
```

---

## 📖 文档

- [完整部署指南](docs/deploy-guide.md) - 详细部署说明
- [系统架构说明](docs/architecture.md) - 架构设计
- [数据采集模块](docs/scrapling-integration.md) - Scrapling集成
- [安全技能审核](docs/skill-vetting-integration.md) - Trail of Bits审核标准
- [API 文档](docs/api.md) - API参考
- [示例代码](examples/) - 使用示例

---

## 🛠️ 高级用法

### 自定义配置

```bash
# 编辑心跳频率
# ~/.openclaw/workspace/openclaw.json
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

### 查看日志

```bash
# 查看进化日志
cat ~/.openclaw/workspace/.evolution/evolution.log

# 查看学习记录
ls -la ~/.openclaw/workspace/.learnings/

# 查看进化报告
cat ~/.openclaw/workspace/.learnings/evolution_report_*.md
```

---

## 🤝 贡献

欢迎贡献！请查看 [贡献指南](CONTRIBUTING.md)

---

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

---

## 🌟 展望

### v1.0 (当前)
- ✅ 4个系统整合
- ✅ L7配置验证
- ✅ 自动进化流程

### v2.0 (计划中)
- ⏳ Web监控面板
- ⏳ 更多修复规则
- ⏳ 跨服务器同步

### v3.0 (愿景)
- ⏳ 自主进化
- ⏳ 自动发布进化资产
- ⏳ 多Agent协作

---

## 📞 支持

- 问题反馈: [GitHub Issues](https://github.com/63847051/self-evolution-system/issues)
- 讨论交流: [GitHub Discussions](https://github.com/63847051/self-evolution-system/discussions)

---

**让您的 Agent 持续进化，变得更强！** 🧬✨

Made with ❤️ by OpenClaw Community
