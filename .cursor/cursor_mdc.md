# 🤖 CURSOR AI MEMORY & DEVELOPMENT CONTEXT (MDC)

**Version:** 1.0  
**Last Updated:** December 2024  
**Purpose:** Comprehensive AI context and memory system for Cursor IDE

---

## 🎯 **AI BEHAVIOR INSTRUCTIONS**

### **CRITICAL DIRECTIVES:**

1. **MEMORY FIRST:** Always read and understand `project_memory.md` before any development work
2. **SYSTEMATIC APPROACH:** Follow the comprehensive SOP system in `ai_comprehensive_sop_system.md`
3. **SESSION RECOVERY:** Check for `session_state.json` to continue interrupted work
4. **QUALITY GATES:** Never declare work complete without comprehensive testing
5. **DOCUMENTATION:** Always update project memory after completing tasks

### **DEVELOPMENT WORKFLOW:**

```markdown
BEFORE EVERY TASK:
1. Read project_memory.md for current context
2. Check session_state.json if present
3. Understand active vs deprecated files
4. Confirm understanding with user

DURING DEVELOPMENT:
1. Track progress in real-time
2. Document issues immediately
3. Create checkpoints for long processes
4. Follow established patterns and conventions

AFTER COMPLETION:
1. Run comprehensive tests (unit + integration + frontend)
2. Update project_memory.md with lessons learned
3. Clean up temporary files
4. Save session state if needed
```

---

## 📋 **PROJECT CONTEXT LOADING**

### **ALWAYS READ THESE FILES FIRST:**
- `project_memory.md` - Current project state and history
- `ai_comprehensive_sop_system.md` - Development protocols
- `session_state.json` - Recovery state (if exists)

### **FILE ORGANIZATION UNDERSTANDING:**
- `src/` - Main implementation files (CURRENT)
- `test/` - Testing files (PERMANENT)
- `docs/` - Documentation (PERMANENT)
- `temp/` - Temporary files (SAFE TO DELETE)
- `archive/` - Deprecated files (REFERENCE ONLY)

---

## 🔄 **SESSION RECOVERY PROTOCOL**

### **IF session_state.json EXISTS:**
1. Analyze interruption point
2. Validate checkpoint integrity
3. Identify safe continuation strategy
4. Resume from last valid checkpoint
5. Update progress tracking

### **RECOVERY VALIDATION CHECKLIST:**
- [ ] File integrity confirmed
- [ ] Dependencies available
- [ ] Checkpoint data valid
- [ ] Resume commands identified

---

## 🧪 **MANDATORY TESTING REQUIREMENTS**

### **NEVER SKIP THESE TESTS:**

#### **WHITEBOX TESTING:**
- [ ] Unit tests for all functions
- [ ] Integration tests for components
- [ ] Code coverage > 80%
- [ ] Performance benchmarks

#### **BLACKBOX TESTING:**
- [ ] Functional requirements validation
- [ ] Input/output validation
- [ ] Error handling scenarios
- [ ] End-to-end workflows

#### **FRONTEND TESTING:**
- [ ] Cross-browser compatibility
- [ ] Responsive design validation
- [ ] User interaction flows
- [ ] Accessibility compliance

### **DEPLOYMENT BLOCKERS:**
- ❌ Any test failure
- ❌ Performance degradation
- ❌ New errors in logs
- ❌ User workflow breaks
- ❌ Security vulnerabilities

---

## 📝 **MEMORY MAINTENANCE RULES**

### **ALWAYS UPDATE project_memory.md WHEN:**
- New problems discovered and solved
- Rules or specifications changed
- New lessons learned
- File status changes (active/deprecated)
- Performance improvements made

### **MEMORY UPDATE TEMPLATE:**
```markdown
### **X. MASALAH [NAMA] - [TANGGAL]**
**❌ Root Cause:** [akar masalah]
**❌ Impact:** [dampak pada sistem]
**❌ Symptoms:** [gejala yang terlihat]
**✅ Solusi:** [solusi yang berhasil]
- [detail implementasi]
- Files: [file yang diubah/dibuat]
```

---

## 💬 **CHAT CONTEXT MANAGEMENT**

### **EXPECTED CHAT STARTERS:**

#### **FULL CONTEXT LOAD:**
```
[PROJECT_NAME] Development Session

CONTEXT LOADING:
1. Read project_memory.md for current status
2. Read session_state.json if exists
3. Review ai_comprehensive_sop_system.md protocols

TASK: [DESCRIBE TASK]

IMPORTANT: Confirm understanding before proceeding.
```

#### **RECOVERY SESSION:**
```
RECOVERY [PROJECT_NAME]

FILES: project_memory.md, session_state.json attached
SITUATION: [DESCRIBE INTERRUPTION]
NEED: Continue from last checkpoint safely.
```

---

## 🚨 **CRITICAL ANTI-PATTERNS TO AVOID**

### **NEVER DO:**
- ❌ Skip reading project_memory.md
- ❌ Declare project ready without testing
- ❌ Ignore frontend validation
- ❌ Skip memory updates after completion
- ❌ Assume AI remembers previous context
- ❌ Delete files without marking deprecated
- ❌ Deploy without running all test suites

### **ALWAYS DO:**
- ✅ Load project context first
- ✅ Follow systematic testing approach
- ✅ Document everything in real-time
- ✅ Update memory after each session
- ✅ Verify user understanding
- ✅ Maintain quality gates

---

## 🎨 **CODE STYLE & CONVENTIONS**

### **FOLLOW EXISTING PATTERNS:**
1. Check existing codebase for style
2. Use established libraries and frameworks
3. Follow naming conventions
4. Maintain consistency with existing code
5. Never introduce breaking changes without approval

### **SECURITY REQUIREMENTS:**
- Never expose secrets or keys
- Follow secure coding practices
- Validate all inputs
- Handle errors gracefully
- Implement proper authentication/authorization

---

## 🔧 **DEVELOPMENT TOOLS INTEGRATION**

### **CURSOR IDE FEATURES TO LEVERAGE:**
- AI-powered code completion
- Intelligent code suggestions
- Real-time error detection
- Integrated testing support
- Version control integration

### **RECOMMENDED WORKFLOW:**
1. Use AI assistance for code generation
2. Validate with comprehensive testing
3. Review and refactor for quality
4. Document changes in memory system
5. Commit with meaningful messages

---

## 📊 **SUCCESS METRICS**

### **PROJECT SUCCESS INDICATORS:**
- All tests passing consistently
- Performance targets met
- User workflows functioning
- Documentation complete and accurate
- Memory system maintained and updated

### **SESSION SUCCESS INDICATORS:**
- Context loaded correctly
- Tasks completed systematically
- Tests passing at all levels
- Memory updated with new learnings
- Clean state for next session

---

**REMEMBER:** This MDC system ensures consistency, prevents repeated mistakes, enables safe recovery, and maintains high quality standards. Always follow these guidelines for successful AI-assisted development!

---

## 📞 **QUICK REFERENCE**

### **FILES TO ALWAYS CHECK:**
- `project_memory.md` - Project context
- `ai_comprehensive_sop_system.md` - Development protocols
- `session_state.json` - Recovery state

### **TESTING COMMAND REFERENCE:**
```bash
# Run all tests before declaring complete
npm test                 # or appropriate test command
npm run lint            # code quality
npm run typecheck       # type validation
npm run build           # build verification
```

### **EMERGENCY RECOVERY:**
1. Check session_state.json
2. Identify last checkpoint
3. Use recovery templates
4. Validate before continuing