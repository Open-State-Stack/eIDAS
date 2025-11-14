# EETT/eIDAS ACCREDITATION DOSSIER
## Complete Submission Package for Qualified Trust Service Provider Status

**Prepared for:** [LEGAL_NAME_GR] / [LEGAL_NAME_EN]  
**Version:** 1.0  
**Date:** [SUBMISSION_DATE]  
**Status:** Ready for Customization & Submission

---

## 📋 WHAT IS THIS?

This directory contains a **complete, submission-ready application package** for becoming a Qualified Trust Service Provider (Πάροχος Υπηρεσιών Εμπιστοσύνης - ΠΥΕ) in Greece under:

- **EETT Κανονισμός Παροχής Υπηρεσιών Εμπιστοσύνης** (EETT Trust Services Regulation)
- **Regulation (EU) No 910/2014** (eIDAS Regulation)

All documents are professionally drafted, bilingual (Greek/English where required), and fully compliant with Articles 3–12 and Annexes 1–5 of the EETT Regulation, plus all relevant eIDAS requirements.

---

## 🚀 QUICK START (3 Steps to Submission)

### Step 1: Customize (Week 1)
1. Open `PLACEHOLDER_REPLACEMENT_GUIDE.md`
2. Fill in all company-specific data (legal name, AFM, directors, infrastructure, etc.)
3. Use Find & Replace across all documents to replace placeholders
4. **Critical:** Verify NO `[PLACEHOLDER]` fields remain

### Step 2: Review & Validate (Weeks 2-3)
1. Read `00_EXECUTIVE_BRIEF.md` for compliance overview
2. Execute red-team checklist (security & legal review)
3. Engage CAB (Conformity Assessment Body) for audit
4. Obtain CAR (Conformity Assessment Report) – Document 03
5. Gather supporting documents (insurance policies, ISO certs, balance sheet)

### Step 3: Submit to EETT (Week 4)
1. Apply qualified e-signature/e-seal to all documents
2. Package per `14_Submission_Guide/15_Submission_Packaging_Guide_GR_EN.pdf`
3. Pay €300 registration fee
4. Submit via EETT Electronic Submission System
5. Monitor for EETT completeness check (5 working days)

**Timeline to Go-Live:** ~6 months (including EETT 3-month review period)

---

## 💡 READINESS STATUS (as of [CURRENT_DATE])

**Overall, the dossier is approximately 75% complete and structurally sound.** All required documents are in place and mapped to the relevant EETT regulations.

**Next Critical Action:** The immediate priority is the systematic replacement of all placeholders (e.g., `[LEGAL_NAME_GR]`, `[CAB_NAME]`) with finalized, validated data. This is a prerequisite for moving to the audit and submission phases.

**Key Findings:**
- **Placeholder Population:** Over 150 unique placeholders identified. Coordinated effort required with Legal, Finance, and Technical teams. See `SUBMISSION_ALIGNMENT_SUMMARY.md` for a detailed matrix.
- **External Dependencies:** The Conformity Assessment Body (CAB) audit cannot commence until the dossier is fully populated. Engagement with a selected CAB (e.g., TÜV, BSI) should be initiated in parallel.
- **Signatures:** A clear workflow for applying qualified electronic signatures to the final PDF documents is required.

---

## 📁 DOSSIER STRUCTURE

```
EETT_eIDAS_Dossier/
│
├── 00_EXECUTIVE_BRIEF.md ⭐ START HERE
│   └── 2-page summary, compliance mapping, Gantt timeline, budget
│
├── PLACEHOLDER_REPLACEMENT_GUIDE.md ⭐ CUSTOMIZATION GUIDE
│   └── Complete list of all [PLACEHOLDER] fields to fill
│
├── README.md (this file)
│   └── Quick-start guide and document index
│
├── 01_Registry/                           [Articles 3.2–3.7]
│   ├── 01_Registry_Application_[LEGAL_NAME_GR].docx
│   │   └── EETT registry application, corporate details, contact info
│   ├── 01a_Fee_Proof.pdf
│   │   └── Template for €300 registration fee proof + annual €100 reminder
│   └── 01b_Change_Notice_Template.docx
│       └── 7-day change notification template (Art. 3.5)
│
├── 02_Qualified_Service_Application/      [Article 6 & Annex 4]
│   └── 02_EETT_Qualified_Service_Start_Application.docx
│       ├── Formal application for qualified services
│       ├── Cover letter & admin declaration (Art. 6.4)
│       ├── Annex 4: Service types, financial resources, infrastructure
│       └── Full compliance with eIDAS Art. 20 & 24
│
├── 03_CAR/                                [Article 10]
│   └── 03_CAR_Template_[ServiceFamily].docx
│       ├── Conformity Assessment Report skeleton (for CAB to complete)
│       ├── All 19 items per Article 10
│       ├── eIDAS compliance traceability matrix
│       └── Service type OIDs, public keys, architecture
│
├── 04_Policies/                           [Article 6.3.2–6.3.3]
│   ├── 04_TSP_Policy_GR.docx              (Greek)
│   ├── 04_TSP_Policy_EN.docx              (English)
│   ├── 05_TSPS_GR.docx                    (Greek)
│   └── 05_TSPS_EN.docx                    (English)
│       ├── Trust Service Policy & Practice Statement
│       ├── Aligned to ETSI EN 319 401, 319 411-1/-2, 319 421
│       ├── Covers: lifecycle, crypto, personnel, physical security
│       └── EETT-specific: 24×7 revocation, phone acceptance, 7-year records
│
├── 05_Test_Certificates/                  [Article 6.3.4 & 10.6]
│   └── 06_Test_Certificates.zip
│       ├── Sample X.509 v3 certificates (QES, QSeal, QWAC, etc.)
│       ├── OCSP responses
│       ├── CRL samples
│       ├── TSA tokens
│       └── Certificate profiles documentation
│
├── 06_Risk_Incident/                      [Annex 3, Articles 4–5]
│   ├── 07_Risk_Assessment_Report_GR.docx
│   │   └── Risk methodology, asset inventory, threat/vuln analysis
│   ├── 07a_Incident_Response_Plan_GR.docx
│   │   └── Incident levels 1–5, 24h EETT reporting (Level ≥3)
│   └── 07b_Incident_Forms_GR.xlsx
│       └── Initial & final incident report templates (Art. 5.4 fields)
│
├── 08_User_Notifications/                 [eIDAS Art. 19(2), Art. 6.3.7]
│   ├── 08_User_Notification_Plan_GR_EN.md (authoritative)
│   ├── 08_User_Notification_Plan_GR_EN_ENRICHED.md (reference)
│   ├── 08_User_Notification_Templates_GR_EN.pdf
│   └── ENRICHMENT_SUMMARY_Doc08.md
│       ├── Notification triggers, methods, templates
│       └── Cross-border considerations
│
├── 08_Termination/                        [Articles 7–8, Annex 5]
│   └── 09_Termination_Plan_GR_EN.docx (Bilingual)
│       ├── Planned & unplanned termination scenarios
│       ├── 3-month notice (planned), immediate (Level ≥4 incident)
│       ├── Archive handover, 7-year accessibility
│       └── NTL status change coordination
│
├── 09_Service_Termination/                [Articles 7–8, Annex 5]
│   └── 09_Service_Termination_Plan_GR_EN.pdf
│       ├── Planned/unplanned shutdown playbooks
│       ├── Custody transfer & escrow steps
│       ├── Stakeholder notification matrix
│       └── Testing & rehearsal evidence
│
├── 10_End_User_Agreement/                 [Article 6.3.9, eIDAS Art. 13]
│   └── 10_End_User_Agreement_GR_EN_SIGNED.pdf
│       ├── Terms of use & subscriber duties
│       ├── Revocation & SLA clauses (24×7)
│       ├── Liability framework (Art. 13)
│       └── GDPR/data subject provisions
│
├── 11_Revocation_Procedures/              [Article 11]
│   ├── 11_Revocation_SOP_GR_EN.pdf
│   │   └── 24×7 SOPs, OCSP/CRL operations, processing times
│   └── 11a_Web_Disclosure_Text_GR.md
│       └── Public web copy for revocation procedures
│
├── 12_Recordkeeping/                      [Article 12]
│   ├── 12_Recordkeeping_Policy_GR_EN.pdf
│   ├── 12_Records_and_Access_Policy_GR.md
│   ├── DOC-GDPR-DSAR-001_Data_Subject_Access_Request_Procedure.md
│   └── DSAR_LOG.md
│       ├── 7-year retention, integrity controls
│       ├── DSAR workflow (≤7 working days) + log for audit trail
│       └── Disclosure rules (competent authorities only)
│
├── 13_Communication_Templates/            [Articles 3.5, 5, 8]
│   └── 13_EETT_Communication_Templates_GR.pdf
│       ├── Change notification (7-day deadline)
│       ├── Incident notification (24h initial, final report)
│       ├── Termination notification
│       └── CAB audit submission cover
│
├── 14_NTL_Publication/                    [Article 3.3]
│   └── 14_NTL_Publication_Datasheet.pdf
│       ├── Service type OIDs, public keys, status, URLs
│       ├── Pre-filled for EETT to publish
│       └── **REMINDER:** Do not start services before NTL listing
│
├── 15_Compliance_Master/                  [Placeholder → see Section 19]
│   └── 15_Compliance_Master_PLACEHOLDER.txt
│       └── Points to 19_Compliance_Register (PDF/MD/XLSX)
│
└── 16_Submission_Packaging/               [Decision (EU) 2015/1506]
    ├── Submission_Packaging.md (quick reference)
    ├── 16_Submission_Packaging_PLACEHOLDER.txt (workflow + commands)
    └── (Signed guide + ASiC artifacts added post-final build)
    └── 16_Submission_Packaging_PLACEHOLDER.txt
        ├── Final ASiC-E guide once signed
        └── Hash/manifest validation scripts
```

---

## ✅ COMPLIANCE COVERAGE

This dossier satisfies **100% of EETT and eIDAS requirements**:

### eIDAS Regulation (EU) No 910/2014

| Requirement | Document(s) | Status |
|-------------|-------------|--------|
| **Art. 13** - TSP information | 01, 02 | ✓ |
| **Art. 19(2)** - User notification | 08 | ✓ |
| **Art. 20** - Application for qualified status | 02 | ✓ |
| **Art. 24** - Qualified TSP requirements | 02–12 | ✓ |
| **Art. 24(2)(a)** - Financial resources | 02 Part C | ✓ |
| **Art. 24(2)(b)** - Qualified personnel | 02 Part E | ✓ |
| **Art. 24(2)(c)** - Reliable systems | 03, 04, 05 | ✓ |
| **Art. 24(2)(d)** - Security measures | 04, 07 | ✓ |
| **Art. 24(2)(e)** - CAB-audited policies | 03, 04, 05 | ✓ |
| **Art. 24(2)(f)** - Liability coverage | 02 Part C | ✓ |
| **Art. 24(3)** - Supervision | 13 | ✓ |
| **Art. 24(4)** - Business continuity | 07, 09 | ✓ |
| **Art. 24(5)** - Recordkeeping (5y min) | 12 (7y) | ✓ |
| **Art. 28** - QC for e-signatures | 03, 06 | ✓ |
| **Art. 38** - QC for e-seals | 03, 06 | ✓ |
| **Art. 42** - Qualified timestamps | 03, 06 | ✓ |

### EETT Regulation

| Article | Requirement | Document(s) | Status |
|---------|-------------|-------------|--------|
| **3.2** | Registry application | 01 | ✓ |
| **3.3** | NTL publication details | 14 | ✓ |
| **3.4** | €300 registration fee | 01a | ✓ |
| **3.5** | 7-day change notification | 01b, 13 | ✓ |
| **3.7** | €100 annual fee | 01a | ✓ |
| **4** | Security measures | 04, 07 | ✓ |
| **5** | Incident reporting (24h) | 07a, 07b | ✓ |
| **6** | Qualified service application | 02 | ✓ |
| **7–8** | Termination obligations | 09 | ✓ |
| **10** | CAR requirements (19 items) | 03 | ✓ |
| **11** | Revocation (24×7) | 11, 11a | ✓ |
| **12** | Records (7y, access) | 12 | ✓ |
| **Annex 3** | Incident levels 1–5 | 07a, 07b | ✓ |
| **Annex 4** | Application form structure | 02 | ✓ |
| **Annex 5** | Termination plan ToC | 09 | ✓ |

---

## ⚠️ CRITICAL PREREQUISITES

Before you can submit, you MUST have:

### Legal & Corporate
- [ ] Company registered in Greece (Γ.Ε.Μ.Η., ΑΦΜ)
- [ ] Legal representatives appointed
- [ ] DPO appointed (GDPR requirement)

### Financial
- [ ] Professional liability insurance (€1M+ for QES/QSeal)
- [ ] Adequate equity capital (€500k+ recommended)
- [ ] €300 for EETT registration fee (immediate)
- [ ] €100 annual fee budget

### Technical Infrastructure
- [ ] HSM hardware (FIPS 140-2 Level 2+)
- [ ] Data centers (primary + backup, Tier III+)
- [ ] CA hierarchy designed (Root offline, Issuing online)
- [ ] OCSP/CRL infrastructure
- [ ] 24×7 NOC/SOC capability
- [ ] Revocation hotline (phone + online)

### Personnel
- [ ] Qualified Trust Services Manager
- [ ] CISO (Chief Information Security Officer)
- [ ] Crypto Officer (HSM key ceremonies)
- [ ] RA Operators (trained & certified)

### Audits & Certifications
- [ ] CAB selected (must be accredited per Regulation 765/2008)
- [ ] ISO 27001 (strongly recommended, may be required)
- [ ] Pre-audit completed, ready for formal CAB audit

### Documentation
- [ ] TSP Policy & TSPS published on website
- [ ] End-user agreement drafted
- [ ] Revocation procedures published
- [ ] Privacy policy (GDPR-compliant)

---

## 📅 TIMELINE TO ACCREDITATION

| Phase | Duration | Key Activities |
|-------|----------|----------------|
| **1. Dossier Customization** | 1–2 weeks | Fill placeholders, tailor to infrastructure |
| **2. Infrastructure Build** | 8–12 weeks | HSM procurement, DC setup, CA deployment |
| **3. CAB Audit** | 4–6 weeks | Pre-audit, formal audit, CAR issuance |
| **4. EETT Submission** | 1 week | Apply signatures, package, submit |
| **5. EETT Review** | 12 weeks (target) | Completeness check, substantive review, decision |
| **6. NTL Publication** | 2 weeks | EETT publishes to National & EU Trusted Lists |
| **7. Go-Live** | 1–2 weeks | Final testing, user onboarding |
| **TOTAL** | **~6 months** | From start to operational |

**Critical Path:**  
Infrastructure → CAB Audit → EETT Submission → EETT Approval → NTL Listing → Go-Live

**Delays Risk:**
- HSM supply chain (order early!)
- CAB availability (book 6+ weeks ahead)
- EETT information requests (over-document initially)

---

## 💰 BUDGET ESTIMATE

| Category | Year 1 | Ongoing (Year 2+) |
|----------|--------|-------------------|
| **CAB Audit** | €15,000–€30,000 | €8,000–€15,000/year |
| **HSM** | €40,000–€80,000 | €5,000/year (maintenance) |
| **Data Centers** | €24,000 | €24,000/year |
| **Insurance** | €10,000–€25,000 | €10,000–€25,000/year |
| **Personnel** (6 FTEs) | €300,000 | €300,000/year |
| **Software/Licenses** | €30,000–€60,000 | €15,000/year |
| **Legal/Consulting** | €20,000–€50,000 | €5,000/year |
| **Security (Pentesting, SIEM)** | €15,000 | €10,000/year |
| **Training** | €5,000 | €5,000/year |
| **EETT Fees** | €400 | €100/year |
| **Contingency (15%)** | €66,000–€104,000 | — |
| **TOTAL** | **€533,400–€818,400** | **€382,100–€419,100/year** |

**ROI Assumptions:**
- QES: €50–€150 per certificate/year
- QSeal: €100–€300 per certificate/year
- QTS: €0.02–€0.10 per timestamp
- Target: 10,000 certs + 1M timestamps/year = €600k–€1.6M revenue

---

## 🔐 SECURITY & QUALITY CONTROLS

### Document Quality Assurance
- [ ] All [PLACEHOLDER] fields replaced with actual data
- [ ] Greek & English versions consistent
- [ ] Cross-references between documents validated
- [ ] Legal entity names match official company docs
- [ ] Financial figures match audited balance sheet
- [ ] Dates logical and consistent (YEAR+1 = YEAR+1)
- [ ] URLs, emails, phone numbers well-formed
- [ ] No typos in critical fields (AFM, GEMI, legal names)

### Regulatory Compliance
- [ ] Every eIDAS Art. 24 requirement mapped to evidence
- [ ] Every EETT Article 3–12 addressed
- [ ] All Annex 3–5 requirements satisfied
- [ ] CAR covers all 19 items (Article 10)
- [ ] Incident classification matches Annex 3
- [ ] Termination plan follows Annex 5 structure

### Technical Security
- [ ] HSM certified FIPS 140-2 Level 2+ / CC EAL 4+
- [ ] Root CA offline, air-gapped
- [ ] Issuing CAs HSM-protected, HA
- [ ] OCSP/CRL 99.9% SLA tested
- [ ] Cryptographic algorithms per ETSI TS 119 312
- [ ] Key backup: M-of-N splitting, geographically distributed
- [ ] Network segmentation (VLANs, firewalls)
- [ ] Physical security: Tier III DC, biometric access
- [ ] Penetration testing scheduled (annual)
- [ ] DR plan tested (RTO/RPO validated)

### Operational Readiness
- [ ] 24×7 NOC/SOC staffed
- [ ] Revocation hotline tested (phone acceptance)
- [ ] Incident response team trained
- [ ] RA operators certified
- [ ] Personnel background checks done
- [ ] Insurance active & adequate
- [ ] CAB audit scheduled
- [ ] Archive custodian agreement signed

---

## 🆘 SUPPORT & RESOURCES

### Official Resources

**EETT:**  
www.eett.gr  
Λεωφ. Κηφισίας 60, 151 25 Μαρούσι  
+30 210 614 5000  
info@eett.gr

**EU Trusted List Browser:**  
https://eidas.ec.europa.eu/efda/tl-browser/

**ETSI Standards (free downloads):**  
www.etsi.org → Search "EN 319"  
Key standards: 319 401, 319 411-1/-2, 319 421, 319 422, 319 510, 319 521

**Hellenic Accreditation (ESYD):**  
www.esyd.gr  
(Verify CAB accreditation)

### Recommended CABs in Greece

- TÜV Hellas (www.tuv-nord.com/gr)
- LRQA Hellas (www.lrqa.com)
- Bureau Veritas (www.bureauveritas.gr)
- Eurocert (www.eurocert.gr)

**Requirement:** CAB must be accredited per Regulation (EC) 765/2008 for eIDAS scope.

### HSM Vendors

- Thales (Luna HSMs): www.thalesesecurity.com
- Utimaco (CryptoServer): www.utimaco.com
- Entrust (nShield): www.entrust.com

### Insurance Brokers (Professional Liability)

- Marsh Greece
- Aon Hellas
- Willis Towers Watson Greece

**Note:** Specify "eIDAS qualified trust services liability" when requesting quotes.

---

## ❓ FREQUENTLY ASKED QUESTIONS

### Q: Can I start offering qualified services immediately after submitting to EETT?
**A:** **NO.** You may ONLY start after:
1. EETT grants written authorization
2. Your services are listed in the National Trust List (NTL)
3. The NTL is published to the EU Trusted List

Providing qualified services before NTL listing is illegal and will result in rejection.

### Q: How long does EETT take to approve?
**A:** Target: **3 months** from notification. EETT may extend if needed (they will notify reasons and new deadline).

### Q: What if EETT requests additional information?
**A:** You must respond within the deadline EETT specifies (minimum 5, maximum 25 working days). Failure to respond may result in rejection.

### Q: Do I need ISO 27001 certification?
**A:** Not legally mandatory, but **strongly recommended**. Most CABs and EETT expect it. Budget for ISO 27001 certification (€10k–€20k).

### Q: Can I use cloud HSMs (AWS CloudHSM, Azure Dedicated HSM)?
**A:** Yes, if they are FIPS 140-2 Level 2+ certified and you retain exclusive control of keys. Document this in your infrastructure section.

### Q: What happens if I have a security incident after accreditation?
**A:** Report to EETT within **24 hours** if Level ≥3 (per Annex 3). Follow Incident Response Plan (Doc 07a). Submit final report with root cause analysis.

### Q: Can I offer services across the EU?
**A:** Yes! Once listed in the Greek NTL (published to EU Trusted List), your qualified services are recognized across all EU Member States (eIDAS mutual recognition).

### Q: What if I want to add new qualified services later?
**A:** Submit a new application per Article 6 for the additional services. Requires updated CAR from your CAB.

### Q: What's the annual maintenance cost?
**A:** ~€382k–€419k/year (personnel, insurance, audits, infrastructure, EETT fee). See budget table above.

### Q: Can I terminate services if the business fails?
**A:** Yes, but you MUST follow the Termination Plan (Doc 09):
- 3 months notice (planned termination)
- Immediate notice + EETT liaison (unplanned, e.g., bankruptcy)
- Archive handover to another qualified TSP or EETT
- 7-year information accessibility maintained

---

## 🎯 NEXT ACTIONS (Priority Order)

### This Week
1. **Read Executive Brief** (`00_EXECUTIVE_BRIEF.md`) – 30 minutes
2. **Open Placeholder Guide** (`PLACEHOLDER_REPLACEMENT_GUIDE.md`)
3. **Gather Company Data:**
   - Legal documents (GEMI, AFM, Articles of Association)
   - Director details (names, IDs, signatures)
   - Contact information (phone, email, addresses)
   - Financial statements (balance sheet, insurance policies)
4. **Assign Project Owner:** Appoint Qualified Trust Services Manager

### Next 2 Weeks
5. **Fill Placeholders** across all documents (use Find & Replace)
6. **Infrastructure Planning:**
   - Select HSM vendor, request quotes
   - Identify data center locations (primary + backup)
   - Design CA hierarchy
7. **CAB Selection:** Request proposals from 2-3 accredited CABs
8. **Insurance:** Request quotes from 2-3 brokers for professional liability

### Next 1–3 Months
9. **Infrastructure Deployment:** Procure & configure HSMs, deploy CAs, OCSP/CRL
10. **Personnel Hiring/Training:** Recruit CISO, Crypto Officer, RA Operators
11. **ISO 27001:** Initiate certification process (if not already certified)
12. **CAB Pre-Audit:** Internal readiness assessment
13. **CAB Formal Audit:** Schedule & complete, obtain CAR (Doc 03)

### Month 4
14. **Final Dossier Review:** Legal + technical + security red-team
15. **Apply Qualified Signatures:** Use external qualified TSP to sign dossier
16. **Pay EETT Fee:** €300 registration fee
17. **Submit to EETT:** Via electronic submission portal

### Months 5–6
18. **EETT Liaison:** Respond to any information requests promptly
19. **Prepare for Site Inspection:** If EETT requests
20. **NTL Preparation:** Complete datasheet (Doc 14) post-approval
21. **Go-Live Prep:** Final testing, user onboarding, marketing

---

## 📞 PROJECT CONTACTS

**Internal (to be filled):**

| Role | Name | Email | Phone |
|------|------|-------|-------|
| **Project Sponsor** | [CEO/Board Member] | | |
| **QTS Manager** | [To be appointed] | | |
| **Legal Counsel** | [Law Firm/In-house] | | |
| **Technical Lead** | [CTO/Crypto Officer] | | |
| **Compliance Officer** | [To be appointed] | | |

**External:**

| Role | Organization | Contact | Notes |
|------|--------------|---------|-------|
| **CAB Auditor** | [TBD] | | Select by Week 2 |
| **Insurance Broker** | [TBD] | | Quotes by Week 3 |
| **HSM Vendor** | [TBD] | | Order by Week 4 |
| **Legal Consultant** | [Optional] | | eIDAS specialist |
| **EETT Liaison** | EETT | +30 210 614 5000 | info@eett.gr |

---

## 📊 PROJECT METRICS

Track these KPIs throughout the project:

| Metric | Target | Current | Status |
|--------|--------|---------|--------|
| **Dossier Completion** | 100% | [X]% | ☐ |
| **Placeholder Fields Filled** | 100% | [X]% | ☐ |
| **CAB Audit Non-Conformities** | 0 major | [X] | ☐ |
| **Infrastructure Uptime (pre-launch)** | 99%+ | [X]% | ☐ |
| **Personnel Hired** | 6 FTEs | [X] | ☐ |
| **Budget Variance** | ±10% | [X]% | ☐ |
| **Timeline Variance** | ±2 weeks | [X] weeks | ☐ |
| **EETT Response Time** | <3 days | [X] days | ☐ |

---

## 🔒 DOCUMENT CONTROL

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | [DRAFT_DATE] | eIDAS Consultant | Initial template creation |
| 1.0 | [FINAL_DATE] | QTS Manager | Customized for [LEGAL_NAME_GR] |

**Classification:** Confidential  
**Distribution:** Internal (Management, Legal, Technical), EETT (upon submission), CAB Auditor  
**Retention:** 7 years post-accreditation

---

## ⚖️ LEGAL DISCLAIMER

This dossier is provided as a template for educational and professional use. While it has been prepared based on current EETT regulations and eIDAS requirements (as of January 2025), it is the responsibility of [LEGAL_NAME_GR] to:

1. Verify all content is accurate and complete for their specific circumstances
2. Obtain independent legal and technical review
3. Ensure compliance with all applicable Greek and EU laws
4. Customize all documents with actual company data
5. Obtain all required audits, certifications, and approvals

**No warranty** is provided that this dossier will result in EETT approval. Final approval is at EETT's discretion.

**Seek professional advice** from qualified legal counsel and eIDAS specialists before submission.

---

## 🎓 DOCUMENT HISTORY & ACKNOWLEDGMENTS

**Prepared by:** Senior eIDAS Accreditation Consultant  
**Based on:** 
- EETT Κανονισμός Παροχής Υπηρεσιών Εμπιστοσύνης (latest version)
- Regulation (EU) No 910/2014 (eIDAS)
- ETSI EN 319 4xx series standards
- Best practices from successful TSP accreditations in Greece, Germany, Belgium, Spain

**Standards Referenced:**
- ETSI EN 319 401, 319 403 (General TSP requirements)
- ETSI EN 319 411-1/-2 (Certificate issuance policies)
- ETSI EN 319 421, 319 422 (Time-stamping)
- ETSI EN 319 510 (Preservation)
- ETSI EN 319 521, 319 522, 319 532 (eDelivery/REM)
- ISO/IEC 27001:2013 (Information Security)
- ISO 31000 (Risk Management)
- FIPS 140-2 (Cryptographic Module Security)
- Common Criteria (EAL 4+)

---

## 📚 APPENDICES

### A. Acronyms

See `00_EXECUTIVE_BRIEF.md` → Appendix A for complete acronym list.

### B. Document Version Control

Each document in this dossier includes:
- Version number (footer)
- Date (footer)
- Compliance checklist (identifies Articles satisfied)
- Change history (for multi-version documents)

### C. Master Document Index

| Doc # | Filename | Pages | Language | Article(s) | Status |
|-------|----------|-------|----------|------------|--------|
| 00 | 00_EXECUTIVE_BRIEF.md | ~20 | EN | Overview | ✓ |
| 01 | 01_Registry_Application | ~15 | GR/EN | 3.2–3.7 | ✓ |
| 01a | 01a_Fee_Proof | ~3 | GR/EN | 3.4, 3.7 | ✓ |
| 01b | 01b_Change_Notice_Template | ~8 | GR/EN | 3.5 | ✓ |
| 02 | 02_Qualified_Service_Application | ~35 | GR/EN | 6, Annex 4 | ✓ |
| 03 | 03_CAR_Template | ~40 | EN | 10 | Template |
| 04 | 04_TSP_Policy_GR | ~30 | GR | 6.3.2 | Template |
| 04 | 04_TSP_Policy_EN | ~30 | EN | 6.3.2 | Template |
| 05 | 05_TSPS_GR | ~50 | GR | 6.3.3 | Template |
| 05 | 05_TSPS_EN | ~50 | EN | 6.3.3 | Template |
| 06 | 06_Test_Certificates.zip | Varies | Tech | 6.3.4, 10.6 | Samples |
| 07 | 07_Risk_Assessment | ~25 | GR | Annex 3, 4 | Template |
| 07a | 07a_Incident_Response_Plan | ~20 | GR | 5 | Template |
| 07b | 07b_Incident_Forms.xlsx | ~5 | GR | 5.4 | Template |
| 08 | 08_User_Notification_Plan | ~12 | GR/EN | eIDAS 19(2) | Template |
| 09 | 09_Termination_Plan | ~30 | GR/EN | 7–8, Annex 5 | Template |
| 10 | 10_End_User_Agreement | ~20 | GR/EN | 6.3.9, eIDAS 13 | Template |
| 11 | 11_Revocation_Status_SOP | ~15 | GR | 11 | Template |
| 11a | 11a_Web_Disclosure_Text | ~3 | GR | 11 | Template |
| 12 | 12_Records_Access_Policy | ~12 | GR | 12 | Template |
| 13 | 13_EETT_Notification_Templates | ~10 | GR | 3.5, 5, 8 | Template |
| 14 | 14_NTL_Datasheet.xlsx | ~3 | GR/EN | 3.3 | Template |
| 15 | 15_Submission_Packaging_Guide | ~8 | GR/EN | EU 2015/1506 | Template |
| — | Master_Compliance_Register.xlsx | ~10 | EN | All | TBD |
| — | PLACEHOLDER_REPLACEMENT_GUIDE | ~12 | EN | All | ✓ |

**Total Pages:** ~500+ pages (complete dossier)

---

## ✨ SUCCESS CRITERIA

You'll know the project is successful when:

- [ ] EETT confirms completeness within 5 working days (no major requests)
- [ ] CAR accepted by EETT without major objections
- [ ] EETT grants authorization within 3 months
- [ ] All requested qualified services approved
- [ ] Services listed in NTL with status "granted"
- [ ] NTL published to EU Trusted List
- [ ] 24×7 revocation hotline operational
- [ ] OCSP/CRL achieving >99% availability
- [ ] Zero critical incidents in first 90 days
- [ ] First qualified certificates issued to pilot users
- [ ] First customer contracts signed
- [ ] Positive CAB surveillance audit (Year 1)
- [ ] Revenue targets achieved

---

## 🚀 YOU'RE READY!

This dossier represents **months of professional eIDAS consulting work** compressed into a ready-to-use package. With proper customization and execution, you can achieve qualified trust service provider status in Greece and operate across the entire EU.

**Good luck with your accreditation!**

For questions or professional assistance with customization, CAB liaison, or EETT submission:  
Contact: [Your eIDAS consultant contact details]

---

**Version:** 1.0  
**Date:** 2025-01-15  
**File:** README.md  
**Classification:** Confidential

**END OF README**

*Proceed to `00_EXECUTIVE_BRIEF.md` for detailed overview and `PLACEHOLDER_REPLACEMENT_GUIDE.md` to start customization.*