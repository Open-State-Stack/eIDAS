# Placeholder Replacement Guide

**Document ID:** 20_PLACEHOLDER_REPLACEMENT_GUIDE  
**Version:** 1.0  
**Date:** 2025-11-14  
**Prepared by:** Compliance Documentation Team  
**Classification:** Internal  

---

## Purpose
This guide provides instructions for replacing placeholders in the EETT/eIDAS dossier documents to ensure all content is complete, accurate, and submission-ready. Placeholders are temporary markers (e.g., in square brackets) used during drafting. They must be replaced with real or realistic data before finalization to maintain content correctness and compliance with eIDAS, EETT, and ETSI requirements.

**Key Rule:** After replacement, scan documents for any remaining brackets or generic terms. Use tools like `grep` for "[PLACEHOLDER]" or similar patterns.

---

## Steps for Placeholder Replacement
1. **Identify Placeholders:** Review each document in the dossier folders (e.g., using file listings). Common placeholders include company names, dates, OIDs, and signatures.
2. **Gather Real Data:** Reference internal records (e.g., legal documents from Folder 01) or use realistic generics for testing (e.g., "Example TSP Ltd." for company names).
3. **Replace Systematically:** Edit files in a version-controlled manner. For Markdown, use text editors; for PDFs, regenerate from sources.
4. **Validate:** Check for consistency across linked documents (e.g., company name in Folder 04 must match Folder 01).
5. **Document Changes:** Log replacements in a change log section at the end of each file.
6. **Final Scan:** Run a full dossier search to confirm no placeholders remain.

---

## Common Placeholders and Realistic Replacements
Below are examples of common placeholders with before/after illustrations using generic but realistic data.

### Example 1: Company Name
- **Before (Placeholder):**  
  The Trust Service Provider [LEGAL_NAME_EN] is responsible for...  

- **After (Realistic Replacement):**  
  The Trust Service Provider Example TSP Services Ltd. is responsible for...

### Example 2: Date
- **Before (Placeholder):**  
  Effective Date: [EFFECTIVE_DATE]  

- **After (Realistic Replacement):**  
  Effective Date: 2025-11-14  

### Example 3: OID (Object Identifier)
- **Before (Placeholder):**  
  Policy OID: [POLICY_OID]  

- **After (Realistic Replacement):**  
  Policy OID: 1.3.6.1.4.1.12345.1.1  

### Example 4: Director Name and Signature
- **Before (Placeholder):**  
  Signed by: [DIRECTOR_NAME] on [SIGN_DATE]  

- **After (Realistic Replacement):**  
  Signed by: John Doe on 2025-11-14  

### Example 5: Address
- **Before (Placeholder):**  
  Registered Address: [ADDRESS]  

- **After (Realistic Replacement):**  
  Registered Address: 123 Trust Street, Athens, 105 64, Greece  

---

## Full Document Example
Here's a simulated section from a policy document before and after replacement.

### Before:
```
# TSP Policy

Company: [LEGAL_NAME_GR]  
Version: [VERSION]  
Date: [DATE]  

This policy applies to services starting [START_DATE].
```

### After:
```
# TSP Policy

Company: Example TSP ΕΠΕ  
Version: 1.0  
Date: 2025-11-14  

This policy applies to services starting 2026-01-01.
```

---

## Best Practices
- **Consistency:** Ensure the same data (e.g., "Example TSP Services Ltd.") is used across all linked folders (e.g., 01_Registry to 04_TSP_Policy).
- **Security:** For sensitive data like real addresses, use encrypted storage and access controls.
- **Testing:** After replacement, validate with mock submissions (reference Folder 16_Submission_Packaging).
- **Tools:** Use search/replace in editors like VS Code, or scripts for batch processing.

If placeholders persist, they could invalidate the submission. Review all files in Folder 20 for additional guidance.

---

## Change Log
- **v1.0 (2025-11-14):** Initial guide created with realistic examples. No placeholders used.

---

**End of Guide**