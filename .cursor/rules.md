# 📋 DEVELOPMENT RULES & STANDARDS

**Version:** 1.0  
**Last Updated:** December 2024  
**Purpose:** Comprehensive development rules and coding standards

---

## 🎯 **FUNDAMENTAL PRINCIPLES**

### **CORE DEVELOPMENT RULES:**

1. **MEMORY-DRIVEN DEVELOPMENT**
   - Always read `project_memory.md` before starting
   - Document all solutions and lessons learned
   - Maintain comprehensive project context
   
   **🔄 AUTOMATIC MEMORY UPDATE TRIGGERS:**
   - ✅ After solving any problem → Update MASALAH & SOLUSI section
   - ✅ After changing specifications → Update SPESIFIKASI & RULES section
   - ✅ After learning new lessons → Update LESSONS LEARNED section
   - ✅ After file status changes → Update ACTIVE FILES section
   - ✅ Before session end → Update Last Updated date and status
   - ✅ After deployment → Update Implementation Status section

2. **SYSTEMATIC QUALITY ASSURANCE**
   - Test at multiple levels (unit, integration, frontend)
   - Never skip testing phases
   - Validate all user workflows

3. **FAIL-SAFE RECOVERY**
   - Create checkpoints for long processes
   - Maintain session state for interruption recovery
   - Ensure atomic operations where possible

4. **CONSISTENCY FIRST**
   - Follow existing code patterns
   - Use established frameworks and libraries
   - Maintain uniform naming conventions

---

## 🔒 **SECURITY RULES (NON-NEGOTIABLE)**

### **NEVER ALLOW:**
- ❌ Secrets/keys in code or logs
- ❌ Unvalidated user inputs
- ❌ SQL injection vulnerabilities
- ❌ Cross-site scripting (XSS) risks
- ❌ Insecure authentication mechanisms
- ❌ Unencrypted sensitive data transmission
- ❌ Hardcoded credentials or tokens

### **ALWAYS IMPLEMENT:**
- ✅ Input validation and sanitization
- ✅ Proper error handling without information leakage
- ✅ Secure authentication and authorization
- ✅ HTTPS for all data transmission
- ✅ Regular security dependency updates
- ✅ Principle of least privilege access

---

## 🧪 **TESTING RULES (MANDATORY)**

### **TESTING HIERARCHY:**
```
1. UNIT TESTS (Many, Fast)
   ├─ Individual function testing
   ├─ Edge case validation
   ├─ Error condition handling
   └─ Performance benchmarking

2. INTEGRATION TESTS (Moderate)
   ├─ Component interaction testing
   ├─ API integration validation
   ├─ Database operation testing
   └─ Service communication verification

3. END-TO-END TESTS (Few, Comprehensive)
   ├─ Complete user workflow testing
   ├─ Real-world scenario validation
   ├─ Cross-browser compatibility
   └─ Performance under load
```

### **TESTING REQUIREMENTS:**
- **Minimum Coverage:** 80% for critical components
- **Test Types:** Unit, Integration, E2E, Performance
- **Browser Support:** Chrome, Firefox, Safari, Edge (latest versions)
- **Device Testing:** Desktop, Tablet, Mobile responsiveness
- **Performance:** Load time < 3 seconds, API response < 500ms

### **TESTING BLOCKERS:**
- ❌ Any test failure blocks deployment
- ❌ Performance regression blocks release
- ❌ Accessibility violations block publication
- ❌ Security vulnerabilities block production

---

## 💻 **CODE QUALITY RULES**

### **CODING STANDARDS:**

#### **NAMING CONVENTIONS:**
```javascript
// Variables and Functions: camelCase
const userName = 'john_doe';
const calculateTotalPrice = () => {};

// Constants: UPPER_SNAKE_CASE
const MAX_RETRY_ATTEMPTS = 3;
const API_BASE_URL = 'https://api.example.com';

// Classes: PascalCase
class UserManager {}
class PaymentProcessor {}

// Files: kebab-case
user-service.js
payment-processor.js
api-client.js
```

#### **FUNCTION DESIGN:**
- **Single Responsibility:** One function, one purpose
- **Pure Functions:** Avoid side effects where possible
- **Error Handling:** Always handle potential errors
- **Documentation:** JSDoc for public APIs
- **Maximum Length:** 50 lines per function (prefer smaller)

#### **CODE ORGANIZATION:**
```
project/
├── src/
│   ├── components/     # Reusable UI components
│   ├── services/       # Business logic and API calls
│   ├── utils/          # Helper functions
│   ├── config/         # Configuration files
│   └── types/          # Type definitions
├── test/
│   ├── unit/           # Unit tests
│   ├── integration/    # Integration tests
│   └── e2e/            # End-to-end tests
└── docs/              # Documentation
```

### **PERFORMANCE RULES:**
- **Bundle Size:** Keep JavaScript bundles < 250KB gzipped
- **Image Optimization:** Use WebP format, lazy loading
- **Caching:** Implement appropriate caching strategies
- **Database:** Optimize queries, use indexes appropriately
- **API:** Implement pagination, rate limiting

---

## 📁 **FILE MANAGEMENT RULES**

### **FILE NAMING STANDARDS:**
```
CURRENT FILES:
- descriptive-kebab-case.ext
- feature-component-name.js
- service-api-client.js

TEMPORARY FILES:
- temp_[purpose]_[timestamp].ext
- temp_analysis_20241218.csv
- temp_debug_output.log

ARCHIVED FILES:
- archived_[original-name]_[date].ext
- archived_old-component_20241201.js
- archived_deprecated-service_20241215.py
```

### **FILE LIFECYCLE:**
1. **DEVELOPMENT:** Work in `src/` with descriptive names
2. **TESTING:** Create corresponding test files in `test/`
3. **TEMPORARY:** Use `temp/` for analysis and debugging files
4. **DEPRECATION:** Move to `archive/` with timestamp
5. **CLEANUP:** Remove temp files after session completion

### **FOLDER STRUCTURE RULES:**
- **src/:** Current implementation files only
- **test/:** All testing related files
- **docs/:** Documentation and guides
- **temp/:** Temporary files (safe to delete)
- **archive/:** Deprecated files for reference
- **.cursor/:** IDE configuration and MDC system

---

## 🔄 **VERSION CONTROL RULES**

### **GIT WORKFLOW:**
```bash
# Branch Naming
feature/user-authentication
bugfix/payment-validation-error
hotfix/security-vulnerability-patch

# Commit Messages
feat: add user authentication system
fix: resolve payment validation error
docs: update API documentation
test: add integration tests for payment flow
refactor: improve code organization in user service
```

### **COMMIT RULES:**
- **Atomic Commits:** One logical change per commit
- **Descriptive Messages:** Clear description of what and why
- **Test Before Commit:** All tests must pass
- **No Secrets:** Never commit sensitive information
- **Code Review:** All changes require review (if team environment)

### **BRANCH PROTECTION:**
- Main branch requires pull request
- All tests must pass before merge
- Code review required for production changes
- No direct commits to main/production branches

---

## 📊 **DOCUMENTATION RULES**

### **REQUIRED DOCUMENTATION:**
- **README.md:** Project overview, setup, usage
- **API.md:** API documentation with examples
- **DEPLOYMENT.md:** Deployment procedures and requirements
- **TROUBLESHOOTING.md:** Common issues and solutions
- **project_memory.md:** Project context and history

### **DOCUMENTATION STANDARDS:**
- **Keep Updated:** Document changes immediately
- **Examples:** Provide code examples for APIs
- **Screenshots:** Include UI screenshots where relevant
- **Links:** Cross-reference related documentation
- **Versioning:** Maintain documentation versions with code

### **CODE COMMENTS:**
```javascript
/**
 * Calculates the total price including tax and discounts
 * @param {number} basePrice - The original price before modifications
 * @param {number} taxRate - The tax rate as a decimal (e.g., 0.08 for 8%)
 * @param {number} discount - The discount amount to subtract
 * @returns {number} The final calculated price
 * @throws {Error} When basePrice is negative or taxRate is invalid
 */
function calculateTotalPrice(basePrice, taxRate, discount) {
    // Validation logic here
    // Calculation logic here
}
```

---

## 🚨 **ERROR HANDLING RULES**

### **ERROR HANDLING HIERARCHY:**
1. **Graceful Degradation:** System continues with reduced functionality
2. **User-Friendly Messages:** Clear, actionable error messages
3. **Logging:** Comprehensive error logging for debugging
4. **Recovery:** Automatic recovery where possible
5. **Escalation:** Clear escalation path for critical errors

### **ERROR RESPONSE FORMAT:**
```javascript
{
    "success": false,
    "error": {
        "code": "VALIDATION_ERROR",
        "message": "Invalid input data provided",
        "details": {
            "field": "email",
            "reason": "Invalid email format"
        },
        "timestamp": "2024-12-18T10:30:00Z",
        "requestId": "req-123456789"
    }
}
```

### **LOGGING STANDARDS:**
- **Structured Logging:** Use consistent log format
- **Log Levels:** ERROR, WARN, INFO, DEBUG appropriately
- **Context:** Include relevant context in logs
- **Sensitive Data:** Never log passwords, tokens, or PII
- **Performance:** Log response times and performance metrics

---

## 📈 **PERFORMANCE RULES**

### **PERFORMANCE TARGETS:**
- **Page Load Time:** < 3 seconds on 3G connection
- **API Response Time:** < 500ms for standard requests
- **Database Query Time:** < 100ms for simple queries
- **Bundle Size:** < 250KB gzipped for initial load
- **Memory Usage:** < 100MB for typical user session

### **OPTIMIZATION STRATEGIES:**
- **Code Splitting:** Split bundles for faster loading
- **Lazy Loading:** Load resources only when needed
- **Caching:** Implement multi-level caching strategy
- **Compression:** Use gzip/brotli compression
- **CDN:** Use CDN for static assets
- **Database Optimization:** Use proper indexes and query optimization

---

## 🔍 **MONITORING & ALERTING RULES**

### **REQUIRED MONITORING:**
- **Application Performance:** Response times, error rates
- **Infrastructure:** CPU, memory, disk usage
- **User Experience:** Page load times, user interactions
- **Business Metrics:** Conversion rates, user engagement
- **Security:** Failed login attempts, suspicious activity

### **ALERTING THRESHOLDS:**
- **Critical:** System down, security breach (immediate)
- **High:** Performance degradation, error spike (5 minutes)
- **Medium:** Resource utilization high (15 minutes)
- **Low:** General warnings, maintenance needed (1 hour)

---

## 🎯 **DEPLOYMENT RULES**

### **MEMORY UPDATE VALIDATION CHECKLIST:**
- [ ] Problem section updated with new issues solved
- [ ] File status lists reflect current state
- [ ] Lessons learned section has new insights
- [ ] Last Updated date is current
- [ ] Cross-references are working correctly
- [ ] Templates properly filled out with real data
- [ ] Session state reflects current progress

### **DEPLOYMENT CHECKLIST:**
- [ ] All tests passing (unit, integration, E2E)
- [ ] Performance benchmarks met
- [ ] Security scan completed
- [ ] Documentation updated
- [ ] **project_memory.md updated and validated**
- [ ] Backup procedures verified
- [ ] Rollback plan prepared
- [ ] Monitoring configured
- [ ] Team notification sent

### **DEPLOYMENT ENVIRONMENTS:**
1. **Development:** Continuous deployment from feature branches
2. **Staging:** Manual deployment for testing
3. **Production:** Controlled deployment with approval process

### **ROLLBACK CRITERIA:**
- Error rate > 5% above baseline
- Performance degradation > 20%
- Critical functionality broken
- Security vulnerability exposed
- Data corruption detected

---

**REMEMBER:** These rules ensure code quality, security, performance, and maintainability. Follow them consistently for successful project delivery!