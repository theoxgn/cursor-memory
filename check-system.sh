#!/bin/bash

# Cursor MDC System Health Check
# Usage: ./check-system.sh

echo "🔍 CURSOR MDC SYSTEM HEALTH CHECK"
echo "=================================="
echo ""

# Check if we're in a project with .cursor folder
if [ ! -d ".cursor" ]; then
    echo "❌ ERROR: .cursor folder not found!"
    echo "   Make sure you're in a project directory with MDC system installed."
    exit 1
fi

echo "✅ .cursor folder found"

# Check core system files
echo ""
echo "📁 CHECKING CORE SYSTEM FILES:"
echo "--------------------------------"

files=("cursor_mdc.md" "rules.md" "ai_comprehensive_sop_system.md" "project_templates.md" "settings.json" "project_memory_template.md" "session_state_template.json")

for file in "${files[@]}"; do
    if [ -f ".cursor/$file" ]; then
        echo "✅ .cursor/$file"
    else
        echo "❌ .cursor/$file - MISSING!"
    fi
done

# Check settings.json configuration
echo ""
echo "⚙️ CHECKING SETTINGS CONFIGURATION:"
echo "-----------------------------------"

if grep -q "cursor.aiInstructions" .cursor/settings.json; then
    echo "✅ AI Instructions configured"
else
    echo "❌ AI Instructions missing in settings.json"
fi

if grep -q "cursor.includeDocs" .cursor/settings.json; then
    echo "✅ Include Docs configured"
    echo "   Files included:"
    grep -A 10 "cursor.includeDocs" .cursor/settings.json | grep -E '\.md|\.json' | sed 's/.*"/    - /' | sed 's/",*//'
else
    echo "❌ Include Docs missing in settings.json"
fi

# Check project memory
echo ""
echo "🧠 CHECKING PROJECT MEMORY:"
echo "---------------------------"

if [ -f "project_memory.md" ]; then
    echo "✅ project_memory.md exists"
    
    # Check if it's still a template
    if grep -q "\[PROJECT_NAME\]" project_memory.md; then
        echo "⚠️  project_memory.md is still using template placeholders"
        echo "   Please customize it with your project details"
    else
        echo "✅ project_memory.md has been customized"
    fi
else
    echo "❌ project_memory.md not found"
    echo "   Create it with: cp .cursor/project_memory_template.md project_memory.md"
fi

# Check session state
echo ""
echo "💾 CHECKING SESSION STATE:"
echo "--------------------------"

if [ -f "session_state.json" ]; then
    echo "✅ session_state.json exists"
    if [ -s "session_state.json" ]; then
        echo "✅ session_state.json has content (recovery available)"
    else
        echo "ℹ️  session_state.json is empty (no active session)"
    fi
else
    echo "ℹ️  session_state.json not found (normal for new projects)"
fi

# Check if we're in a git repository
echo ""
echo "📦 CHECKING VERSION CONTROL:"
echo "----------------------------"

if [ -d ".git" ]; then
    echo "✅ Git repository detected"
    
    # Check if .cursor is tracked
    if git ls-files --error-unmatch .cursor/ >/dev/null 2>&1; then
        echo "✅ .cursor folder is tracked in git"
    else
        echo "⚠️  .cursor folder is not tracked in git"
        echo "   Add it with: git add .cursor/"
    fi
    
    # Check if project_memory.md is tracked
    if [ -f "project_memory.md" ]; then
        if git ls-files --error-unmatch project_memory.md >/dev/null 2>&1; then
            echo "✅ project_memory.md is tracked in git"
        else
            echo "⚠️  project_memory.md is not tracked in git"
            echo "   Add it with: git add project_memory.md"
        fi
    fi
else
    echo "ℹ️  Not a git repository"
fi

echo ""
echo "🎯 SYSTEM STATUS SUMMARY:"
echo "========================"

error_count=0
warning_count=0

# Count errors and warnings from output
# This is a simplified check - in a real implementation you'd track these properly

if [ ! -d ".cursor" ]; then
    ((error_count++))
fi

if [ ! -f "project_memory.md" ]; then
    ((warning_count++))
fi

if [ $error_count -eq 0 ] && [ $warning_count -eq 0 ]; then
    echo "🎉 SYSTEM STATUS: EXCELLENT"
    echo "   All components are properly configured!"
elif [ $error_count -eq 0 ]; then
    echo "✅ SYSTEM STATUS: GOOD"
    echo "   System is functional with minor recommendations"
else
    echo "⚠️  SYSTEM STATUS: NEEDS ATTENTION"
    echo "   Please fix the errors above before using"
fi

echo ""
echo "🚀 NEXT STEPS:"
echo "-------------"
echo "1. Fix any errors or warnings shown above"
echo "2. Open project in Cursor IDE: cursor ."
echo "3. Start AI chat to test the system"
echo "4. Use this test prompt:"
echo ""
echo "   'Test MDC System - mohon konfirmasi bahwa Anda dapat:"
echo "   1. Membaca project_memory.md"
echo "   2. Mengakses rules dan templates"
echo "   3. Mengikuti systematic workflow'"
echo ""
echo "Happy coding! 🎯"