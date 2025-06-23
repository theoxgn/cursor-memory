# 📝 PROJECT TEMPLATES COLLECTION

**Version:** 1.0  
**Last Updated:** December 2024  
**Purpose:** Ready-to-use templates for consistent project development

---

## 📋 **project_memory.md TEMPLATE**

```markdown
# PROJECT MEMORY - [PROJECT_NAME]

**Last Updated:** [DATE]  
**Project Status:** [ACTIVE/MAINTENANCE/COMPLETED]  
**Current Phase:** [PHASE_NAME]

---

## PROJECT OVERVIEW

### **Project Description:**
[Describe what this project does, its main purpose, and key objectives]

### **Project Scope:**
- **In Scope:** [What is included in this project]
- **Out of Scope:** [What is explicitly not included]

### **Success Criteria:**
- [ ] [Criterion 1 - measurable success metric]
- [ ] [Criterion 2 - measurable success metric]
- [ ] [Criterion 3 - measurable success metric]

### **Key Stakeholders:**
- **Project Owner:** [Name/Role]
- **Technical Lead:** [Name/Role]
- **End Users:** [Target audience description]

---

## CURRENT STATUS

### **Implementation Status:**
**Current Version:** [Version number or date]  
**Last Successful Build:** [Date and version]  
**Next Milestone:** [Upcoming target]

### **Active Files (CURRENT):**
- `[filename1.ext]` - [Description of what this file does]
- `[filename2.ext]` - [Description of what this file does]
- `[filename3.ext]` - [Description of what this file does]

### **Deprecated Files (DO NOT USE):**
- ~~`[old_filename.ext]`~~ - [Why deprecated, replaced by what]
- ~~`[another_old_file.ext]`~~ - [Why deprecated, date deprecated]

### **Dependencies:**
- **Framework:** [React/Vue/Angular/etc with version]
- **Backend:** [Node.js/Python/etc with version]
- **Database:** [MongoDB/PostgreSQL/etc]
- **External Services:** [APIs, databases, etc.]
- **Build Tools:** [Webpack/Vite/etc]

---

## MASALAH & SOLUSI

### **1. MASALAH [PROBLEM_NAME] - [DATE]**
**❌ Root Cause:** [Clear explanation of what caused the problem]  
**❌ Impact:** [How this problem affected the system/project]  
**❌ Symptoms:** [What signs/errors were visible]

**✅ Solusi:** [The solution that was successfully implemented]
- [Detailed implementation steps]
- [Configuration changes made]
- [Code changes made]
- **Files Modified:** `[list of files changed]`
- **Result:** [Measurable improvement achieved]

---

## SPESIFIKASI & RULES

### **[RULE_NAME] - [DATE_ESTABLISHED]**
- **OLD:** [Previous specification or rule]
- **NEW:** [Updated specification or rule]
- **Reason:** [Why the change was made]
- **Impact:** [What this change affects in the system]

### **Critical Rules (NEVER CHANGE):**
- **Rule 1:** [Fundamental rule that must always be followed]
- **Rule 2:** [Another critical rule with explanation]
- **Rule 3:** [Another critical rule with explanation]

### **Performance Requirements:**
- **Response Time:** [Maximum acceptable response time]
- **Throughput:** [Required processing capacity]
- **Accuracy:** [Required accuracy percentage]
- **Availability:** [Required uptime percentage]

---

## LESSONS LEARNED

### **1. [LESSON_THEME]**
- ❌ **SALAH:** [What approach/practice was wrong]
- ✅ **BENAR:** [What approach/practice is correct]
- 💡 **Insight:** [Key learning or principle gained]

### **2. [LESSON_THEME]**
- ❌ **SALAH:** [What approach/practice was wrong]
- ✅ **BENAR:** [What approach/practice is correct]
- 💡 **Insight:** [Key learning or principle gained]

### **Critical Lessons (NEVER FORGET):**
- **Lesson A:** [Most important lesson learned]
- **Lesson B:** [Another critical lesson]
- **Lesson C:** [Another critical lesson]

---

## DEVELOPMENT GUIDELINES

### **Development Workflow:**
1. **Before Starting:** [Steps to take before any development]
2. **During Development:** [Steps to follow during development]
3. **Before Completion:** [Steps to take before declaring done]
4. **After Completion:** [Steps to take after finishing]

### **Testing Requirements:**
- **Unit Tests:** [Requirements for unit testing]
- **Integration Tests:** [Requirements for integration testing]
- **User Acceptance Tests:** [Requirements for UAT]
- **Performance Tests:** [Requirements for performance testing]

### **Quality Gates:**
- [ ] All automated tests passing
- [ ] Code review completed
- [ ] Documentation updated
- [ ] Performance benchmarks met
- [ ] Security requirements validated

---

## QUICK REFERENCE

### **Common Commands:**
```bash
# Development
npm start / npm run dev
npm test
npm run build

# Deployment
npm run deploy
npm run deploy:prod

# Database
npm run db:migrate
npm run db:seed
```

### **Important File Locations:**
- **Main Script:** `[path/to/main/script]`
- **Configuration:** `[path/to/config/file]`
- **Logs:** `[path/to/log/directory]`
- **Output:** `[path/to/output/directory]`

---

**REMEMBER:** This file is the single source of truth for project context. Keep it updated after every development session!
```

---

## 🔄 **session_state.json TEMPLATE**

```json
{
  "project_name": "[PROJECT_NAME]",
  "session_id": "[UNIQUE_SESSION_ID]",
  "created_date": "[YYYY-MM-DD]",
  "last_updated": "[YYYY-MM-DDTHH:MM:SS]",
  "current_command": {
    "name": "[COMMAND_NAME]",
    "description": "[WHAT_THIS_COMMAND_DOES]",
    "total_steps": 0,
    "current_step": 0,
    "step_progress": 0,
    "can_resume": false,
    "checkpoint_data": {
      "completed_operations": [],
      "current_operation": "[CURRENT_OPERATION_DESCRIPTION]",
      "next_operations": []
    }
  },
  "steps": [
    {
      "step_number": 1,
      "name": "[STEP_NAME]",
      "description": "[WHAT_THIS_STEP_DOES]",
      "status": "PENDING",
      "start_time": null,
      "end_time": null,
      "progress_percent": 0,
      "current_operation": null,
      "can_resume": false,
      "checkpoint": null,
      "resume_command": null,
      "output_files": [],
      "errors": []
    }
  ],
  "dependencies": {
    "required_files": [
      "[INPUT_FILE_1.ext]",
      "[INPUT_FILE_2.ext]"
    ],
    "framework": "[React/Vue/Angular/etc]",
    "runtime": "[Node.js/Python/etc]",
    "database": "[MongoDB/PostgreSQL/etc]",
    "external_services": [
      "[service_name: description]"
    ]
  },
  "project_context": {
    "main_goal": "[PRIMARY_PROJECT_OBJECTIVE]",
    "current_phase": "[CURRENT_DEVELOPMENT_PHASE]",
    "success_criteria": [
      "[SUCCESS_METRIC_1]",
      "[SUCCESS_METRIC_2]"
    ],
    "performance_targets": {
      "accuracy": "[TARGET_ACCURACY_PERCENTAGE]",
      "speed": "[TARGET_PROCESSING_TIME]",
      "throughput": "[TARGET_ITEMS_PER_HOUR]"
    }
  },
  "recovery_info": {
    "last_successful_checkpoint": null,
    "recovery_possible": false,
    "recovery_instructions": "[HOW_TO_RECOVER_IF_INTERRUPTED]",
    "data_integrity_hash": null,
    "backup_files": []
  },
  "session_metadata": {
    "environment": "[DEVELOPMENT/TESTING/PRODUCTION]",
    "user": "[USER_NAME_OR_ID]",
    "machine": "[MACHINE_IDENTIFIER]",
    "working_directory": "[PATH_TO_WORKING_DIRECTORY]",
    "git_branch": "[CURRENT_GIT_BRANCH]",
    "git_commit": "[CURRENT_GIT_COMMIT_HASH]"
  },
  "performance_metrics": {
    "session_start_time": "[YYYY-MM-DDTHH:MM:SS]",
    "total_processing_time": 0,
    "items_processed": 0,
    "errors_encountered": 0,
    "warnings_generated": 0,
    "memory_usage_peak": null,
    "cpu_usage_average": null
  },
  "notes": [
    "[NOTE_1: Any important observations or decisions made during this session]",
    "[NOTE_2: Any issues encountered and how they were resolved]"
  ]
}
```

---

## 💬 **CHAT STARTER TEMPLATES**

### **Template 1: FULL CONTEXT LOAD**
```
[PROJECT_NAME] Development Session

CONTEXT LOADING:
1. Baca project_memory.md untuk status terbaru dan lessons learned
2. Baca session_state.json jika ada (untuk recovery)
3. Review ai_comprehensive_sop_system.md untuk protocols

TASK: [DESCRIBE YOUR TASK]

IMPORTANT: Confirm understanding of current project state before proceeding.
```

### **Template 2: QUICK START**
```
[PROJECT_NAME] - baca project_memory.md, lalu [TASK]

FOCUS: [SPECIFIC SECTION IF APPLICABLE]
```

### **Template 3: URGENT/BUG FIX**
```
URGENT: [PROJECT_NAME] issue

CONTEXT: Baca project_memory.md section "MASALAH & SOLUSI" untuk similar issues.
BUG: [DESCRIBE BUG]
NEED: Quick investigation dan fix berdasarkan lessons learned.
```

### **Template 4: RECOVERY SESSION**
```
RECOVERY [PROJECT_NAME]

FILES: project_memory.md, session_state.json attached
SITUATION: [DESCRIBE INTERRUPTION]
NEED: Continue from last checkpoint safely.
```

### **Template 5: NEW FEATURE DEVELOPMENT**
```
[PROJECT_NAME] New Feature Development

CONTEXT: Load project_memory.md for current architecture and patterns
FEATURE: [DESCRIBE NEW FEATURE]
REQUIREMENTS:
- [Requirement 1]
- [Requirement 2]
- [Requirement 3]

APPROACH: Follow existing patterns and maintain consistency with current codebase.
```

---

## 🧪 **TESTING TEMPLATES**

### **Unit Test Template (JavaScript/Jest):**
```javascript
// test/unit/[component-name].test.js
import { [ComponentName] } from '../../src/components/[component-name]';

describe('[ComponentName]', () => {
  beforeEach(() => {
    // Setup for each test
  });

  afterEach(() => {
    // Cleanup after each test
  });

  describe('initialization', () => {
    it('should initialize with default values', () => {
      // Test initialization
    });

    it('should handle invalid input gracefully', () => {
      // Test error handling
    });
  });

  describe('core functionality', () => {
    it('should perform main operation correctly', () => {
      // Test main functionality
    });

    it('should handle edge cases', () => {
      // Test edge cases
    });
  });

  describe('performance', () => {
    it('should complete operation within acceptable time', () => {
      // Performance test
    });
  });
});
```

### **Integration Test Template:**
```javascript
// test/integration/[feature-name].test.js
import { setupTestEnvironment, teardownTestEnvironment } from '../helpers/test-environment';

describe('[FeatureName] Integration', () => {
  beforeAll(async () => {
    await setupTestEnvironment();
  });

  afterAll(async () => {
    await teardownTestEnvironment();
  });

  it('should complete end-to-end workflow', async () => {
    // Test complete workflow
  });

  it('should handle error scenarios gracefully', async () => {
    // Test error scenarios
  });

  it('should maintain data integrity', async () => {
    // Test data integrity
  });
});
```

### **E2E Test Template (Playwright/Cypress):**
```javascript
// test/e2e/[user-workflow].test.js
describe('[UserWorkflow] E2E', () => {
  beforeEach(() => {
    // Setup test environment
  });

  it('should allow user to complete primary workflow', () => {
    // Test primary user journey
  });

  it('should handle user errors gracefully', () => {
    // Test user error scenarios
  });

  it('should work across different browsers', () => {
    // Cross-browser testing
  });
});
```

---

## 📁 **PROJECT STRUCTURE TEMPLATES**

### **React Project Structure:**
```
project-name/
├── .cursor/                    # Cursor IDE configuration
│   ├── cursor_mdc.md
│   ├── rules.md
│   └── project_templates.md
├── src/
│   ├── components/             # Reusable UI components
│   │   ├── common/            # Common components
│   │   ├── forms/             # Form components
│   │   └── layout/            # Layout components
│   ├── pages/                 # Page components
│   ├── hooks/                 # Custom React hooks
│   ├── services/              # API and business logic
│   ├── utils/                 # Helper functions
│   ├── context/               # React context providers
│   ├── types/                 # TypeScript type definitions
│   └── styles/                # Global styles
├── test/
│   ├── unit/                  # Unit tests
│   ├── integration/           # Integration tests
│   ├── e2e/                   # End-to-end tests
│   └── helpers/               # Test utilities
├── docs/                      # Documentation
├── temp/                      # Temporary files
├── archive/                   # Deprecated files
├── project_memory.md
├── ai_comprehensive_sop_system.md
├── session_state.json
└── package.json
```

### **Node.js API Project Structure:**
```
api-project/
├── .cursor/                    # Cursor IDE configuration
├── src/
│   ├── controllers/           # Request handlers
│   ├── services/              # Business logic
│   ├── models/                # Data models
│   ├── middleware/            # Express middleware
│   ├── routes/                # API routes
│   ├── utils/                 # Helper functions
│   ├── config/                # Configuration files
│   └── validators/            # Input validation
├── test/
├── docs/
├── temp/
├── archive/
├── project_memory.md
├── ai_comprehensive_sop_system.md
├── session_state.json
└── package.json
```

---

## 🔧 **CONFIGURATION TEMPLATES**

### **package.json Scripts Template:**
```json
{
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview",
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage",
    "test:e2e": "playwright test",
    "lint": "eslint src --ext .js,.jsx,.ts,.tsx",
    "lint:fix": "eslint src --ext .js,.jsx,.ts,.tsx --fix",
    "typecheck": "tsc --noEmit",
    "format": "prettier --write src",
    "validate": "npm run typecheck && npm run lint && npm run test",
    "deploy:staging": "npm run build && deploy-to-staging",
    "deploy:prod": "npm run validate && npm run build && deploy-to-production"
  }
}
```

### **ESLint Configuration Template:**
```json
{
  "extends": [
    "eslint:recommended",
    "@typescript-eslint/recommended",
    "prettier"
  ],
  "rules": {
    "no-console": "warn",
    "no-debugger": "error",
    "prefer-const": "error",
    "no-unused-vars": "error",
    "@typescript-eslint/no-explicit-any": "warn",
    "@typescript-eslint/explicit-function-return-type": "warn"
  }
}
```

### **Jest Configuration Template:**
```json
{
  "testEnvironment": "jsdom",
  "setupFilesAfterEnv": ["<rootDir>/test/setup.js"],
  "moduleNameMapping": {
    "^@/(.*)$": "<rootDir>/src/$1"
  },
  "collectCoverageFrom": [
    "src/**/*.{js,jsx,ts,tsx}",
    "!src/**/*.d.ts"
  ],
  "coverageThreshold": {
    "global": {
      "branches": 80,
      "functions": 80,
      "lines": 80,
      "statements": 80
    }
  }
}
```

---

## 📝 **DOCUMENTATION TEMPLATES**

### **README.md Template:**
```markdown
# [PROJECT_NAME]

[Brief description of what this project does]

## Features

- [Feature 1]
- [Feature 2]
- [Feature 3]

## Installation

```bash
npm install
```

## Usage

```bash
npm run dev
```

## Testing

```bash
npm test
npm run test:e2e
```

## Deployment

```bash
npm run deploy
```

## Contributing

Please read project_memory.md for project context and development guidelines.

## License

[License information]
```

### **API Documentation Template:**
```markdown
# API Documentation

## Endpoints

### GET /api/users
Get list of users

**Parameters:**
- `page` (optional): Page number
- `limit` (optional): Items per page

**Response:**
```json
{
  "success": true,
  "data": [...],
  "pagination": {...}
}
```

**Error Response:**
```json
{
  "success": false,
  "error": {
    "code": "ERROR_CODE",
    "message": "Error description"
  }
}
```
```

---

## 🚀 **DEPLOYMENT TEMPLATES**

### **Dockerfile Template:**
```dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
```

### **Docker Compose Template:**
```yaml
version: '3.8'

services:
  app:
    build: .
    ports:
      - "3000:3000"
    environment:
      - NODE_ENV=production
    depends_on:
      - db

  db:
    image: postgres:15
    environment:
      - POSTGRES_DB=myapp
      - POSTGRES_USER=user
      - POSTGRES_PASSWORD=password
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

---

**REMEMBER:** These templates ensure consistency across projects and provide a solid foundation for development. Customize them based on specific project needs while maintaining the core structure and principles!