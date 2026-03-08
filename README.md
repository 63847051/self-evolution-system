# 🧬 自我进化系统 v4.0

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenClaw](https://img.shields.io/badge/OpenClaw-2026.2.26-orange.svg)](https://github.com/openclaw/openclaw)
[![Python](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![Version](https://img.shields.io/badge/version-4.0-brightgreen.svg)](https://github.com/63847051/self-evolution-system)

让您的 OpenClaw Agent 拥有自动进化能力和主动行为

[English](README_EN.md) | [简体中文](README_CN.md)

---

## 🎯 简介

**自我进化系统 v4.0** 是一个整合了 PAI 学习、超级进化大脑、6 层防护、memu-engine、错误模式分析、**四步自我改进循环**和**WAL Protocol**的终极系统，让您的 Agent 能够：

- 🔍 **自动检测错误** - 实时监控系统状态
- 🧠 **自动学习改进** - 从每次错误中学习
- 🔧 **自动修复问题** - 安全问题自动修复
- 💾 **自动积累知识** - 知识永久存储
- 🛡️ **自动预防未来** - L7配置验证层
- 📊 **自动分析模式** - 识别重复错误模式
- 📝 **自动生成报告** - 完整的进化报告
- 🔄 **四步自我改进** - Reflect → Criticize → Learn → Organize
- 📝 **WAL Protocol** - 状态持久化和恢复 ⭐ v4.0新增
- 🚀 **主动行为** - 预期需求，主动建议 ⭐ v4.0新增

---

## ✨ v4.0 新特性

### 🎯 WAL Protocol集成 ⭐ 核心更新

基于 proactive-agent-skill 的 WAL Protocol (Write-Ahead Logging)：

**三层记忆架构**:
1. **SESSION-STATE.md** - 活跃工作记忆（当前任务）
2. **working-buffer.md** - 危险区日志（防止上下文丢失）
3. **MEMORY.md** - 长期记忆（永久知识）

**核心功能**:
- 自动记录所有关键交换
- 自动压缩和归档
- 快速状态恢复
- 防止上下文丢失

### 🚀 增强心跳系统 ⭐ v4.0新增

**整合proactive-agent-skill的主动行为**:
- ✅ 系统健康检查
- ✅ SESSION-STATE恢复
- ✅ working-buffer记录
- ✅ 自动记忆管理
- ✅ 主动行为触发

### 🧠 四步自我改进循环

1. **Reflect（自我反思）** - 评估任务执行质量
2. **Criticize（自我批评）** - 主动找出问题和错误
3. **Learn（提取模式）** - 从错误中学习可复用模式
4. **Organize（组织记忆）** - 自组织知识库

---

## 🚀 核心特性

### 完全自动化
- 每次心跳自动运行，无需人工干预
- 8步进化流程 + 4步自我改进循环 + WAL Protocol
- 零配置，开箱即用

### 三层进化架构
- **外循环**: 8步进化流程
- **内循环**: 4步自我改进
- **持久层**: WAL Protocol

### 预防为主
- L7 配置验证层预防配置错误
- 6层防护系统实时监控
- WAL Protocol防止上下文丢失
- 问题发生前就预防

### 持续学习
- 从每次错误中学习
- 积累最佳实践
- 生成进化报告
- 分析错误模式
- 自我批评和反思
- 自动组织记忆

### 主动行为
- 预期用户需求
- 主动提供建议
- 自动化重复任务
- 周期性健康检查

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

---

## 🔧 使用方法

### 1. 运行自我进化系统

```bash
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 2. 使用WAL Protocol ⭐ v4.0新增

```bash
# 初始化任务
bash /root/.openclaw/workspace/scripts/wal-protocol-automation.sh init "任务名" "描述"

# 记录到working-buffer
bash /root/.openclaw/workspace/scripts/wal-protocol-automation.sh log "标题" "用户消息" "响应" "状态"

# 每日整理
bash /root/.openclaw/workspace/scripts/wal-protocol-automation.sh daily

# 恢复状态
bash /root/.openclaw/workspace/scripts/wal-protocol-automation.sh restore
```

### 3. 四步自我改进循环

```bash
bash /root/.openclaw/workspace/scripts/ses-post-task-eval-v3.sh
```

---

## 📋 v4.0 完整流程

### WAL Protocol流程

```
【任务开始】
    ↓
【初始化SESSION-STATE.md】
    ├→ 记录任务名
    ├→ 记录开始时间
    └→ 记录目标
    ↓
【执行中】
    ↓
【记录到working-buffer.md】
    ├→ 记录用户消息
    ├→ 记录系统响应
    └→ 记录状态
    ↓
【任务完成】
    ↓
【压缩和归档】
    ├→ 提取关键信息
    ├→ 更新MEMORY.md
    └→ 归档到memory/YYYY-MM-DD.md
```

### 双循环进化 + WAL

```
【任务完成】
    ↓
【WAL Protocol持久化】 ⭐ v4.0
    ├→ SESSION-STATE.md
    ├→ working-buffer.md
    └→ MEMORY.md
    ↓
【v3.0: 8步进化流程】
    ↓
【v3.0: 4步自我改进】
    ├→ Reflect
    ├→ Criticize
    ├→ Learn
    └→ Organize
    ↓
【永久改进】
```

---

## 📚 文档

- [部署指南](docs/deploy-guide.md)
- [架构说明](docs/architecture.md)
- [工作流程优化](docs/workflow-optimization.md)
- [错误模式分析](docs/error-pattern-analysis.md)
- [v3.0集成报告](docs/v3-integration-report.md)
- [proactive-agent整合报告](docs/proactive-agent-integration.md) ⭐ v4.0新增
- [WAL Protocol指南](docs/wal-protocol-guide.md) ⭐ v4.0新增
- [使用示例](examples/usage-examples.md)

---

## 🆕 v4.0 更新内容

### 核心更新 ⭐⭐⭐⭐⭐

#### WAL Protocol集成
基于 proactive-agent-skill 的核心思想：

**三层记忆**:
- SESSION-STATE.md - 当前任务状态
- working-buffer.md - 危险区日志
- MEMORY.md - 长期记忆

**核心功能**:
- 自动状态恢复
- 防止上下文丢失
- 自动压缩归档

#### 增强心跳系统 ⭐⭐⭐⭐⭐

**新增功能**:
- SESSION-STATE自动恢复
- working-buffer记录
- 自动记忆管理
- 主动行为触发

#### 完整的主动行为 ⭐⭐⭐⭐⭐

- 预期用户需求
- 主动提供建议
- 自动化重复任务
- 周期性健康检查

### 功能对比

| 功能 | v3.0 | v4.0 | 提升 |
|------|------|------|------|
| **进化流程** | 8步+4步 | 8步+4步+WAL | 📝 |
| **状态持久化** | ❌ | ✅ WAL Protocol | 🆕 |
| **主动行为** | ❌ | ✅ 系统化 | 🆕 |
| **记忆管理** | 自动 | 更智能 | 🤖 |
| **上下文保护** | 弱 | 强 | 🛡️ |

---

## 📊 版本历史

### [4.0.0] - 2026-03-08 🎉 重大更新 - WAL Protocol + 主动行为

#### 核心更新
- ✅ 集成proactive-agent-skill的WAL Protocol
- ✅ 三层记忆架构
- ✅ 增强心跳系统
- ✅ 主动行为系统

#### 新增脚本
- ✅ `wal-protocol-automation.sh` - WAL Protocol自动化
- ✅ `HEARTBEAT-v4.md` - 增强版心跳配置

#### 新增文档
- ✅ `docs/proactive-agent-integration.md` - proactive整合报告
- ✅ `docs/wal-protocol-guide.md` - WAL Protocol指南

### [3.0.0] - 2026-03-08

#### 核心更新
- ✅ 四步自我改进循环
- ✅ 自我批评机制
- ✅ 自组织记忆系统
- ✅ 增强版任务后评估

### [2.0.0] - 2026-03-08

#### 新增功能
- ✅ 错误模式分析系统
- ✅ 自动错误记录
- ✅ 增强进化报告

### [1.0.0] - 2026-03-08

#### 首次发布
- ✅ 整合PAI学习、超级进化大脑、6层防护、memu-engine
- ✅ L7配置验证层
- ✅ 完整的6步进化流程

---

## 🔗 相关项目

- [OpenClaw](https://github.com/openclaw/openclaw) - AI Agent框架
- [ivangdavila/self-improving](https://clawhub.ai/ivangdavila/self-improving) - 四步自我改进循环灵感来源
- [proactive-agent-skill](https://lobehub.com/skills/openclaw-skills-proactive-agent) - WAL Protocol灵感来源
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

---

## 🌟 Star History

如果这个项目对您有帮助，请给个 Star ⭐

---

**v4.0 - WAL Protocol + 主动行为，让AI Agent真正实现自主进化！** 🧬✨
