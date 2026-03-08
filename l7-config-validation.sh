#!/bin/bash
# L7配置验证层 - 预防配置错误

echo "🔍 L7: 配置验证..."

CONFIG_FILE="/root/.openclaw/openclaw.json"
ERRORS=0

# 检查1: 字段命名约定
if grep -q '"base_url"' "$CONFIG_FILE"; then
    echo "❌ 错误: memu-engine使用了base_url，应该是baseUrl"
    ERRORS=$((ERRORS+1))
fi

if grep -q '"api_key"' "$CONFIG_FILE"; then
    echo "❌ 错误: 使用了api_key，应该是apiKey"
    ERRORS=$((ERRORS+1))
fi

# 检查2: JSON格式
if ! python3 -c "import json; json.load(open('$CONFIG_FILE'))" 2>/dev/null; then
    echo "❌ 错误: JSON格式无效"
    ERRORS=$((ERRORS+1))
fi

# 检查3: memu-engine配置provider
if grep -A 10 '"memu-engine"' "$CONFIG_FILE" | grep -q '"provider": "openai-compatible"'; then
    echo "⚠️ 警告: provider应该是openai，不是openai-compatible"
    ERRORS=$((ERRORS+1))
fi

# 检查4: API Key格式
if grep -A 5 '"embedding"' "$CONFIG_FILE" | grep -q '"apiKey": "sk-'; then
    echo "✅ API Key格式正确"
else
    echo "❌ 错误: API Key格式不正确"
    ERRORS=$((ERRORS+1))
fi

if [ $ERRORS -eq 0 ]; then
    echo "✅ L7验证通过"
    exit 0
else
    echo "❌ L7发现 $ERRORS 个问题"
    exit 1
fi
