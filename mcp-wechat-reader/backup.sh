#!/bin/bash
# 微信公众号文章阅读器 MCP 服务器 - 备份脚本
#
# 用途: 完整备份 MCP 服务器项目
# 版本: 1.0.0
# 创建时间: 2026-03-12

set -e

MCP_DIR="/root/.openclaw/workspace/mcp-wechat-reader"
BACKUP_DIR="/root/.openclaw/backups/mcp-wechat-reader"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_NAME="mcp-wechat-reader-${TIMESTAMP}"
BACKUP_PATH="${BACKUP_DIR}/${BACKUP_NAME}"

echo "=================================================="
echo "📦 MCP 服务器备份 - 微信公众号文章阅读器"
echo "=================================================="
echo ""

# 创建备份目录
mkdir -p "$BACKUP_PATH"

echo "📂 备份位置: $BACKUP_PATH"
echo ""

# 备份核心文件
echo "📋 备份核心文件..."
cp -r "$MCP_DIR" "$BACKUP_PATH/"
echo "✅ 核心文件已备份"
echo ""

# 创建恢复脚本
echo "📝 创建恢复脚本..."
cat > "${BACKUP_PATH}/restore.sh" << 'RESTORE_EOF'
#!/bin/bash
# 微信公众号文章阅读器 MCP 服务器 - 恢复脚本
#
# 用途: 从备份恢复 MCP 服务器
# 版本: 1.0.0

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MCP_DIR="/root/.openclaw/workspace/mcp-wechat-reader"

echo "=================================================="
echo "🔄 MCP 服务器恢复 - 微信公众号文章阅读器"
echo "=================================================="
echo ""

# 检查备份是否存在
if [[ ! -d "$SCRIPT_DIR/mcp-wechat-reader" ]]; then
    echo "❌ 备份文件不存在: $SCRIPT_DIR/mcp-wechat-reader"
    exit 1
fi

# 创建目标目录
mkdir -p "$(dirname "$MCP_DIR")"

# 复制文件
echo "📂 恢复到: $MCP_DIR"
cp -r "$SCRIPT_DIR/mcp-wechat-reader" "$MCP_DIR"

# 设置权限
chmod +x "$MCP_DIR/server.py"
chmod +x "$MCP_DIR/start.sh"
chmod +x "$MCP_DIR/restore.sh" 2>/dev/null || true

# 安装依赖
echo ""
echo "📦 安装 Python 依赖..."
pip3 install -q fastmcp httpx beautifulsoup4 lxml 2>/dev/null || echo "⚠️ 部分依赖可能已安装"

echo ""
echo "=================================================="
echo "✅ 恢复完成！"
echo "=================================================="
echo ""
echo "🚀 下一步:"
echo "  cd $MCP_DIR"
echo "  ./start.sh"
echo ""
RESTORE_EOF

chmod +x "${BACKUP_PATH}/restore.sh"
echo "✅ 恢复脚本已创建"
echo ""

# 创建备份信息文件
cat > "${BACKUP_PATH}/BACKUP_INFO.txt" << INFO_EOF
备份信息
==========
备份名称: ${BACKUP_NAME}
备份时间: $(date '+%Y-%m-%d %H:%M:%S')
备份位置: ${BACKUP_PATH}

项目信息
========
项目名称: 微信公众号文章阅读器 MCP 服务器
版本: 1.0.0
语言: Python 3.11
框架: FastMCP 3.1.0

核心依赖
========
- fastmcp
- httpx
- beautifulsoup4
- lxml

文件列表
========
- server.py: MCP 服务器主程序
- start.sh: 启动脚本
- test_server.py: 测试脚本
- config.json: 配置文件
- requirements.txt: 依赖列表
- README.md: 说明文档
- USAGE.md: 使用指南

恢复方法
========
1. 运行恢复脚本: bash restore.sh
2. 或手动复制: cp -r mcp-wechat-reader /root/.openclaw/workspace/

启动方法
========
cd /root/.openclaw/workspace/mcp-wechat-reader
./start.sh
或
python3 server.py
INFO_EOF

echo "✅ 备份信息已创建"
echo ""

# 创建压缩包
echo "🗜️ 创建压缩包..."
cd "$BACKUP_DIR"
tar -czf "${BACKUP_NAME}.tar.gz" "${BACKUP_NAME}"
echo "✅ 压缩包已创建: ${BACKUP_NAME}.tar.gz"
echo ""

echo "=================================================="
echo "✅ 备份完成！"
echo "=================================================="
echo ""
echo "📊 备份统计:"
echo "  备份位置: $BACKUP_PATH"
echo "  压缩包: ${BACKUP_NAME}.tar.gz"
echo "  大小: $(du -sh "${BACKUP_NAME}" | cut -f1)"
echo ""
echo "🔄 恢复方法:"
echo "  cd ${BACKUP_PATH}"
echo "  ./restore.sh"
echo ""
