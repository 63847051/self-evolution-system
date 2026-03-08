# 🧬 自我进化系统 v2.0

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenClaw](https://img.shields.io/badge/OpenClaw-2026.2.26-orange.svg)](https://github.com/openclaw/openclaw)
[![Python](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![Version](https://img.shields.io/badge/version-2.0-brightgreen.svg)](https://github.com/63847051/self-evolution-system)

让您的 OpenClaw Agent 拥有自动进化能力

[English](README_EN.md) | [简体中文](README_CN.md)

---

## 🎯 简介

**自我进化系统 v2.0** 是一个整合了 PAI 学习、超级进化大脑、6 层防护、memu-engine 和错误模式分析的统一系统，让您的 Agent 能够：

- 🔍 **自动检测错误** - 实时监控系统状态
- 🧠 **自动学习改进** - 从每次错误中学习
- 🔧 **自动修复问题** - 安全问题自动修复
- 💾 **自动积累知识** - 知识永久存储
- 🛡️ **自动预防未来** - L7配置验证层
- 📊 **自动分析模式** - 识别重复错误模式 ⭐ v2.0新增
- 📝 **自动生成报告** - 完整的进化报告 ⭐ v2.0新增

---

## ✨ v2.0 新特性

### 🎯 错误模式分析
- 自动分析历史错误
- 识别重复模式
- 提取根本原因
- 生成改进建议

### 📝 自动错误记录
- 检测最近10分钟错误
- 自动记录到文件
- 准备PAI分析

### 📊 增强进化报告
- 系统状态概览
- 最佳实践总结
- 待办事项清单
- 完整的进化历程

### 🔧 L7配置验证增强
- API Key格式验证
- Provider配置检查
- 自动修复建议

---

## 🚀 核心特性

### 完全自动化
- 每次心跳自动运行，无需人工干预
- 8步完整进化流程（v1.0: 6步）
- 零配置，开箱即用

### 协同进化
- 5个独立系统协同工作（v1.0: 4个）
- 数据在系统间自由流动
- 1+1+1+1+1 > 5 的效果

### 预防为主
- L7 配置验证层预防配置错误
- 6层防护系统实时监控
- 问题发生前就预防

### 持续学习
- 从每次错误中学习
- 积累最佳实践
- 生成进化报告
- 分析错误模式 ⭐ v2.0

### 自我修复
- 安全错误自动修复
- 配置问题自动纠正
- 系统自动恢复

---

## 📦 安装

### 快速安装

```bash
# 下载脚本
wget https://raw.githubusercontent.com/63847051/self-evolution-system/main/self-evolution-system.sh

# 添加执行权限
chmod +x self-evolution-system.sh

# 运行
./self-evolution-system.sh
```

### 完整安装

```bash
# 克隆仓库
git clone https://github.com/63847051/self-evolution-system.git
cd self-evolution-system

# 复制脚本
cp self-evolution-system.sh /root/.openclaw/workspace/scripts/
cp l7-config-validation.sh /root/.openclaw/workspace/scripts/
cp analyze-error-patterns.sh /root/.openclaw/workspace/scripts/

# 添加执行权限
chmod +x /root/.openclaw/workspace/scripts/*.sh

# 运行
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

---

## 🔧 使用方法

### 1. 手动运行

```bash
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 2. 添加到心跳

在 `HEARTBEAT.md` 中添加：

```markdown
## 🧬 自我进化系统

每次心跳时自动执行：
```bash
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```
```

### 3. 定时运行

```bash
# 添加到 crontab
crontab -e

# 每小时运行一次
0 * * * * bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

---

## 📋 进化流程

### v2.0 完整流程（8步）

```
1️⃣ L7配置验证
   └─ 预防配置错误

2️⃣ 6层防护检测
   └─ 保护系统运行

3️⃣ 检查最近错误 ⭐新增
   └─ 自动记录错误

4️⃣ PAI深度学习
   └─ 分析错误模式

5️⃣ 超级大脑进化
   └─ 决策改进方案

6️⃣ 错误模式分析 ⭐新增
   └─ 提取最佳实践

7️⃣ memu-engine存储
   └─ 永久保存知识

8️⃣ 生成进化报告 ⭐新增
   └─ 总结进化成果
```

---

## 📚 文档

- [部署指南](docs/deploy-guide.md)
- [架构说明](docs/architecture.md)
- [工作流程优化](docs/workflow-optimization.md) ⭐ v2.0新增
- [错误模式分析](docs/error-pattern-analysis.md) ⭐ v2.0新增
- [使用示例](examples/usage-examples.md)

---

## 🆕 v2.0 更新内容

### 新增功能
- ✅ 错误模式分析（步骤6）
- ✅ 自动错误记录（步骤3）
- ✅ 增强进化报告（步骤8）

### 改进功能
- ✅ L7配置验证（v1.1）
- ✅ 错误检测增强
- ✅ PAI学习改进

### 新增文档
- ✅ 工作流程优化指南
- ✅ 错误模式分析报告
- ✅ 最佳实践文档

### 性能提升
- 📈 功能增加：6步 → 8步（+33%）
- 📈 代码增加：5.4KB → 8.4KB（+55%）
- 📈 智能提升：检测 → 分析

---

## 🔗 相关项目

- [OpenClaw](https://github.com/openclaw/openclaw) - AI Agent框架
- [memu-engine](https://github.com/yourusername/memu-engine) - 记忆引擎
- [PAI Learning](https://github.com/yourusername/pai-learning) - 学习系统

---

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE)

---

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

## 📮 联系方式

- GitHub: [@63847051](https://github.com/63847051)
- Email: your@email.com

---

## 🌟 Star History

如果这个项目对您有帮助，请给个 Star ⭐

---

**v2.0 - 让AI Agent真正实现自我进化！** 🧬✨
