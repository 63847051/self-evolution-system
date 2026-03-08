# 📚 自我进化系统 - 示例代码

本文档提供了自我进化系统的使用示例。

---

## 🎯 基础用法

### 示例1: 运行完整系统

```bash
#!/bin/bash

# 运行完整的自我进化系统
bash ~/.openclaw/workspace/scripts/self-evolution-system.sh

# 预期输出:
# 🧬 自我进化系统启动...
# ✅ L7验证通过
# ✅ 防护系统正常
# ✅ PAI学习完成
# ✅ SES进化完成
# ✅ memu记忆已存储
# 我变得更强了！🧬
```

---

## 🔍 高级用法

### 示例2: 单独运行L7验证

```bash
#!/bin/bash

# 只运行L7配置验证
bash ~/.openclaw/workspace/scripts/l7-config-validation.sh

# 输出:
# 🔍 L7: 配置验证...
# ✅ API Key格式正确
# ✅ L7验证通过
```

### 示例3: 查看进化日志

```bash
#!/bin/bash

# 查看最近的进化日志
tail -50 ~/.openclaw/workspace/.evolution/evolution.log

# 实时监控日志
tail -f ~/.openclaw/workspace/.evolution/evolution.log
```

### 示例4: 查看进化报告

```bash
#!/bin/bash

# 查看最新的进化报告
LATEST_REPORT=$(ls -t ~/.openclaw/workspace/.learnings/evolution_report_*.md | head -1)
cat "$LATEST_REPORT"

# 或查看所有报告
ls -la ~/.openclaw/workspace/.learnings/evolution_report_*.md
```

---

## 🛠️ 自定义配置

### 示例5: 修改心跳频率

```bash
#!/bin/bash

# 编辑心跳配置
cat > ~/.openclaw/workspace/HEARTBEAT.md << 'EOF'
## 🧬 自我进化系统

# 每15分钟运行一次
*/15 * * * * bash ~/.openclaw/workspace/scripts/self-evolution-system.sh
EOF

# 或修改openclaw.json
python3 << 'PYTHON'
import json

config_path = "~/.openclaw/openclaw.json"
with open(config_path, 'r') as f:
    config = json.load(f)

config['agents']['defaults']['heartbeat']['every'] = "15m"

with open(config_path, 'w') as f:
    json.dump(config, f, indent=2)
PYTHON
```

---

## 📊 数据分析

### 示例6: 分析学习信号

```bash
#!/bin/bash

# 统计学习信号数量
SIGNALS_DIR="$HOME/.openclaw/workspace/.pai-learning/signals"

# 今日信号数量
TODAY=$(date +%Y-%m-%d)
TODAY_COUNT=$(grep -c "$TODAY" "$SIGNALS_DIR"/*.jsonl 2>/dev/null || echo 0)

echo "今日学习信号: $TODAY_COUNT"

# 总信号数量
TOTAL_COUNT=$(wc -l < "$SIGNALS_DIR"/*.jsonl 2>/dev/null || echo 0)
echo "总学习信号: $TOTAL_COUNT"
```

### 示例7: 生成进化统计

```bash
#!/bin/bash

# 生成进化统计报告
ERRORS_DIR="$HOME/.openclaw/workspace/.learnings/errors"
REPORTS_DIR="$HOME/.openclaw/workspace/.learnings"

echo "📊 进化统计报告"
echo "================"
echo ""

# 错误统计
ERROR_COUNT=$(ls -1 "$ERRORS_DIR"/*.md 2>/dev/null | wc -l)
echo "总错误次数: $ERROR_COUNT"

# 进化报告统计
REPORT_COUNT=$(ls -1 "$REPORTS_DIR"/evolution_report_*.md 2>/dev/null | wc -l)
echo "进化报告数: $REPORT_COUNT"

# 最近7天错误
RECENT_ERRORS=$(find "$ERRORS_DIR" -name "*.md" -mtime -7 | wc -l)
echo "最近7天错误: $RECENT_ERRORS"
```

---

## 🔧 故障排除

### 示例8: 手动修复配置

```bash
#!/bin/bash

# 修复常见的配置问题
CONFIG_FILE="$HOME/.openclaw/openclaw.json"

# 检查base_url vs baseUrl
if grep -q '"base_url"' "$CONFIG_FILE"; then
    echo "❌ 发现base_url，正在修复..."
    sed -i 's/"base_url"/"baseUrl"/g' "$CONFIG_FILE"
    echo "✅ 已修复"
fi

# 检查api_key vs apiKey
if grep -q '"api_key"' "$CONFIG_FILE"; then
    echo "❌ 发现api_key，正在修复..."
    sed -i 's/"api_key"/"apiKey"/g' "$CONFIG_FILE"
    echo "✅ 已修复"
fi

# 验证JSON格式
if python3 -c "import json; json.load(open('$CONFIG_FILE'))" 2>/dev/null; then
    echo "✅ JSON格式正确"
else
    echo "❌ JSON格式错误"
fi
```

### 示例9: 重置进化系统

```bash
#!/bin/bash

# 清理进化数据（谨慎使用）
EVOLUTION_DIR="$HOME/.openclaw/workspace/.evolution"
LEARNINGS_DIR="$HOME/.openclaw/workspace/.learnings"

# 备份当前数据
BACKUP_DIR="$HOME/evolution-backup-$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "📦 备份进化数据..."
cp -r "$EVOLUTION_DIR" "$BACKUP_DIR/" 2>/dev/null
cp -r "$LEARNINGS_DIR" "$BACKUP_DIR/" 2>/dev/null

echo "✅ 备份完成: $BACKUP_DIR"

# 清理旧数据
echo "🧹 清理旧数据..."
rm -rf "$EVOLUTION_DIR"/*.log
rm -f "$LEARNINGS_DIR"/errors/*.md
rm -f "$LEARNINGS_DIR"/evolution_report_*.md

echo "✅ 清理完成"
```

---

## 🚀 集成到工作流

### 示例10: 定时任务

```bash
#!/bin/bash

# 添加到crontab
(crontab -l 2>/dev/null; echo "*/30 * * * * bash ~/.openclaw/workspace/scripts/self-evolution-system.sh") | crontab -

# 查看定时任务
crontab -l

# 删除定时任务
crontab -l | grep -v "self-evolution-system" | crontab -
```

### 示例11: 系统启动时运行

```bash
#!/bin/bash

# 添加到系统启动脚本
cat >> ~/.bashrc << 'EOF'

# 自动启动自我进化系统
if [ -f ~/.openclaw/workspace/scripts/self-evolution-system.sh ]; then
    bash ~/.openclaw/workspace/scripts/self-evolution-system.sh &
fi
EOF

# 重新加载配置
source ~/.bashrc
```

---

## 📈 性能监控

### 示例12: 监控系统性能

```bash
#!/bin/bash

# 监控进化系统性能
while true; do
    echo "=== $(date) ==="
    
    # CPU使用率
    top -bn1 | grep "self-evolution" | head -5
    
    # 内存使用
    free -h | grep Mem
    
    # 进化日志大小
    du -sh ~/.openclaw/workspace/.evolution/evolution.log
    
    sleep 300  # 每5分钟检查一次
done
```

---

## 🎯 实用脚本

### 示例13: 快速健康检查

```bash
#!/bin/bash

# 快速健康检查脚本
echo "🔍 系统健康检查"
echo "================"

# 检查脚本存在
if [ -f ~/.openclaw/workspace/scripts/self-evolution-system.sh ]; then
    echo "✅ 自我进化系统脚本存在"
else
    echo "❌ 自我进化系统脚本缺失"
fi

# 检查日志文件
if [ -f ~/.openclaw/workspace/.evolution/evolution.log ]; then
    echo "✅ 进化日志存在"
    LOG_SIZE=$(du -h ~/.openclaw/workspace/.evolution/evolution.log | cut -f1)
    echo "   大小: $LOG_SIZE"
else
    echo "❌ 进化日志缺失"
fi

# 检查学习记录
SIGNAL_COUNT=$(ls -1 ~/.openclaw/workspace/.pai-learning/signals/*.jsonl 2>/dev/null | wc -l)
echo "📊 学习信号: $SIGNAL_COUNT"

# 检查错误记录
ERROR_COUNT=$(ls -1 ~/.openclaw/workspace/.learnings/errors/*.md 2>/dev/null | wc -l)
echo "❌ 错误记录: $ERROR_COUNT"

echo "================"
echo "检查完成！"
```

---

**更多示例持续添加中！** 🚀

需要特定场景的示例？告诉我，我立即为你编写！🎯
