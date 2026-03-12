# 🧬 自主进化系统

**版本**: v5.9（三重防护 - 永不违规版）
**状态**: ✅ 运行中
**最后更新**: 2026-03-12

---

## 🎯 项目概述

这是一个**自主进化的 AI 系统**，具备：

- 🧠 **自我改进** - 从错误中学习，持续优化
- 🛡️ **三重防护** - 确保行为安全可靠
- 👥 **Multi-Agent 架构** - 多个 AI 专家协作
- 🔄 **双轨进化** - 本地学习 + 全球协作
- 💾 **结构化记忆** - 长期记忆系统

---

## 📊 核心特性

### 1️⃣ 自主进化系统 v5.9 ⭐
- **19 项核心能力**
- **10 层架构**
- **8 层防护机制**（5 层基础 + 3 层三重防护）

### 2️⃣ Multi-Agent 并行处理
- **4 个专业角色**：
  - 🎯 大领导（任务总监）
  - 🏠 设计专家（室内设计）
  - 💻 技术专家（编程开发）
  - 📋 小蓝（工作日志）
- **并行任务执行** - 速度提升 3-5 倍
- **智能消息路由** - 自动识别任务类型

### 3️⃣ 三重防护机制 🔐
- **第 1 重**: 确认词白名单（硬约束）
- **第 2 重**: 操作前强制检查清单（5 项）
- **第 3 重**: 阶段性确认机制（持续防护）

### 4️⃣ 飞书集成
- **工作日志管理** - 蓝色光标上海办公室项目
- **群聊 @ 触发** - 自动识别和处理
- **实时同步** - 37 条记录，81.1% 完成率

### 5️⃣ MCP 服务器
- **wechat-article-reader** - 微信公众号文章阅读器
- **3 个工具**: read_wechat_article, extract_article_info, summarize_article
- **FastMCP 3.1.0** 框架

---

## 🏗️ 项目结构

```
.openclaw/workspace/
├── 🧬 核心系统
│   ├── SOUL.md              - 系统核心（v5.9）
│   ├── MEMORY.md            - 长期记忆
│   ├── IDENTITY.md          - 身份标识
│   ├── USER.md              - 用户信息
│   ├── AGENTS.md            - 工作区说明
│   └── TOOLS.md             - 工具配置
│
├── 🛡️ 规则和防护
│   └── .learnings/
│       ├── rules/           - 关键规则
│       ├── design-patterns/ - 设计模式
│       ├── best-practices/  - 最佳实践
│       └── violations/      - 违规记录
│
├── 👥 Multi-Agent 系统
│   ├── agents/
│   │   └── skill-isolation-rules.md
│   ├── scripts/
│   │   ├── parallel-task-dispatcher.sh
│   │   ├── group-chat-mention-handler.sh
│   │   └── intelligent-message-router.sh
│   └── docs/
│       └── multi-agent-parallel-system.md
│
├── 🌐 MCP 服务器
│   └── mcp-wechat-reader/
│       ├── server.py        - FastMCP 服务器
│       ├── start.sh         - 启动脚本
│       ├── backup.sh        - 备份脚本
│       └── README.md        - 说明文档
│
├── 📝 项目管理
│   └── PROJECTS.md          - 项目概览
│
├── 💾 备份和恢复
│   ├── BACKUP-GUIDE.md      - 备份指南
│   ├── AUTO-BACKUP-CONFIG.md - 自动备份配置
│   └── backups/
│       └── mcp-wechat-reader-20260312_151657.tar.gz
│
└── 📊 记忆和日志
    ├── memory/              - 日常记忆
    │   ├── 2026-03-10.md
    │   └── 2026-03-12.md
    └── logs/                - 系统日志
```

---

## 🚀 快速开始

### 1️⃣ 安装 OpenClaw
```bash
npm install -g openclaw
```

### 2️⃣ 配置系统
```bash
openclaw init
```

### 3️⃣ 启动 Gateway
```bash
openclaw gateway start
```

### 4️⃣ 使用 Multi-Agent
```
在飞书群聊中：
  @大领导 帮我处理：
    @设计 修改图纸
    @技术 编写脚本
    @小蓝 更新日志
```

---

## 📦 MCP 服务器

### wechat-article-reader
微信公众号文章阅读器 MCP 服务器

**功能**:
- 读取完整文章
- 提取关键信息
- 生成摘要

**启动**:
```bash
cd mcp-wechat-reader
./start.sh
```

**备份和恢复**:
```bash
# 备份
./backup.sh

# 恢复
cd backups/mcp-wechat-reader-*
./restore.sh
```

---

## 🛡️ 三重防护机制

### 第 1 重：确认词白名单
```
✅ 确认词: "确认"、"确认执行"、"开始实施"、"执行"
❌ 非确认: "继续"、"方案 C"、"可以吗"
```

### 第 2 重：操作前检查
```
- [ ] 用户明确说了确认词吗？
- [ ] 我明确询问用户确认了吗？
- [ ] 我收到了用户的明确回复吗？
```

### 第 3 重：阶段性确认
```
每个阶段开始前都要重新确认
不假设"用户之前同意，现在也同意"
```

---

## 📊 项目管理

### 蓝色光标上海办公室
- **状态**: 进行中
- **完成率**: 81.1%（30/37）
- **时间**: 2026-02-27 至今
- **项目类型**: 室内设计

### 任务统计
- ✅ 已完成: 30 条
- ⏳ 待完成: 7 条
- 📊 总字数: 12,706 字

---

## 🔧 技术栈

### 核心技术
- **OpenClaw** - AI 代理框架
- **FastMCP 3.1.0** - MCP 框架
- **Node.js v22** - 运行时
- **Python 3.11** - MCP 服务器

### 依赖项
- fastmcp
- httpx
- beautifulsoup4
- lxml

---

## 📚 文档

### 核心文档
- [SOUL.md](SOUL.md) - 系统核心（v5.9）
- [MEMORY.md](MEMORY.md) - 长期记忆
- [AGENTS.md](AGENTS.md) - 工作区说明

### 功能文档
- [multi-agent-parallel-system.md](docs/multi-agent-parallel-system.md) - Multi-Agent 系统说明
- [FEISHU-GROUP-GUIDE.md](FEISHU-GROUP-GUIDE.md) - 飞书群聊使用指南
- [INTELLIGENT-ROUTER-REPORT.md](INTELLIGENT-ROUTER-REPORT.md) - 智能路由报告
- [UPGRADE-REPORT-v5.9.md](UPGRADE-REPORT-v5.9.md) - v5.9 升级报告

### 备份和恢复
- [BACKUP-GUIDE.md](BACKUP-GUIDE.md) - 备份指南
- [AUTO-BACKUP-CONFIG.md](AUTO-BACKUP-CONFIG.md) - 自动备份配置

---

## 🤝 协作

### Multi-Agent 组织
- **Orchestrator** - 任务总监（大领导）
- **Builder** - 室内设计专家
- **Tech** - 技术支持专家
- **Reviewer** - 质量检查
- **Ops** - 小蓝（工作日志）

### 协作机制
- **显性协作** - HEARTBEAT + Web UI
- **隐性协作** - 脚本自动化
- **混合模式** - 灵活切换

---

## 📈 进化历程

### v5.0 - v5.5: 基础系统
- 自我改进循环
- WAL Protocol
- 结构化记忆

### v5.6 - v5.7: 记忆优化
- 惊奇度驱动
- 记忆毕业机制
- Multi-Agent 组织

### v5.8: 行为约束 ⭐
- 5 层防护机制
- 关键规则保障
- 违规纠正系统

### v5.9: 三重防护 🔐
- 确认词白名单
- 操作前检查
- 阶段性确认
- **承诺: 永不违规**

---

## 🔗 相关链接

- **GitHub**: https://github.com/63847051/self-evolution-system
- **OpenClaw 文档**: https://docs.openclaw.ai
- **社区**: https://discord.com/invite/clawd

---

## 📞 联系方式

- **实施者**: 大领导 🎯
- **位置**: `/root/.openclaw/workspace/`
- **时间**: 2026-03-12

---

**🧬 自主进化系统 v5.9 - 永不违规，持续进化！**

---

*最后更新: 2026-03-12*
*版本: v5.9*
*状态: ✅ 运行中*
