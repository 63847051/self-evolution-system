# 🧬 自我进化系统 v3.0

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenClaw](https://img.shields.io/badge/OpenClaw-2026.2.26-orange.svg)](https://github.com/openclaw/openclaw)
[![Python](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![Version](https://img.shields.io/badge/version-3.0-brightgreen.svg)](https://github.com/63847051/self-evolution-system)

让您的 OpenClaw Agent 拥有自动进化能力

[English](README_EN.md) | [简体中文](README_CN.md)

---

## 🎯 简介

**自我进化系统 v3.0** 是一个整合了 PAI 学习、超级进化大脑、6 层防护、memu-engine、错误模式分析和**四步自我改进循环**的统一系统，让您的 Agent 能够：

- 🔍 **自动检测错误** - 实时监控系统状态
- 🧠 **自动学习改进** - 从每次错误中学习
- 🔧 **自动修复问题** - 安全问题自动修复
- 💾 **自动积累知识** - 知识永久存储
- 🛡️ **自动预防未来** - L7配置验证层
- 📊 **自动分析模式** - 识别重复错误模式
- 📝 **自动生成报告** - 完整的进化报告
- 🔄 **四步自我改进** - Reflect → Criticize → Learn → Organize ⭐ v3.0新增

---

## ✨ v3.0 新特性

### 🎯 四步自我改进循环 ⭐ 核心更新

基于 ivangdavila/self-improving 的核心思想，v3.0 引入了完整的四步自我改进循环：

1. **Reflect（自我反思）** - 评估任务执行质量
2. **Criticize（自我批评）** - 主动找出问题和错误
3. **Learn（提取模式）** - 从错误中学习可复用模式
4. **Organize（组织记忆）** - 自组织知识库

### 🧠 自我批评机制 ⭐⭐⭐⭐⭐

- 系统化的自我批评流程
- 自动识别问题
- 生成改进建议
- 永久记录所有批评

### 🗂️ 自组织记忆系统 ⭐⭐⭐⭐⭐

- 按主题分类（by-topic）
- 按严重程度分类（by-severity: high/medium/low）
- 按频率排序（by-frequency: high/medium/low）
- 自动生成记忆索引

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
- 8步进化流程 + 4步自我改进循环
- 零配置，开箱即用

### 双循环进化
- **外循环**: 8步进化流程（v2.0）
- **内循环**: 4步自我改进（v3.0新增）
- 协同工作，持续优化

### 预防为主
- L7 配置验证层预防配置错误
- 6层防护系统实时监控
- 问题发生前就预防

### 持续学习
- 从每次错误中学习
- 积累最佳实践
- 生成进化报告
- 分析错误模式
- **自我批评和反思** ⭐ v3.0

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

# 复制所有脚本
cp *.sh /root/.openclaw/workspace/scripts/
chmod +x /root/.openclaw/workspace/scripts/*.sh

# 运行v3.0
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

---

## 🔧 使用方法

### 1. 手动运行进化系统

```bash
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

### 2. 运行四步自我改进循环 ⭐ v3.0新增

```bash
# 方式1: 完整的四步循环
bash /root/.openclaw/workspace/scripts/ses-post-task-eval-v3.sh

# 方式2: 单独使用自我批评模块
bash /root/.openclaw/workspace/scripts/self-critique-module.sh "任务描述"

# 方式3: 单独运行自组织记忆
bash /root/.openclaw/workspace/scripts/auto-organize-memory.sh
```

### 3. 添加到心跳

在 `HEARTBEAT.md` 中添加：

```markdown
## 🧬 自我进化系统

每次心跳时自动执行：
```bash
bash /root/.openclaw/workspace/scripts/self-evolution-system.sh
```

## 🔄 四步自我改进循环 ⭐ v3.0核心

```
【任务完成】
    ↓
【阶段1: 自我反思 (Reflect)】
    ├→ 评估任务分配
    ├→ 评估API选择
    ├→ 评估透明化
    ├→ 评估直接答案
    └→ 评估验证
    ↓
【阶段2: 自我批评 (Criticize)】
    ├→ 识别问题
    ├→ 分析原因
    └→ 生成建议
    ↓
【阶段3: 提取模式 (Learn)】
    ├→ 提取错误模式
    ├→ 提取最佳实践
    └→ 生成可复用规则
    ↓
【阶段4: 组织记忆 (Organize)】
    ├→ 按主题分类
    ├→ 按严重程度分类
    ├→ 按频率排序
    └→ 生成索引
    ↓
【永久改进】
```

---

## 📋 v3.0 完整流程

### 外循环：8步进化流程

```
1️⃣ L7配置验证
2️⃣ 6层防护检测
3️⃣ 检查最近错误
4️⃣ PAI深度学习
5️⃣ 超级大脑进化
6️⃣ 错误模式分析
7️⃣ memu-engine存储
8️⃣ 生成进化报告
```

### 内循环：4步自我改进 ⭐ v3.0新增

```
1️⃣ 自我反思 (Reflect)
2️⃣ 自我批评 (Criticize)
3️⃣ 提取模式 (Learn)
4️⃣ 组织记忆 (Organize)
```

---

## 📚 文档

- [部署指南](docs/deploy-guide.md)
- [架构说明](docs/architecture.md)
- [工作流程优化](docs/workflow-optimization.md)
- [错误模式分析](docs/error-pattern-analysis.md)
- [v3.0集成报告](docs/v3-integration-report.md) ⭐ v3.0新增
- [使用示例](examples/usage-examples.md)

---

## 🆕 v3.0 更新内容

### 核心更新 ⭐⭐⭐⭐⭐

#### 四步自我改进循环
基于 ivangdavila/self-improving 的核心思想：

1. **自我批评模块** (`self-critique-module.sh`)
   - 反思任务执行
   - 批评找出问题
   - 提取学习模式
   - 组织知识记忆

2. **自组织记忆系统** (`auto-organize-memory.sh`)
   - 按主题分类
   - 按严重程度分类
   - 按频率排序
   - 生成记忆索引

3. **增强版任务后评估** (`ses-post-task-eval-v3.sh`)
   - 集成四步循环
   - 系统化自我批评
   - 自动模式提取
   - 自组织记忆

### 功能对比

| 功能 | v2.0 | v3.0 | 提升 |
|------|------|------|------|
| **进化流程** | 8步 | 8步 + 4步 | 🔄 双循环 |
| **自我批评** | ❌ | ✅ 系统化 | 🆕 |
| **记忆组织** | 手动 | 自动 | 🤖 |
| **模式提取** | 无 | 自动 | 🧠 |
| **反思评分** | 简单 | 完整 | 📊 |

---

## 📊 版本历史

### [3.0.0] - 2026-03-08 🎉 重大更新

#### 核心更新
- ✅ 集成四步自我改进循环（基于ivangdavila/self-improving）
- ✅ 自我批评机制
- ✅ 自组织记忆系统
- ✅ 增强版任务后评估

#### 新增脚本
- ✅ `self-critique-module.sh` - 自我批评模块
- ✅ `auto-organize-memory.sh` - 自组织记忆系统
- ✅ `ses-post-task-eval-v3.sh` - v3.0任务后评估

#### 新增文档
- ✅ `docs/v3-integration-report.md` - v3.0集成报告

### [2.0.0] - 2026-03-08

#### 新增功能
- ✅ 错误模式分析系统（步骤6）
- ✅ 自动错误记录（步骤3）
- ✅ 增强进化报告（步骤8）

### [1.0.0] - 2026-03-08

#### 首次发布
- ✅ 整合PAI学习、超级进化大脑、6层防护、memu-engine
- ✅ L7配置验证层
- ✅ 完整的6步进化流程

---

## 🔗 相关项目

- [OpenClaw](https://github.com/openclaw/openclaw) - AI Agent框架
- [ivangdavila/self-improving](https://clawhub.ai/ivangdavila/self-improving) - 四步自我改进循环灵感来源
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

**v3.0 - 双循环进化，让AI Agent真正实现自我改进！** 🧬✨
