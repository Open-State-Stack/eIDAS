<!--
**PURPOSE OF THIS DOCUMENT:**

This checklist is a final quality assurance (QA) tool to be used by both the CAB and the TSP before the Conformity Assessment Report (CAR) is submitted to EETT.

**How to Use:**
1.  **CAB:** The lead auditor should go through this checklist after compiling the final CAR to ensure all components are present, accurate, and correctly formatted.
2.  **TSP:** The TSP's compliance manager should use this checklist to perform a final review of the CAR package received from the CAB before officially submitting it to EETT.

This tool helps prevent common errors and omissions that could lead to delays or rejection of the application by the supervisory body. It is a **final gate** before submission.
-->

# 03_CAR SUBMISSION READINESS CHECKLIST
## Pre-EETT Submission Validation for Conformity Assessment Report

**Document:** Submission Readiness Checklist for 03_CAR  
**Purpose:** Ensure CAR is 100% complete, rejection-proof, and ready for EETT submission  
**Date:** 2025-11-11  
**Status:** Quality Assurance Framework

---

## OVERVIEW

This checklist ensures that the Conformity Assessment Report (CAR) and all related 03_CAR documents are complete, compliant, and ready for submission to EETT as part of the qualified trust service provider application.

**Use this checklist:**
- ☐ **Before CAB finalizes CAR** (internal CAB quality review)
- ☐ **Before TSP submits to EETT** (TSP final validation)
- ☐ **Before EETT reviews application** (EETT completeness check)

---

## SECTION 1: DOCUMENT COMPLETENESS

### 1.1 Core CAR Template

☐ **CAR Template Enriched:** `03_CAR_Template_ENRICHED.md` created with all 11 enrichments from Implementation Guide

☐ **Front-Matter Compliance Checklist:** Present immediately after title page (INSERTION 1)

☐ **Regulatory Context Section:** Present before Executive Summary (INSERTION 2)

☐ **Enhanced Executive Summary:** Includes quantitative metrics (INSERTION 3)
   - Audit days, sites inspected, personnel interviewed
   - Non-conformities count (Critical/Major/Minor)
   - Overall conformity score percentage
   - Highlights (strengths + areas for improvement)

☐ **Placeholder Integration Note:** Present in Section 1 (INSERTION 4)

☐ **CAB Validation Markers (🔍):** Added to 10 critical sections (INSERTION 5)
   - Section 7.2 (Root CA Operations)
   - Section 7.3 (Issuing CA Operations)
   - Section 7.4 (Key Management)
   - Section 7.5 (RA Operations)
   - Section 7.6 (Revocation & Status)
   - Section 10.3 (Art. 24(2)(b) - Systems)
   - Section 10.4 (Art. 24(2)(c) - Secure Issuance)
   - Section 11.1 (QES Conformity)
   - Section 12 (Security Measures)
   - Section 13 (Incident Management)

☐ **Enhanced Third-Party Table:** Section 8.1 includes detailed outsourcing register (INSERTION 6)
   - Provider Name, Service, Certification, Risk Level, Audit Frequency, Status
   - Risk level definitions (Critical, High, Medium, Low)
   - GDPR DPA column
   - Third-country data transfer safeguards (if applicable)

☐ **Non-Conformity Classification Framework:** Section 17.0 includes comprehensive framework (INSERTION 7)
   - Critical (🔴 Show-Stoppers) definition + examples
   - Major (🟠 Conditional) definition + examples
   - Minor (🟡 Recommendations) definition + examples
   - Scoring matrix for overall assessment

☐ **CAB Audit Scope Justification:** Section 9.4 added (INSERTION 8)
   - High-risk areas (deep dive)
   - Medium-risk areas (moderate sampling)
   - Low-risk areas (document review)
   - Sample size justification (statistical basis)
   - Audit limitations & validity (temporal limitation, material changes)

☐ **EETT Article 5.4 Field Enumeration:** Section 13.1 enhanced (INSERTION 9)
   - All 23 mandatory incident report fields listed
   - Grouped by: Identification, Timeline, Affected Services, Impact, Root Cause, Response, Financial, Regulatory, Lessons

☐ **Visual PKI Hierarchy:** Section 7.1 includes ASCII diagram (INSERTION 10)
   - Root CA (offline)
   - Issuing CAs (online, HA)
   - OCSP Responders, TSA Signing Keys
   - Certificate chain example

☐ **Quick Reference Card:** Annex F added (INSERTION 11)
   - 1-page executive summary
   - Services assessed, conformity status, key findings, CAB recommendation
   - Contact information, next steps

---

### 1.2 Separate Traceability Matrix

☐ **Traceability Matrix File Created:** `03_Traceability_Matrix.xlsx` (or `.ods`)

☐ **Sheet 1 (eIDAS Requirements):** Populated with 100+ eIDAS requirements
   - All applicable articles: 13, 19, 20, 24, 28, 38, 42, 33, 34, 44, 45
   - Annexes I-IV covered
   - Evidence IDs linked to CAR Annex B

☐ **Sheet 2 (EETT Requirements):** Populated with 50+ EETT requirements
   - All applicable articles: 3-12
   - Annexes 1-5 covered
   - Greek language primary (with English translations)

☐ **Sheet 3 (ETSI Standards):** Populated with 50+ ETSI standard provisions
   - EN 319 401, 403, 411-1, 411-2, 412-2/3/4/5, 421, 422
   - TS 119 312 (crypto suites), TS 119 612 (trust list)
   - Binding column indicates Mandatory vs. Recommended

☐ **Sheet 4 (Cross-Reference Index):** Filterable consolidated view
   - All requirements from Sheets 1-3 combined
   - Priority, Service Type, TSP Document columns populated
   - Audit Status tracking enabled

☐ **Sheet 5 (NC Register):** All non-conformities tracked (if any)
   - NC ID, Severity, Description, Deadline, Status
   - Links to related requirements in Sheets 1-3
   - Corrective action plan column (TSP to fill post-CAR)

☐ **Conditional Formatting Applied:** Green (C), Red (NC-Critical), Orange (NC-Major), Yellow (NC-Minor)

☐ **Data Validation (Dropdowns) Configured:** All dropdown columns have value lists

☐ **Formulas & Summary Statistics Working:**
   - Conformity percentage auto-calculates
   - Total NCs count correct
   - No formula errors (#DIV/0!, #REF!, etc.)

☐ **Freeze Panes & Auto-Filter Enabled:** Header row frozen, filters active

☐ **File Protection:** Worksheets protected with password (CAB control during audit)

---

### 1.3 Supporting Analysis Documents

☐ **Enrichment Analysis:** `03_CAR_ENRICHMENT_ANALYSIS.md` present in 03_CAR folder

☐ **Implementation Guide:** `CAR_ENRICHMENT_IMPLEMENTATION_GUIDE.md` present in 03_CAR folder

☐ **Traceability Matrix Structure Spec:** `03_Traceability_Matrix_STRUCTURE.md` present in 03_CAR folder

☐ **Submission Readiness Checklist:** This file (`SUBMISSION_READINESS_CHECKLIST.md`) present

---

## SECTION 2: CONTENT QUALITY & ACCURACY

### 2.1 Placeholder Completion

☐ **No Unfilled Placeholders:** Search CAR for `[` character → Result: 0 matches (all bracketed placeholders filled by CAB)

☐ **Cross-Validation with Document 20:** All placeholder values match `PLACEHOLDER_REPLACEMENT_TABLE.xlsx` naming convention

☐ **Consistency Check:** Same placeholder (e.g., `[LEGAL_NAME_GR]`) has identical value throughout CAR (no typos/variations)

---

### 2.2 All 19 EETT Article 10 Items Present

Verify CAR contains all mandatory items per EETT Article 10:

| EETT Art. 10 Item | CAR Section | Present? | Notes |
|-------------------|-------------|----------|-------|
| **(1) CAB identification & accreditation** | Section 1 | ☐ | CAB name, accreditation number, EA member, scope |
| **(2) TSP identification** | Section 2 | ☐ | Legal name, GEMH, AFM, address, contacts, DPO |
| **(3) Service type identifiers** | Section 3 | ☐ | OIDs per ETSI TS 119 612 for each service |
| **(4) Service descriptions** | Section 4 | ☐ | QES, QSeal, QTS, QWAC (as applicable) detailed |
| **(5) Third-party dependencies** | Section 8 | ☐ | All outsourced functions listed, risk-assessed |
| **(6) Public keys & certificates** | Section 5 | ☐ | Root CA, Issuing CAs, OCSP, TSA certificates (PEM) |
| **(6) Service digital identity** | Section 6 | ☐ | Subject Key Identifiers (SKI) for NTL publication |
| **(7) Certification architecture** | Section 7 | ☐ | PKI hierarchy, key management, RA, revocation |
| **(8) Audit methodology & period** | Section 9 | ☐ | Audit dates, sites, methodology, evidence collected |
| **(11) Conformity to eIDAS Art. 24** | Section 10 | ☐ | All 8 sub-requirements (a)-(h) assessed |
| **(12-17) Service-specific conformity** | Section 11 | ☐ | QES (Art. 28), QSeal (Art. 38), QTS (Art. 42), etc. |
| **(11) Security measures** | Section 12 | ☐ | Physical, logical, cryptographic, application security |
| **(11) Incident management** | Section 13 | ☐ | Incident response, BCP/DR, EETT notification |
| **(11) Business continuity** | Section 14 | ☐ | (Merged into Section 13 typically) |
| **(11) Recordkeeping** | Section 15 (or 14) | ☐ | 7-year retention, data subject access, GDPR |
| **(11) Personnel competence** | Section 16 (or 10.2) | ☐ | Training, qualifications, background checks |
| **(18) Non-conformities** | Section 17 | ☐ | All NCs listed, severity, corrective actions, deadlines |
| **(19) Recommendations** | Section 18 | ☐ | CAB recommendations to TSP and EETT, qualification decision |
| **(1) CAB attestation & signature** | Section 19 | ☐ | CAB declaration, Lead Auditor signature, digital signature applied (in PDF) |

☐ **All 19 Items Confirmed Present:** Every item in above table checked

---

### 2.3 Cross-References Valid

☐ **Internal CAR References:** All "See Section X.Y" references point to existing sections (no broken links)

☐ **Annex References:** All "See Annex A/B/C/D/E/F" references exist and contain expected content

☐ **Evidence IDs Consistent:** All `EV-XXX` IDs in CAR body match entries in Annex B (Evidence Register)

☐ **NC IDs Consistent:** All `NC-XXX` IDs in Section 17 match entries in Traceability Matrix Sheet 5

☐ **TSP Document References:** All "Document XX" references (e.g., "Document 01", "Document 07b") align with IMPLEMENTATION_PLAN.md numbering

---

### 2.4 Regulatory Citations Accurate

☐ **eIDAS Articles:** All "eIDAS Art. XX" citations verified against Regulation (EU) 910/2014 official text

☐ **EETT Articles:** All "EETT Art. XX" or "Κανονισμός Άρθρο XX" citations verified against Greek regulation

☐ **ETSI Standards:** All "ETSI EN 319 XXX" or "ETSI TS 119 XXX" citations include correct section numbers

☐ **No Outdated References:** No references to superseded standards (e.g., old ETSI TS 101 456, replaced by EN 319 411)

---

### 2.5 Bilingual Content Accurate

☐ **Greek (Ελληνικά) Headers:** All Greek regulation titles and section headers correct (no machine translation errors)

☐ **English Translations:** Where Greek text appears, English translation (if provided) is accurate

☐ **Consistency:** Same Greek term always translated the same way in English
   - Example: "Πάροχος Υπηρεσιών Εμπιστοσύνης" → always "Trust Service Provider" (not "Trust Services Provider" in one place and "TSP" in another without definition)

---

## SECTION 3: TECHNICAL ACCURACY

### 3.1 Cryptographic Details

☐ **HSM Specifications:** Model, FIPS 140-2 level, certification number verified

☐ **Certificate Profiles:** Sample certificates in Section 5 (or Annex) match ETSI EN 319 412-X profiles
   - QES: QCStatements present (id-etsi-qcs-QcCompliance, id-etsi-qcs-QcType, id-etsi-qcs-QcSSCD if applicable)
   - Subject DN structure compliant (for natural persons: CN + serialNumber; for legal persons: O + organizationIdentifier)

☐ **OIDs Correct:** Service type OIDs in Section 3 match ETSI TS 119 612 Table 1

☐ **Algorithms Approved:** All signature/hash algorithms listed are in ETSI TS 119 312 approved list
   - RSA-2048+, ECDSA P-256+, SHA-256+
   - No weak algorithms (MD5, SHA-1 for new issuance, RSA <2048)

☐ **Time-Stamping Accuracy:** TSA accuracy (±X seconds) is within ETSI EN 319 421 recommendation (typically ±1 second)

---

### 3.2 Operational Metrics

☐ **OCSP Response Time:** Measured p95 latency <200ms (or within TSP's committed SLA)

☐ **Revocation Processing Time:** Tested end-to-end time from hotline call to OCSP "revoked" status is within SLA

☐ **Certificate Issuance Time:** SLA (e.g., 24 hours) stated and verified during witnessed enrollments

☐ **Availability Percentages:** Calculated over stated measurement period (e.g., "99.9% over past 12 months")

---

### 3.3 Financial & Insurance

☐ **Insurance Coverage Amount:** ≥€1,000,000 for QES/QSeal per eIDAS Art. 24(2)(d)

☐ **Insurance Policy Validity:** Current (not expired), renewal date noted

☐ **Audited Financials:** Balance sheet date is <12 months old, auditor identified

☐ **Equity Capital:** Sufficient per risk assessment (no specific eIDAS minimum, but TSP must demonstrate financial stability)

---

## SECTION 4: COMPLIANCE VERIFICATION

### 4.1 eIDAS Compliance

☐ **Article 24 (QTSP Requirements):** All 8 sub-requirements (a)-(h) assessed in Section 10
   - (a) Competent personnel → Finding: ☐ C ☐ NC
   - (b) Trustworthy systems → Finding: ☐ C ☐ NC
   - (c) Secure issuance → Finding: ☐ C ☐ NC
   - (d) Financial resources → Finding: ☐ C ☐ NC
   - (e) CAB audit → Finding: ☐ C (this CAR satisfies)
   - (f) Supervision acceptance → Finding: ☐ C ☐ NC
   - (g) Change notification → Finding: ☐ C ☐ NC
   - (h) Termination plan → Finding: ☐ C ☐ NC

☐ **Service-Specific Articles:** Each applicable service assessed
   - Article 28 (QES): ☐ C ☐ NC ☐ N/A (if service not offered)
   - Article 38 (QSeal): ☐ C ☐ NC ☐ N/A
   - Article 42 (QTS): ☐ C ☐ NC ☐ N/A
   - Article 45 (QWAC): ☐ C ☐ NC ☐ N/A
   - Articles 33, 34, 44 (Validation, Preservation, REM): ☐ C ☐ NC ☐ N/A

☐ **Annexes Compliance:**
   - Annex I (QES certificate content): ☐ Verified in Section 11.1, all fields present
   - Annex III (QSeal certificate content): ☐ Verified in Section 11.2, all fields present
   - Annex II (QSCD requirements, if applicable): ☐ Verified, QSCD certified
   - Annex IV (QTS requirements): ☐ Verified in Section 11.3, time-stamping compliant

---

### 4.2 EETT Compliance

☐ **Article 3 (Registry):** TSP registered or application pending → Verified in Section 2

☐ **Article 4 (Security Measures):** Risk assessment and security controls assessed → Section 12

☐ **Article 5 (Incident Reporting):** Incident response plan, 24h notification, all 23 fields → Section 13

☐ **Article 7-8 (Termination):** Termination plan comprehensive, 7-year archive access, custodian agreement → Section 10.9

☐ **Article 10 (CAR Requirements):** All 19 items present (verified in Section 2.2 above)

☐ **Article 11 (24×7 Revocation):** Hotline tested off-hours, operational → Section 7.6, 13

☐ **Article 12 (7-Year Records):** Retention policy documented, test retrieval successful → Section 14/15

---

### 4.3 ETSI Standards Alignment

☐ **EN 319 401 (TSP Policy):** TSP Policy (Doc 04) aligns with ETSI structure → Verified in CAR

☐ **EN 319 411-2 (Qualified Certificates):** QCP-n, QCP-l, QCP-n-qscd, QCP-l-qscd profiles correct → Section 11

☐ **EN 319 412-X (Certificate Profiles):** Test certificates comply → Section 5, Annex (or Doc 06)

☐ **EN 319 421 (Time-Stamping):** TSA compliant (if applicable) → Section 11.3

☐ **TS 119 312 (Crypto Suites):** Algorithms approved → Section 10.3, 12.3

☐ **TS 119 612 (Trust List):** Service type OIDs correct → Section 3

---

## SECTION 5: NON-CONFORMITIES MANAGEMENT

### 5.1 Non-Conformity Documentation

☐ **All NCs Documented:** Every non-conformity identified during audit is listed in Section 17

☐ **Severity Correctly Assigned:** Each NC classified as Critical, Major, or Minor per framework in Section 17.0

☐ **Root Cause Explained:** Each NC description includes what was observed and why it's non-conforming

☐ **Corrective Actions Specified:** For each Major/Critical NC, CAB specifies what TSP must do to remediate

☐ **Deadlines Assigned:** Each Major/Critical NC has a realistic deadline (30-90 days typical for Major)

☐ **Verification Method Stated:** CAB specifies how remediation will be verified (surveillance audit, document review)

---

### 5.2 Non-Conformity Linkage

☐ **NCs Link to Requirements:** Each NC in Section 17 references specific requirement(s) from Traceability Matrix

☐ **NCs Link to Evidence:** Each NC cites evidence ID (e.g., "Discovered during EV-405 site inspection")

☐ **NCs Affect Overall Assessment:** Overall conformity status (Full/Conditional/Non-Conformity) reflects NC count and severity

---

### 5.3 Critical Non-Conformities Check

☐ **Zero Critical NCs for CAR Issuance:** If any Critical NC exists, CAR **cannot** be issued until resolved
   - If Critical NCs present → CAR status: **DRAFT - Pending TSP Remediation**
   - TSP must resolve, CAB re-audits, then CAR issued

☐ **Major NCs Allow Conditional CAR:** If Major NCs exist, CAR can be issued with conditions
   - CAR Recommendation: **APPROVE WITH CONDITIONS**
   - TSP has deadline to resolve, surveillance audit required

---

## SECTION 6: FORMATTING & PRESENTATION

### 6.1 Document Structure

☐ **Table of Contents (TOC) Accurate:** All section numbers and titles in TOC match actual document structure

☐ **Page Numbers:** If printing to PDF, page numbers correct and continuous

☐ **Section Numbering Consistent:** No skipped or duplicate section numbers (e.g., no "Section 10.1" followed by "Section 10.3" missing 10.2)

☐ **Annexes Ordered Correctly:** Annex A, B, C, D, E, F in that order

---

### 6.2 Tables & Diagrams

☐ **All Tables Formatted:** Column headers bold, rows aligned, no overflow text

☐ **ASCII Diagrams Display Correctly:** PKI hierarchy diagram (Section 7.1), compliance checklist (front-matter), Quick Reference Card (Annex F) render properly in PDF

☐ **Checkbox Symbols:** ☐ (unchecked) and ☒/☑ (checked) display correctly (not as question marks or boxes)

---

### 6.3 Language & Grammar

☐ **Spell-Check Passed:** No spelling errors in English sections

☐ **Grammar Review:** Professional tone, no sentence fragments, consistent verb tense (past tense for audit activities: "The CAB verified...", "Tests were performed...")

☐ **Greek Text Correct:** No garbled Greek characters (ensure UTF-8 encoding if converting to PDF)

☐ **No Lorem Ipsum or Placeholder Text:** All template instructions (e.g., "INSERT TEXT HERE") removed

---

### 6.4 Professional Appearance

☐ **Consistent Fonts:** Entire document uses same font family (e.g., Arial, Calibri, Times New Roman)

☐ **Consistent Formatting:** Heading levels consistent (# for section titles, ## for subsections, ### for sub-subsections in Markdown)

☐ **No Formatting Artifacts:** No stray characters, extra blank pages, misaligned sections

☐ **CAB Branding (if applicable):** CAB logo on title page (if CAB policy requires), footer with CAB contact info

---

## SECTION 7: DIGITAL SIGNATURE & PACKAGING

### 7.1 CAR Signing (Final Step Before Submission)

☐ **CAR Converted to PDF:** Convert enriched Markdown CAR to PDF (or generate directly as PDF)

☐ **Digital Signature Applied:** CAB applies qualified electronic signature/seal to PDF
   - Signature format: **PAdES-LTA** (PDF Advanced Electronic Signature - Long-Term Archival)
   - Signature certificate: CAB's qualified electronic seal certificate
   - Timestamp applied: From qualified TSA (ensures long-term validity)

☐ **Signature Visible:** Signature field visible on signature page (Section 19) or last page

☐ **Signature Validates:** Open PDF in Adobe Reader or similar → Signature shows as valid, trusted

---

### 7.2 Traceability Matrix Signing

☐ **Excel File Finalized:** All formulas calculated, no draft content

☐ **Optional: Digital Signature on Excel:** If CAB policy requires, apply digital signature to Excel file
   - Excel supports XML signatures (Insert > Signature Line)
   - Or: Generate PDF of Excel sheets, sign PDF

---

### 7.3 File Naming Convention

☐ **CAR PDF:** `03_CAR_[TSP_NAME]_[CAB_NAME]_[DATE].pdf`
   - Example: `03_CAR_HellenicTrust_TUV-Austria_2025-11-10.pdf`

☐ **Traceability Matrix:** `03_Traceability_Matrix_[TSP_NAME]_[DATE].xlsx`
   - Example: `03_Traceability_Matrix_HellenicTrust_2025-11-10.xlsx`

☐ **Supporting Docs (if separate):**
   - `03_CAR_ENRICHMENT_ANALYSIS.pdf` (if submitting analysis)
   - `03_CAR_IMPLEMENTATION_GUIDE.pdf` (if submitting guide)

---

### 7.4 Packaging for EETT Submission

☐ **CAR Included in Dossier:** CAR PDF placed in `03_CAR/` folder of overall EETT dossier

☐ **Traceability Matrix Included:** Excel file placed in same folder or as separate attachment to EETT portal

☐ **All Annexes Present in CAR:** Annex A-F in CAR PDF (or Traceability Matrix as separate file if Annex A references it)

☐ **CAR Listed in Master Index:** Main dossier README or Document 20 folder structure lists CAR and its location

---

## SECTION 8: FINAL QUALITY GATES

### 8.1 CAB Internal Review

☐ **Lead Auditor Review:** Lead Auditor has reviewed entire CAR for accuracy

☐ **Technical Reviewer (if applicable):** Independent technical reviewer (another CAB auditor) has peer-reviewed CAR

☐ **CAB Management Approval:** CAB Authorized Signatory (Section 19) has approved CAR for issuance

---

### 8.2 TSP Review (Before EETT Submission)

☐ **TSP Received Draft CAR:** TSP has reviewed CAR for factual accuracy

☐ **TSP Confirms Data Accuracy:** All filled placeholders (company name, HSM model, endpoints, etc.) match TSP's actual configuration

☐ **TSP Acknowledges NCs (if any):** TSP has reviewed non-conformities and agrees to corrective action plan (or has disputed and CAB addressed)

---

### 8.3 EETT Submission Readiness

☐ **CAR Signed by CAB:** Final PDF has CAB's qualified signature (Section 7.1)

☐ **CAR Included in Application:** CAR is part of qualified service application (Document 02 lists CAR as attachment)

☐ **All Supporting Documents Referenced:** Every TSP document referenced in CAR (TSPS, Risk Assessment, Termination Plan, etc.) is included in dossier

☐ **No Broken Links:** If CAR is submitted digitally via EETT portal, any hyperlinks to evidence files work correctly

---

## SECTION 9: REJECTION-PROOFING CHECKS

### 9.1 Common EETT Rejection Reasons (Address Proactively)

☐ **Incomplete CAR:** All 19 EETT Art. 10 items present (verified in Section 2.2)

☐ **Unresolved Critical NCs:** Zero Critical NCs remain (verified in Section 5.3)

☐ **Expired Supporting Docs:** All referenced documents (insurance policy, ISO certs, audited financials) are current (<12 months old)

☐ **CAB Not Accredited:** CAB accreditation certificate included, valid, scope covers eIDAS

☐ **Services Mismatch:** Services listed in CAR Section 3 match services requested in Application (Document 02)

☐ **Financial Coverage Insufficient:** Insurance ≥€1M for QES/QSeal (verified in Section 3.3)

☐ **24×7 Revocation Not Tested:** CAB tested revocation hotline off-hours (verified in Section 3.2)

---

### 9.2 Additional Rejection-Proofing

☐ **No Placeholders Remain:** Absolutely no `[BRACKETS]` in final CAR (verified in Section 2.1)

☐ **Greek Language Compliance:** Key sections in Greek (or bilingual) per EETT preference

☐ **Digital Signature Valid:** EETT can verify CAB's signature without errors

☐ **File Size Reasonable:** CAR PDF <20MB (if larger, consider compressing images or splitting annexes)

---

## SECTION 10: POST-SUBMISSION TRACKING

### 10.1 EETT Acknowledgment

☐ **Submission Receipt:** EETT confirms receipt of application + CAR (typically within 1-2 working days)

☐ **EETT Reference Number:** EETT assigns application reference number, TSP records it

☐ **Completeness Check (5 working days):** EETT performs completeness check per EETT regulation
   - If incomplete: EETT requests additional info (TSP has 5-25 working days to respond)
   - If complete: EETT proceeds to substantive review (3-month target decision timeline)

---

### 10.2 Remediation Tracking (if Major NCs exist)

☐ **TSP Corrective Action Plan (CAP) Submitted:** TSP submits CAP to CAB within 14 days of CAR receipt

☐ **CAB Approves CAP:** CAB reviews and approves TSP's proposed corrective actions

☐ **TSP Implements Corrections:** TSP resolves all Major NCs by deadlines

☐ **TSP Submits Evidence:** TSP provides evidence of remediation (test reports, updated policies, etc.)

☐ **CAB Surveillance Audit Scheduled:** CAB conducts surveillance audit to verify corrections

☐ **CAB Issues Updated CAR (or Surveillance Report):** CAB confirms all Major NCs closed, issues updated CAR or surveillance report to EETT

---

### 10.3 EETT Decision Tracking

☐ **EETT Review Period:** Track 3-month target from notification of completeness (not from initial submission)

☐ **EETT Information Requests (if any):** TSP responds within required window (5-25 working days per EETT specification)

☐ **EETT Decision Received:** EETT issues approval, conditional approval, or rejection

☐ **If Approved:** TSP listed in National Trust List (NTL), services may go live

☐ **If Conditional Approval:** TSP resolves conditions, provides evidence to EETT, re-listed in NTL

☐ **If Rejected:** TSP addresses deficiencies, re-applies (may require new CAB audit if Critical NCs)

---

## FINAL SIGN-OFF

### CAB Sign-Off (Before CAR Release)

☐ **Lead Auditor:** `[LEAD_AUDITOR_NAME]` has reviewed and approves this CAR for issuance.  
Signature: __________________ Date: __________

☐ **Technical Reviewer (if applicable):** `[REVIEWER_NAME]` has peer-reviewed this CAR.  
Signature: __________________ Date: __________

☐ **CAB Authorized Signatory:** `[CAB_AUTHORIZED_PERSON]` approves CAR issuance and application of qualified signature.  
Signature: __________________ Date: __________

---

### TSP Sign-Off (Before EETT Submission)

☐ **QTS Manager:** `[QTS_MANAGER_NAME]` has reviewed CAR and confirms factual accuracy.  
Signature: __________________ Date: __________

☐ **Legal Counsel (if applicable):** `[LEGAL_COUNSEL_NAME]` has reviewed CAR for legal compliance.  
Signature: __________________ Date: __________

☐ **CEO/Authorized Representative:** `[CEO_NAME]` authorizes submission of CAR to EETT as part of qualified service application.  
Signature: __________________ Date: __________

---

## CHECKLIST COMPLETION SUMMARY

**Total Checklist Items:** ~150 items across 10 sections

**Completion Status:**
- ☐ All items checked → **SUBMISSION READY**
- ☐ 1-5 items unchecked (non-critical) → **SUBMISSION READY WITH NOTES** (document exceptions)
- ☐ 6-10 items unchecked → **NEARLY READY** (resolve before submission)
- ☐ 11+ items unchecked → **NOT READY** (substantial work remaining)

**Exceptions/Notes (if any items unchecked):**

1. [Item #XX unchecked because: REASON. Plan to resolve: ACTION BY DATE]
2. [Item #YY unchecked because: REASON. Accepted risk: JUSTIFICATION]
3. ...

**Final Assessment:**

☐ **CAR IS SUBMISSION-READY:** All critical items checked, CAR is complete, compliant, and rejection-proof.

☐ **CAR REQUIRES MINOR REVISIONS:** Address exceptions above, then re-run checklist.

☐ **CAR REQUIRES MAJOR REVISIONS:** Substantial gaps remain, return to implementation phase.

---

**Checklist Completed By:** `[NAME]`, `[ROLE]`  
**Date:** `[DATE]`  
**Signature:** __________________

---

**END OF SUBMISSION READINESS CHECKLIST**

**Next Step:** If all items checked and "SUBMISSION READY", proceed to:
1. Apply qualified signature to CAR PDF (CAB)
2. Package CAR + Traceability Matrix + supporting docs
3. Submit to EETT via official portal or as directed in Application (Document 02)
4. Track EETT review process (Section 10)

**Good luck with your EETT submission!** 🎯
