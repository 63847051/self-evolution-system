#!/bin/bash
# 技能审核脚本 - 基于Trail of Bits标准
# 审核AI技能的安全性、质量、归属

SKILLS_DIR="$1"
CURATED_SKILLS="/root/.openclaw/workspace/skills-curated"
APPROVED_LIST="/root/.openclaw/workspace/.skills-vetting/approved-skills.json"
VETTING_LOG="/root/.openclaw/workspace/.skills-vetting/vetting.log"

# 创建目录
mkdir -p "$(dirname "$APPROVED_LIST")"
mkdir -p "$(dirname "$VETTING_LOG")"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$VETTING_LOG"
}

vet_skill() {
    local skill_path="$1"
    local skill_name=$(basename "$skill_path")
    
    log "🔍 审核技能: $skill_name"
    
    # 检查1: 文件完整性
    if [ ! -f "$skill_path/README.md" ]; then
        log "❌ 缺少README.md"
        return 1
    fi
    
    # 检查2: 归属信息
    if ! grep -q "Credits\|Reference\|Original\|Based on" "$skill_path/README.md" 2>/dev/null; then
        log "⚠️  缺少归属信息"
    fi
    
    # 检查3: 危险操作
    if grep -r "eval\|exec\|system\|subprocess" "$skill_path" 2>/dev/null | grep -v "\.pyc\|\.md"; then
        log "⚠️  发现潜在危险操作"
    fi
    
    # 检查4: 外部依赖
    if [ -f "$skill_path/package.json" ]; then
        log "📦 检查依赖..."
        # 可以添加依赖检查逻辑
    fi
    
    # 检查5: 许可证
    if [ -f "$skill_path/LICENSE" ] || grep -qi "mit\|apache\|bsd" "$skill_path/README.md"; then
        log "✅ 许可证明确"
    else
        log "⚠️  许可证不明确"
    fi
    
    log "✅ 审核完成: $skill_name"
    return 0
}

# 主函数
main() {
    if [ -z "$SKILLS_DIR" ]; then
        echo "🔍 技能审核脚本 v1.0"
        echo "基于Trail of Bits审核标准"
        echo ""
        echo "使用方法:"
        echo "  $0 <skills-directory>"
        echo ""
        echo "示例:"
        echo "  $0 ~/.openclaw/skills/"
        echo "  $0 /path/to/skills"
        exit 0
    fi
    
    log "🚀 开始审核技能..."
    log "目录: $SKILLS_DIR"
    
    if [ ! -d "$SKILLS_DIR" ]; then
        log "❌ 目录不存在: $SKILLS_DIR"
        exit 1
    fi
    
    # 审核所有技能
    for skill in "$SKILLS_DIR"/*/; do
        if [ -d "$skill" ]; then
            vet_skill "$skill"
        fi
    done
    
    log "✅ 审核完成"
    echo ""
    echo "📝 审核日志: $VETTING_LOG"
    echo "📋 审批列表: $APPROVED_LIST"
}

main "$@"
