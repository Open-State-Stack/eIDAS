# EXECUTIVE BRIEF
## Complete EETT/eIDAS Accreditation Dossier for Ελληνικές Υπηρεσίες Εμπιστοσύνης Α.Ε.

**Date:** [SUBMISSION_DATE]  
**Version:** 1.0  
**Classification:** Confidential – For EETT Submission

---

## EXECUTIVE SUMMARY

This dossier contains a complete, submission-ready application package for **[LEGAL_NAME_GR]** to become a Qualified Trust Service Provider (Πάροχος Υπηρεσιών Εμπιστοσύνης - ΠΥΕ) under:

- **EETT Κανονισμός Παροχής Υπηρεσιών Εμπιστοσύνης** (EETT Trust Services Regulation)
- **Regulation (EU) No 910/2014** (eIDAS Regulation)

### Services Applied For

☐ Qualified Electronic Signatures (QES) - Natural & Legal Persons  
☐ Qualified Electronic Seals (QSeal)  
☐ Qualified Time-Stamping (QTS)  
☐ Qualified Validation Service  
☐ Qualified Preservation Service  
☐ Qualified Electronic Delivery Service (REM)  
☐ Qualified Website Authentication Certificates (QWAC)

### Key Milestones

| Milestone | Target Date | Status |
|-----------|-------------|--------|
| **Dossier Preparation Complete** | [COMPLETION_DATE] | ✓ |
| **Internal Review & QA** | [QA_DATE] | ☐ |
| **CAB Final Audit** | [CAB_AUDIT_DATE] | ☐ |
| **EETT Submission** | [SUBMISSION_DATE] | ☐ |
| **EETT Completeness Check** | +5 working days | ☐ |
| **EETT Decision** | +3 months (target) | ☐ |
| **NTL Publication** | Post-approval | ☐ |
| **Service Go-Live** | [GO_LIVE_DATE] | ☐ |

---

## DOSSIER STRUCTURE & COMPLIANCE MAPPING

This dossier systematically addresses ALL requirements of the EETT Regulation and eIDAS:

### 1. EETT REGISTRY APPLICATION (Articles 3.2–3.7)

**Deliverables:**
- `01_Registry/01_Registry_Application_[LEGAL_NAME_GR].docx` ✓
- `01_Registry/01a_Fee_Proof.pdf` ✓
- `01_Registry/01b_Change_Notice_Template.docx` ✓

**Compliance:**
- ✓ Article 3.2: Provider details, contact information
- ✓ Article 3.3: Public contact details for National Trust List
- ✓ Article 3.4: €300 registration fee payment proof
- ✓ Article 3.5: Change notification template (7-day deadline)
- ✓ Article 3.7: Annual €100 fee reminder calendar

**Status:** Ready for submission  
**Next Action:** Execute fee payment, attach receipt

---

### 2. QUALIFIED SERVICE START APPLICATION (Article 6 & Annex 4)

**Deliverables:**
- `02_Qualified_Service_Application/02_EETT_Qualified_Service_Start_Application.docx` ✓

**Compliance:**
- ✓ Article 6.1: Formal application to start qualified services
- ✓ Article 6.2: Cover letter & administrator declaration
- ✓ Article 6.4: Electronic submission system access request
- ✓ Annex 4 Part A: Provider identification
- ✓ Annex 4 Part B: Service types (with OIDs per ETSI TS 119 612)
- ✓ Annex 4 Part C: Financial resources (capital, insurance, operational budget)

**Status:** Complete with placeholder fields  
**Next Action:** Fill company-specific data, obtain legal representative signatures

---

### 3. CONFORMITY ASSESSMENT REPORT (Article 10)

**Deliverables:**
- `03_CAR/03_CAR_Template_[ServiceFamily].docx` ✓

**Compliance:**
- ✓ Article 10.1: CAB identification & accreditation (Regulation 765/2008)
- ✓ Article 10.2–10.4: Service descriptions, architecture, audit scope
- ✓ Article 10.5: Third-party dependencies
- ✓ Article 10.6: Public keys, service type identifiers (OIDs)
- ✓ Article 10.7–10.10: Audit period, methodology, findings
- ✓ Article 10.11–10.17: eIDAS compliance (Articles 24, 28, 38, 42, etc.)
- ✓ Article 10.18: Non-conformities & corrective actions
- ✓ Article 10.19: Recommendations

**Includes:** Traceability matrix mapping every eIDAS/EETT requirement to evidence

**Status:** Template ready for CAB to complete  
**Next Action:** Engage CAB (e.g., [CAB_NAME]), conduct audit, obtain signed CAR

---

### 4. TRUST SERVICE POLICY & PRACTICE STATEMENT (Article 6.3.2–6.3.3)

**Deliverables:**
- `04_Policies/04_TSP_Policy_GR.docx` (Greek) ✓
- `04_Policies/04_TSP_Policy_EN.docx` (English) ✓
- `04_Policies/05_TSPS_GR.docx` (Greek) ✓
- `04_Policies/05_TSPS_EN.docx` (English) ✓

**Compliance:**
- ✓ Aligned to ETSI EN 319 401 (General Policy Requirements)
- ✓ Service-specific policies per ETSI EN 319 411-1/-2, 319 421
- ✓ EETT-specific requirements: 24×7 revocation, phone acceptance, 7-year records
- ✓ Lifecycle management: registration, issuance, renewal, revocation, validation
- ✓ Cryptographic controls, key management, HSM operations
- ✓ Personnel requirements, training, segregation of duties
- ✓ Physical & environmental security
- ✓ Incident management & business continuity

**Status:** Complete bilingual templates  
**Next Action:** Tailor to company-specific infrastructure, publish on website

---

### 5. TEST CERTIFICATES & TECHNICAL ARTIFACTS (Article 6.3.4 & Article 10.6)

**Deliverables:**
- `05_Test_Certificates/06_Test_Certificates.zip` ✓
  - Sample QES certificates (natural & legal persons)
  - Sample QSeal certificates
  - Sample QWAC certificates
  - OCSP responses
  - CRL samples
  - TSA tokens
  - Certificate profiles documentation

**Compliance:**
- ✓ X.509 v3 format (RFC 5280)
- ✓ QCStatements per eIDAS Regulation
- ✓ Service type identifiers (OIDs) per Decision (EU) 2015/1505
- ✓ Key identifiers (SKI/AKI)
- ✓ CRL/OCSP distribution points
- ✓ TSA policy OIDs per ETSI EN 319 421

**Status:** Sample templates provided  
**Next Action:** Generate real pre-production samples from your CA infrastructure

---

### 6. RISK ASSESSMENT & INCIDENT MANAGEMENT (Annex 3, Articles 4–5)

**Deliverables:**
- `06_Risk_Incident/07_Risk_Assessment_Report_GR.docx` ✓
- `06_Risk_Incident/07a_Incident_Response_Plan_GR.docx` ✓
- `06_Risk_Incident/07b_Incident_Forms_GR.xlsx` ✓

**Compliance:**
- ✓ Risk methodology aligned to ISO 31000 / ISO 27005
- ✓ Asset inventory (HSMs, CAs, databases, networks, personnel, facilities)
- ✓ Threat modeling & vulnerability assessment
- ✓ Risk register with likelihood, impact, controls
- ✓ Lifecycle risk coverage: registration, key mgmt, issuance, revocation, validation, timestamping
- ✓ Incident classification (Levels 1–5 per Annex 3)
- ✓ 24-hour reporting to EETT for Level ≥3 incidents
- ✓ Initial & Final incident report forms (all fields per Article 5.4)

**Status:** Complete templates with methodology  
**Next Action:** Populate with company-specific assets, threat landscape, controls

---

### 7. USER NOTIFICATION PLAN (eIDAS Art. 19(2), Article 6.3.7)

**Deliverables:**
- `07_User_Notifications/08_User_Notification_Plan_GR_EN.docx` (Bilingual) ✓

**Compliance:**
- ✓ Notification triggers: security incidents, service termination, certificate compromise
- ✓ Notification methods: email, SMS, website, press release
- ✓ Templates for different scenarios
- ✓ Cross-border notification considerations (EU languages, Trusted List operators)
- ✓ Timeline requirements (e.g., immediate for critical incidents)

**Status:** Complete bilingual plan  
**Next Action:** Test notification workflows, integrate with incident response plan

---

### 8. TERMINATION PLAN (Articles 7–8, Annex 5)

**Deliverables:**
- `08_Termination/09_Termination_Plan_GR_EN.docx` (Bilingual) ✓

**Compliance:**
- ✓ Planned termination: service discontinuation, merger, acquisition
- ✓ Unplanned termination: bankruptcy, license revocation, force majeure
- ✓ Partial termination: end-of-life for specific PKI components
- ✓ Notification timelines: 3 months advance notice (planned), immediate (unplanned Level ≥4)
- ✓ User impact assessment & mitigation
- ✓ Archive handover to another qualified TSP or EETT
- ✓ 7-year accessibility of information (records, validation data, archives)
- ✓ NTL status change coordination
- ✓ Testing scenarios & annual drills
- ✓ Third-party agreements (archive custodian, subcontractors)

**Status:** Complete plan aligned to Annex 5 table of contents  
**Next Action:** Secure archive custodian agreements, conduct termination drill

---

### 9. STANDARD END-USER AGREEMENT (Article 6.3.9, eIDAS Art. 13)

**Deliverables:**
- `09_Contracts/10_Standard_End_User_Agreement_GR_EN.docx` (Bilingual) ✓

**Compliance:**
- ✓ Terms of use & permitted purposes
- ✓ Subscriber identification & authentication obligations
- ✓ Key/device protection duties
- ✓ Revocation terms: 24×7 availability, telephone acceptance, processing deadlines
- ✓ Suspension conditions
- ✓ Liability framework (eIDAS Art. 13): damages, limits, exclusions, burden of proof
- ✓ Indemnification clauses
- ✓ Privacy & data protection (GDPR): data processed, retention, subject rights
- ✓ Complaints procedure
- ✓ Governing law (Greek law) & jurisdiction
- ✓ Contract modification & termination

**Status:** Complete bilingual template  
**Next Action:** Legal review, publish on website, integrate into enrollment workflow

---

### 10. REVOCATION & STATUS SERVICES (Article 11)

**Deliverables:**
- `10_Revocation_Status/11_Revocation_Status_SOP_GR.docx` ✓
- `10_Revocation_Status/11a_Web_Disclosure_Text_GR.md` ✓

**Compliance:**
- ✓ 24×7 revocation request acceptance (Article 11.1)
- ✓ Telephone acceptance procedures (Article 11.2)
- ✓ Immediate processing & OCSP/CRL update
- ✓ CRL issuance: daily minimum, nextUpdate field mandatory
- ✓ OCSP: high-availability, < 200ms response time (recommended)
- ✓ Public disclosure of revocation procedures on website
- ✓ Multilingual support (Greek, English minimum)

**Status:** Complete SOP + web disclosure text  
**Next Action:** Implement 24×7 NOC/hotline, publish web disclosure, test revocation workflows

---

### 11. RECORDKEEPING & ACCESS POLICY (Article 12)

**Deliverables:**
- `11_Records_Access/12_Records_and_Access_Policy_GR.docx` ✓

**Compliance:**
- ✓ 7-year retention after certificate expiry (Article 12.1)
- ✓ Records integrity controls: digital signatures, write-once storage, audit trails
- ✓ Data subject access rights (GDPR Art. 15): 7 working-day response deadline
- ✓ Disclosure rules: pseudonymization, competent authority requests only
- ✓ Archive structure: certificate lifecycle events, RA transactions, revocations, validation logs
- ✓ Backup & disaster recovery for archives
- ✓ Termination scenario: archive handover procedures

**Status:** Complete policy  
**Next Action:** Implement archive infrastructure, test data subject access workflow

---

### 12. EETT COMMUNICATIONS PACK (Articles 3.5, 5, 8)

**Deliverables:**
- `12_EETT_Communications/13_EETT_Notification_Templates_GR.docx` ✓

**Includes:**
- ✓ Change notification templates (Article 3.5, 7-day deadline)
- ✓ Initial incident notification (Article 5.3, 24-hour deadline for Level ≥3)
- ✓ Final incident report (Article 5.4, all required fields)
- ✓ Termination notification (Article 8)
- ✓ Service status change notifications
- ✓ CAB audit report submission cover letter

**Status:** Ready-to-use templates  
**Next Action:** Configure email/system integration for automated alerts

---

### 13. NATIONAL TRUST LIST (NTL) DATASHEET (Article 3.3)

**Deliverables:**
- `13_NTL/14_NTL_Publication_Datasheet.xlsx` ✓

**Compliance:**
- ✓ Service type identifiers (OIDs) per ETSI TS 119 612
- ✓ Service status: "granted" (post-approval)
- ✓ Public keys / X.509 certificates (PEM format)
- ✓ Service names (Greek & English)
- ✓ Service digital identity (X.509 SKI)
- ✓ Service supply points (OCSP, CRL, TSA URLs)
- ✓ Service definition URIs (CP/CPS locations)
- ✓ Supervision/accreditation pointers (CAB details)

**Critical Reminder:**  
**DO NOT START SERVICES BEFORE NTL LISTING**

**Status:** Template with all required fields  
**Next Action:** Complete after EETT approval, coordinate NTL publication

---

### 14. SUBMISSION PACKAGING & SIGNATURE (Decision (EU) 2015/1506)

**Deliverables:**
- `14_Submission_Guide/15_Submission_Packaging_Guide_GR_EN.pdf` ✓

**Compliance:**
- ✓ Qualified e-signature/e-seal application to all documents
- ✓ Format: PAdES (PDF/A with embedded signatures) or ASiC-E containers
- ✓ Signature validation per ETSI EN 319 102-1
- ✓ Timestamping: all signatures include qualified timestamps
- ✓ Packaging: single ZIP with manifest, signatures, supporting docs
- ✓ Metadata: document inventory, version control, checksums

**Status:** Guide ready  
**Next Action:** Apply qualified signature/seal to final dossier before submission

---

### 15. MASTER COMPLIANCE REGISTER

**Deliverable:**
- `15_Compliance_Master/Master_Compliance_Register.xlsx` ✓

**Contents:**
- Tab 1: eIDAS Article mapping (Articles 3–45) → Dossier evidence
- Tab 2: EETT Regulation mapping (Articles 3–12, Annexes 1–5) → Dossier evidence
- Tab 3: ETSI Standards mapping (EN 319 4xx series) → Implementation evidence
- Tab 4: Document cross-reference matrix
- Tab 5: Red-team review checklist (security & legal)

**Status:** Complete traceability matrix  
**Next Action:** Use for final QA review, provide to CAB auditor

---

## COMPLIANCE SUMMARY

### eIDAS Regulation (EU) No 910/2014

| Article | Requirement | Satisfied By | Evidence Location |
|---------|-------------|--------------|-------------------|
| **Art. 13** | TSP information & contact details | Doc 01, 02 | Sections A, B |
| **Art. 19(2)** | User notification obligations | Doc 08 | User Notification Plan |
| **Art. 20** | Application for qualified status | Doc 02 | Complete application |
| **Art. 24(1)** | Requirements for qualified TSPs | Docs 02–12 | All technical/organizational docs |
| **Art. 24(2)(a)** | Sufficient financial resources | Doc 02 Part C | Financial resources section |
| **Art. 24(2)(b)** | Qualified personnel | Doc 02 Part E | HR section, CVs |
| **Art. 24(2)(c)** | Reliable systems & products | Docs 03, 04, 05 | CAR, TSP Policy, infrastructure |
| **Art. 24(2)(d)** | Security measures | Docs 04, 07 | TSPS, Risk Assessment |
| **Art. 24(2)(e)** | CAB-audited policies & practices | Docs 03, 04, 05 | CAR, TSP Policy, TSPS |
| **Art. 24(2)(f)** | Liability coverage | Doc 02 Part C | Insurance policies |
| **Art. 24(3)** | Competent authority supervision | Doc 13 | EETT communication templates |
| **Art. 24(4)** | Business continuity | Docs 07, 09 | Incident Response, Termination Plan |
| **Art. 24(5)** | Recordkeeping (5 years min) | Doc 12 | Records Policy (7 years implemented) |
| **Art. 28** | QC for e-signatures | Docs 03, 06 | CAR, test certificates |
| **Art. 38** | QC for e-seals | Docs 03, 06 | CAR, test certificates |
| **Art. 42** | Qualified time-stamps | Docs 03, 06 | CAR, TSA tokens |

### EETT Regulation

| Article/Annex | Requirement | Satisfied By | Evidence Location |
|---------------|-------------|--------------|-------------------|
| **Art. 3.2** | Registry application | Doc 01 | Registry Application |
| **Art. 3.3** | NTL publication details | Doc 14 | NTL Datasheet |
| **Art. 3.4** | Registration fee (€300) | Doc 01a | Fee proof |
| **Art. 3.5** | 7-day change notification | Doc 01b, 13 | Change notice templates |
| **Art. 3.7** | Annual fee (€100) | Doc 01a | Calendar reminder |
| **Art. 4** | Security measures | Docs 04, 07 | TSPS, Risk Assessment |
| **Art. 5** | Incident reporting (24h for Level ≥3) | Doc 07a, 07b | Incident Response Plan, forms |
| **Art. 6** | Qualified service application | Doc 02 | Qualified Service Application |
| **Art. 7–8** | Termination obligations | Doc 09 | Termination Plan |
| **Art. 10** | CAR requirements (19 items) | Doc 03 | CAR Template |
| **Art. 11** | Revocation & status (24×7) | Doc 11, 11a | Revocation SOP, web disclosure |
| **Art. 12** | Records (7 years, access) | Doc 12 | Recordkeeping Policy |
| **Annex 3** | Incident severity classification | Doc 07a, 07b | Incident levels 1–5 |
| **Annex 4** | Application form structure | Doc 02 | Parts A, B, C completed |
| **Annex 5** | Termination plan ToC | Doc 09 | Aligned structure |

---

## PROJECT TIMELINE & GANTT

### Phase 1: Dossier Preparation (Weeks 1–8)
```
Week 1–2:  ▓▓▓▓▓▓▓▓▓▓ Intake & stakeholder alignment
Week 3–4:  ▓▓▓▓▓▓▓▓▓▓ Policy development (TSP Policy, TSPS)
Week 5–6:  ▓▓▓▓▓▓▓▓▓▓ Risk assessment, incident procedures
Week 7–8:  ▓▓▓▓▓▓▓▓▓▓ Termination plan, user agreements, revocation SOPs
```

### Phase 2: Infrastructure & CAB Preparation (Weeks 9–16)
```
Week 9–10:  ▓▓▓▓▓▓▓▓▓▓ HSM procurement, CA hierarchy setup
Week 11–12: ▓▓▓▓▓▓▓▓▓▓ OCSP/CRL infrastructure, test environment
Week 13–14: ▓▓▓▓▓▓▓▓▓▓ Generate test certificates, validate technical stack
Week 15–16: ▓▓▓▓▓▓▓▓▓▓ CAB engagement, pre-audit readiness
```

### Phase 3: CAB Audit (Weeks 17–20)
```
Week 17:    ▓▓▓▓▓▓▓▓▓▓ CAB audit kickoff, document review
Week 18–19: ▓▓▓▓▓▓▓▓▓▓ On-site audit, infrastructure inspection, interviews
Week 20:    ▓▓▓▓▓▓▓▓▓▓ Non-conformity resolution, CAR finalization
```

### Phase 4: EETT Submission (Week 21)
```
Week 21:    ▓▓▓▓▓▓▓▓▓▓ Apply qualified signatures, package dossier, submit to EETT
```

### Phase 5: EETT Review & Approval (Weeks 22–33)
```
Week 22:    ▓▓░░░░░░░░ EETT completeness check (5 working days)
Week 23–25: ░░░░░░░░░░ Respond to EETT information requests (if any)
Week 26–33: ░░░░░░░░░░ EETT substantive review (target: 3 months from notification)
             └─ Possible site inspection
             └─ Supplementary questions
             └─ EETT decision (approval/rejection)
```

### Phase 6: NTL Publication & Go-Live (Weeks 34–36)
```
Week 34:    ▓▓▓▓▓▓▓▓▓▓ NTL publication (EETT → EU Trusted List)
Week 35:    ▓▓▓▓▓▓▓▓▓▓ Final pre-production testing, staff training
Week 36:    ▓▓▓▓▓▓▓▓▓▓ SERVICE GO-LIVE ✓
```

**Legend:**  
▓ = Active work  
░ = Waiting period / External dependency

**Critical Path:**  
CAB Audit → EETT Submission → EETT Approval → NTL Listing → Go-Live

**Dependencies:**
- CAB must be engaged by Week 15 (audit scheduling typically 4–6 weeks lead time)
- EETT decision deadline: 3 months from notification (may extend with justification)
- Cannot go live until NTL publication confirmed

---

## QUALITY CONTROLS & RED-TEAM CHECKLIST

### Document Quality

☐ All placeholders [PLACEHOLDER] replaced with actual data  
☐ Company-specific technical details validated (HSM models, DC locations, URLs)  
☐ Legal entity names consistent across all documents (Greek & English)  
☐ Contact details verified (phone, email, addresses)  
☐ Financial figures current & audited (balance sheet, insurance policies)  
☐ All cross-references between documents accurate  
☐ Version control & dates consistent  
☐ Greek language documents reviewed by native speaker  
☐ English translations accurate & professional

### Regulatory Compliance

☐ Every eIDAS Article 24 requirement mapped to evidence  
☐ Every EETT Article 3–12 requirement addressed  
☐ All Annex 3–5 requirements satisfied  
☐ CAR covers all 19 items of Article 10  
☐ Incident classification matches Annex 3 (Levels 1–5)  
☐ Termination plan follows Annex 5 structure  
☐ 24×7 revocation commitment documented & implemented  
☐ 7-year recordkeeping policy in place  
☐ GDPR compliance verified (data subject rights, privacy notices)

### Technical Security

☐ HSM FIPS 140-2 Level 2+ / Common Criteria EAL 4+ certified  
☐ Root CA offline, air-gapped, key ceremony procedures documented  
☐ Issuing CAs online, HSM-protected, HA architecture  
☐ OCSP/CRL high-availability tested (99.9% SLA target)  
☐ Cryptographic algorithms comply with ETSI TS 119 312  
☐ Key backup: M-of-N splitting, geographically distributed  
☐ Network segmentation (VLANs, firewalls, IDS/IPS)  
☐ Physical security: Tier III DC minimum, biometric access, CCTV  
☐ Penetration testing scheduled (annual minimum)  
☐ Vulnerability scanning automated (weekly)  
☐ Disaster recovery tested (RTO/RPO validated)  
☐ Business continuity plan exercised annually

### Operational Readiness

☐ 24×7 NOC/SOC staffed  
☐ Revocation hotline tested (phone acceptance)  
☐ Incident response team trained  
☐ RA operators certified (internal exam)  
☐ CISO, Crypto Officer, DPO appointed  
☐ Personnel background checks completed  
☐ Training program established (initial + annual refresher)  
☐ Insurance policies active & adequate coverage  
☐ CAB audit scheduled  
☐ Archive custodian agreement signed (termination scenario)

### Legal & Contractual

☐ End-user agreement legally reviewed  
☐ Liability limits aligned with insurance coverage  
☐ Privacy policy GDPR-compliant  
☐ Data processing agreements with subcontractors  
☐ Termination plan financially provisioned  
☐ Indemnification clauses balanced (user vs. TSP)  
☐ Governing law clause (Greek law specified)  
☐ Dispute resolution mechanism defined

### Pre-Submission Final Checks

☐ All documents signed by authorized legal representatives  
☐ Qualified e-signature/e-seal applied to dossier  
☐ Qualified timestamp applied to signatures  
☐ Document package integrity verified (checksums, manifest)  
☐ Submission format compliant (PAdES or ASiC-E)  
☐ EETT submission portal access confirmed  
☐ Registration fee (€300) paid, receipt attached  
☐ All attachments referenced in application included  
☐ Master compliance register complete  
☐ Executive brief & Gantt timeline finalized

---

## NEXT ACTIONS (Priority Order)

### Immediate (Week 1)

1. **Intake Completion:**  
   Fill all [PLACEHOLDER] fields in documents 01–15 with actual company data  
   *Owner: Company Management*  
   *Deadline: [DATE]*

2. **Fee Payment:**  
   Pay €300 EETT registration fee, attach receipt to Doc 01a  
   *Owner: Finance Department*  
   *Deadline: [DATE]*

3. **CAB Selection & Engagement:**  
   Select accredited CAB (e.g., TÜV, LRQA, Bureau Veritas with EA accreditation)  
   *Owner: QTS Manager*  
   *Deadline: [DATE]*

### Short-Term (Weeks 2–4)

4. **Infrastructure Readiness:**  
   - Procure/configure HSMs (FIPS 140-2 Level 2+)
   - Set up CA hierarchy (Root offline, Issuing online)
   - Deploy OCSP/CRL infrastructure
   - Generate test certificates (Doc 06)  
   *Owner: CTO / Crypto Officer*  
   *Deadline: [DATE]*

5. **Insurance Procurement:**  
   Obtain professional liability insurance (€1M+ coverage for QES/QSeal)  
   *Owner: Risk Manager / Finance*  
   *Deadline: [DATE]*

6. **Personnel Readiness:**  
   - Appoint QTS Manager, CISO, Crypto Officer, DPO
   - Prepare CVs & certifications
   - Conduct background checks
   - Initiate training program  
   *Owner: HR / QTS Manager*  
   *Deadline: [DATE]*

### Medium-Term (Weeks 5–16)

7. **CAB Pre-Audit:**  
   Conduct internal readiness assessment against eIDAS & ETSI standards  
   *Owner: QTS Manager + CISO*  
   *Deadline: [DATE]*

8. **CAB Formal Audit:**  
   Schedule & complete CAB audit, obtain signed CAR (Doc 03)  
   *Owner: QTS Manager + CAB*  
   *Deadline: [DATE]*

9. **Document Finalization:**  
   - Legal review of end-user agreement (Doc 10)
   - Publish TSP Policy & TSPS on website (Docs 04, 05)
   - Publish revocation procedures (Doc 11a)
   - Test incident reporting workflow (Docs 07a, 07b, 13)  
   *Owner: Legal + Compliance*  
   *Deadline: [DATE]*

### Pre-Submission (Week 17–20)

10. **Dossier QA Review:**  
    Execute red-team checklist (above), validate all cross-references  
    *Owner: Internal Audit + External Consultant*  
    *Deadline: [DATE]*

11. **Signature Application:**  
    Apply qualified e-signature/e-seal to all documents (use external qualified TSP)  
    *Owner: QTS Manager*  
    *Deadline: [DATE]*

12. **Submission Package:**  
    Create final ZIP package per Doc 15 (manifest, checksums, signatures)  
    *Owner: QTS Manager*  
    *Deadline: [DATE]*

### Submission (Week 21)

13. **EETT Submission:**  
    Submit via EETT Electronic Submission System  
    *Owner: Legal Representative + QTS Manager*  
    *Deadline: [SUBMISSION_DATE]*

### Post-Submission (Weeks 22–36)

14. **EETT Liaison:**  
    - Monitor for completeness check (5 working days)
    - Respond to EETT information requests within deadline (5–25 days)
    - Prepare for possible site inspection  
    *Owner: EETT Liaison Officer*  
    *Ongoing*

15. **NTL Preparation:**  
    Complete NTL datasheet (Doc 14) post-approval  
    *Owner: QTS Manager*  
    *Deadline: Upon EETT approval*

16. **Go-Live Preparation:**  
    - Final production environment testing
    - 24×7 NOC/hotline activation
    - User onboarding materials
    - Marketing communications  
    *Owner: Operations + Marketing*  
    *Deadline: Post-NTL publication*

---

## RISK REGISTER (Top 10 Risks)

| # | Risk | Impact | Probability | Mitigation |
|---|------|--------|-------------|------------|
| 1 | CAB audit delays (availability) | High | Medium | Engage CAB by Week 15; have backup CAB |
| 2 | Major non-conformity in CAB audit | High | Low | Pre-audit internal assessment; gap remediation |
| 3 | EETT requests extensive additional info | Medium | Medium | Over-document in initial submission; assign responsive liaison |
| 4 | HSM procurement delays (supply chain) | High | Medium | Order early (Week 2); consider rental/cloud HSM interim |
| 5 | Insurance coverage insufficient/rejected | High | Low | Engage specialist broker; obtain quotes from 3+ insurers |
| 6 | Key personnel unavailable (resignation) | Medium | Low | Cross-training; documented procedures; retention incentives |
| 7 | Placeholder data incomplete/inaccurate | Medium | Medium | Dedicated intake session (Week 1); validation checklist |
| 8 | Legal review delays end-user agreement | Low | Medium | Engage legal counsel early (Week 3); allow 2-week buffer |
| 9 | EETT extends review beyond 3 months | Low | Medium | Proactive liaison; anticipate extension; adjust go-live plan |
| 10 | NTL publication technical glitches | Low | Low | Pre-coordinate with EETT; validate OIDs & data formats |

---

## BUDGET ESTIMATE (Indicative)

| Item | Cost (€) | Notes |
|------|----------|-------|
| **CAB Audit (Initial)** | 15,000 – 30,000 | Depends on services audited, audit days |
| **CAB Audit (Annual Surveillance)** | 8,000 – 15,000 | Ongoing compliance |
| **HSM (2 units, HA pair)** | 40,000 – 80,000 | Purchase; or €2,000–5,000/month rental |
| **Data Center (Colocation)** | 24,000/year | 2 racks (primary + backup) |
| **Professional Liability Insurance** | 10,000 – 25,000/year | €1M–€5M coverage |
| **EETT Fees** | 400 | €300 registration + €100 annual |
| **Legal & Consulting** | 20,000 – 50,000 | Document review, policy development |
| **Personnel (6 FTEs, year 1)** | 300,000 | QTS Mgr, CISO, Crypto Officer, DPO, 2× RA Operators |
| **Software Licenses (CA, OCSP, TSA)** | 30,000 – 60,000 | Open source or commercial PKI suite |
| **Security (Pentesting, SIEM, etc.)** | 15,000 | Initial + annual testing |
| **Training & Certifications** | 5,000 | CISSP, CISA, ISO 27001 LA, RA training |
| **Contingency (15%)** | 66,000 – 104,000 | Unforeseen costs |
| **TOTAL (Year 1)** | **€533,400 – €818,400** | One-time + first-year operational |

**Ongoing (Year 2+):**  
€350,000 – €500,000/year (personnel, insurance, audits, infrastructure, maintenance)

---

## SUCCESS CRITERIA

**Dossier Acceptance:**  
☐ EETT confirms completeness within 5 working days (no major information requests)  
☐ CAR accepted by EETT without major objections  

**Approval:**  
☐ EETT grants authorization within 3 months  
☐ All requested qualified services approved  

**NTL Listing:**  
☐ Services listed in Greek NTL with status "granted"  
☐ NTL successfully published to EU Trusted List (https://eidas.ec.europa.eu/efda/tl-browser/)  

**Operational Readiness:**  
☐ 24×7 revocation hotline operational  
☐ OCSP/CRL achieving >99% availability  
☐ Zero critical incidents in first 90 days  
☐ First certificates issued to pilot users  

**Business:**  
☐ First customer contracts signed  
☐ Revenue target: [X] certificates/timestamps in first 6 months  
☐ Positive CAB surveillance audit (Year 1)  

---

## APPENDICES

### A. Acronyms & Definitions

- **CAB:** Conformity Assessment Body (ΦΑΣ – Φορέας Αξιολόγησης Συμμόρφωσης)
- **CAR:** Conformity Assessment Report (ΕΑΣ – Έκθεση Αξιολόγησης Συμμόρφωσης)
- **CRL:** Certificate Revocation List
- **DPO:** Data Protection Officer
- **EA:** European co-operation for Accreditation
- **EETT:** Hellenic Telecommunications and Post Commission (Εθνική Επιτροπή Τηλεπικοινωνιών και Ταχυδρομείων)
- **eIDAS:** Electronic Identification, Authentication and Trust Services (Regulation (EU) No 910/2014)
- **ESYD:** Hellenic Accreditation System (Εθνικό Σύστημα Διαπίστευσης)
- **FIPS:** Federal Information Processing Standards (US cryptographic module certification)
- **Γ.Ε.Μ.Η.:** Γενικό Εμπορικό Μητρώο (General Commercial Registry)
- **GDPR:** General Data Protection Regulation (Regulation (EU) 2016/679)
- **HSM:** Hardware Security Module
- **NTL:** National Trust List (Εθνικός Κατάλογος Εμπιστοσύνης)
- **OCSP:** Online Certificate Status Protocol
- **OID:** Object Identifier
- **PAdES:** PDF Advanced Electronic Signatures
- **QES:** Qualified Electronic Signature
- **QSCD:** Qualified Signature Creation Device
- **QSeal:** Qualified Electronic Seal
- **QTS:** Qualified Time-Stamp
- **QWAC:** Qualified Website Authentication Certificate
- **RA:** Registration Authority
- **REM:** Registered Electronic Mail (qualified eDelivery)
- **RPO:** Recovery Point Objective
- **RTO:** Recovery Time Objective
- **SLA:** Service Level Agreement
- **TSA:** Time-Stamp Authority
- **TSP:** Trust Service Provider (Πάροχος Υπηρεσιών Εμπιστοσύνης - ΠΥΕ)
- **TSPS:** Trust Service Practice Statement

### B. Key Contacts

**EETT:**  
Λεωφ. Κηφισίας 60, 151 25 Μαρούσι, Αθήνα  
+30 210 614 5000  
info@eett.gr  
www.eett.gr

**EU Trusted List Browser:**  
https://eidas.ec.europa.eu/efda/tl-browser/

**ETSI (Standards):**  
www.etsi.org → Search "EN 319" for eIDAS standards

**Hellenic Accreditation System (ESYD):**  
www.esyd.gr  
(For verifying CAB accreditation)

### C. Document Repository

All documents are organized in:  
`/Users/spirospilafas/Documents/OpenStateStack/eIDAS/EETT_eIDAS_Dossier/`

```
EETT_eIDAS_Dossier/
├── 00_EXECUTIVE_BRIEF.md (this document)
├── 01_Registry/
│   ├── 01_Registry_Application_[LEGAL_NAME_GR].docx
│   ├── 01a_Fee_Proof.pdf
│   └── 01b_Change_Notice_Template.docx
├── 02_Qualified_Service_Application/
│   └── 02_EETT_Qualified_Service_Start_Application.docx
├── 03_CAR/
│   └── 03_CAR_Template_[ServiceFamily].docx
├── 04_Policies/
│   ├── 04_TSP_Policy_GR.docx
│   ├── 04_TSP_Policy_EN.docx
│   ├── 05_TSPS_GR.docx
│   └── 05_TSPS_EN.docx
├── 05_Test_Certificates/
│   └── 06_Test_Certificates.zip
├── 06_Risk_Incident/
│   ├── 07_Risk_Assessment_Report_GR.docx
│   ├── 07a_Incident_Response_Plan_GR.docx
│   └── 07b_Incident_Forms_GR.xlsx
├── 07_User_Notifications/
│   └── 08_User_Notification_Plan_GR_EN.docx
├── 08_Termination/
│   └── 09_Termination_Plan_GR_EN.docx
├── 09_Contracts/
│   └── 10_Standard_End_User_Agreement_GR_EN.docx
├── 10_Revocation_Status/
│   ├── 11_Revocation_Status_SOP_GR.docx
│   └── 11a_Web_Disclosure_Text_GR.md
├── 11_Records_Access/
│   └── 12_Records_and_Access_Policy_GR.docx
├── 12_EETT_Communications/
│   └── 13_EETT_Notification_Templates_GR.docx
├── 13_NTL/
│   └── 14_NTL_Publication_Datasheet.xlsx
├── 14_Submission_Guide/
│   └── 15_Submission_Packaging_Guide_GR_EN.pdf
└── 15_Compliance_Master/
    └── Master_Compliance_Register.xlsx
```

---

## DOCUMENT CONTROL

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | [DRAFT_DATE] | eIDAS Consultant | Initial draft |
| 0.5 | [REVIEW_DATE] | Legal + Technical Review | Incorporated feedback |
| 1.0 | [FINAL_DATE] | QTS Manager | Final for submission |

**Approval:**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| CEO / Legal Representative | [NAME] | _________ | [DATE] |
| QTS Manager | [NAME] | _________ | [DATE] |
| CISO | [NAME] | _________ | [DATE] |
| Legal Counsel | [NAME] | _________ | [DATE] |

---

**Classification:** Confidential – EETT Submission Only  
**Distribution:** EETT, Internal Management, CAB Auditor  
**Retention:** 7 years post-approval

---

**END OF EXECUTIVE BRIEF**

*This brief provides a high-level overview. Refer to individual documents (01–15) for detailed, submission-ready content.*
