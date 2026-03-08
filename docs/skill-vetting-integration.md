# 🛡️ 安全技能审核模块

基于Trail of Bits的专业技能审核标准，为自我进化系统添加安全技能审核能力。

---

## 🎯 功能

- 技能安全审核
- 代码质量检查
- 后门和恶意hook检测
- 技能归属验证

---

## 🔒 Trail of Bits审核标准

### 审查流程

1. **代码审查** - 每一行代码都经过审查
2. **安全检查** - 检查后门和恶意hooks
3. **质量把关** - 验证技能质量
4. **归属验证** - 确认来源和修改

### 审批的marketplace

- trailofbits/skills - 原创安全技能
- trailofbits/skills-curated - 社区技能
- anthropics/claude-plugins-official - Anthropic官方
- openai/skills - OpenAI官方
- obra/superpowers - 高级工作流
- ghostsecurity/skills - 应用安全测试

---

## 🚀 使用方法

### 集成到自我进化系统

```bash
# 审核技能库
bash ~/.openclaw/workspace/scripts/skill-vetting.sh <skill-path>

# 审查单个技能
bash ~/.openclaw/workspace/scripts/skill-vetting.sh --single <skill-name>
```

### 审核检查项

#### 安全检查
- ✅ 无后门代码
- ✅ 无恶意hooks
- ✅ 无危险操作
- ✅ 权限最小化

#### 质量检查
- ✅ 代码结构清晰
- ✅ 错误处理完善
- ✅ 文档完整
- ✅ 测试覆盖

#### 归属检查
- ✅ 来源明确
- ✅ 许可证合规
- ✅ 修改记录清晰

---

## 📚 已审批的技能

### 开发工具
- planning-with-files - 文件规划
- python-code-simplifier - Python简化
- react-pdf - PDF生成
- skill-extractor - 技能提取

### 安全工具
- ffuf-web-fuzzing - Web模糊测试
- ghidra-headless - 逆向工程
- scv-scan - Solidity审计
- security-awareness - 安全意识
- wooyun-legacy - 漏洞测试

### 研究工具
- last30days - 最近30天研究
- x-research - X搜索

### 写作工具
- humanizer - 文本人性化

---

## 💡 审核最佳实践

### 提交新技能

1. **从已审批的marketplace安装**
2. **提交PR到技能仓库**
3. **包含归属** - 说明来源和修改
4. **代码审查** - 每一行都会被审查
5. **合并后可用**

### 技能设计指南

遵循 `CLAUDE.md` 中的指南：
- ✅ 清晰的README
- ✅ 完整的文档
- ✅ 安全的代码
- ✅ 明确的归属

---

## 🔧 集成到工作流

### 在进化流程中使用

```bash
# 自我进化系统会自动审核新技能
# 检查安全性、质量、归属
```

### 人工审核

```bash
# 查看技能审核状态
cat ~/.openclaw/workspace/.skills-vetting/approved-skills.json
```

---

## 📚 参考资料

- [Trail of Bits Blog](https://blog.trailofbits.com/)
- [Skills Curated Repository](https://github.com/trailofbits/skills-curated)
- [CLAUDE.md Guide](https://github.com/trailofbits/skills-curated/blob/main/CLAUDE.md)

---

**集成Trail of Bits的专业审核标准，让技能更安全！** 🛡️✨
