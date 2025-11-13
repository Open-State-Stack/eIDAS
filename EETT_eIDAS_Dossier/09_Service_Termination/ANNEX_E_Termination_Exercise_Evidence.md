# ANNEX E: SERVICE TERMINATION EXERCISE EVIDENCE
## Tabletop Exercises & Rehearsal Documentation

**Document Reference:** 09_Service_Termination_Plan_GR_EN  
**Version:** 1.0  
**Date:** [SIGN_DATE]  
**Status:** Training & Preparedness Documentation  
**Compliance:** EETT Articles 7-8, Annex 5

---

## 1. EXECUTIVE SUMMARY

This annex documents [LEGAL_NAME_EN]'s service termination preparedness through:
- **Tabletop exercises** simulating planned and unplanned termination scenarios
- **Rehearsal activities** validating termination plan operability
- **Lessons learned** and continuous improvement actions

**Exercise Schedule:**
- **Annual:** Full tabletop exercise with all stakeholders
- **Bi-annual:** Partial drills (e.g., archive handover, user notification)
- **Ad-hoc:** After material changes to infrastructure or personnel

---

## 2. TABLETOP EXERCISE #1: PLANNED SERVICE TERMINATION

### 2.1 Exercise Metadata

| Attribute | Value |
|-----------|-------|
| **Exercise ID** | TTE-2025-001-PLANNED |
| **Date Conducted** | [Example: 2025-03-15] |
| **Duration** | 3 hours |
| **Scenario Type** | Planned termination (business decision) |
| **Participants** | 15 (see §2.2) |
| **Facilitator** | [QTS_MANAGER_NAME], Qualified Trust Services Manager |
| **Observer** | [External Consultant / CAB Representative] |
| **Location** | [LEGAL_NAME_EN] Conference Room + Virtual (Teams/Zoom) |

### 2.2 Participants

| Role | Name | Department | Present |
|------|------|------------|---------|
| **Executive Sponsor** | [CEO_NAME] | Executive Board | ✓ |
| **QTS Manager** | [QTS_MANAGER_NAME] | Compliance | ✓ |
| **CISO** | [CISO_NAME] | Information Security | ✓ |
| **DPO** | [DPO_NAME] | Data Protection | ✓ |
| **Legal Counsel** | [Legal Representative] | Legal | ✓ |
| **Finance Director** | [CFO_NAME] | Finance | ✓ |
| **Operations Manager** | [Ops Manager Name] | Operations | ✓ |
| **RA Manager** | [RA Manager Name] | Registration Authority | ✓ |
| **Communications Lead** | [Comms Lead Name] | Marketing/PR | ✓ |
| **IT Infrastructure Lead** | [IT Lead Name] | IT | ✓ |
| **Archive Custodian (External)** | [Custodian Representative] | [Custodian Company] | ✓ (Virtual) |
| **EETT Liaison** | [Regulatory Affairs Officer] | Compliance | ✓ |
| **CAB Observer** | [CAB Auditor Name] | [CAB_NAME] | ✓ (Optional) |
| **Customer Representative** | [Anonymous] | Pilot customer | ✓ (Feedback role) |
| **HR Representative** | [HR Manager] | Human Resources | ✓ |

### 2.3 Scenario Description

**Context:**  
[LEGAL_NAME_EN] Board of Directors has decided to discontinue qualified trust services due to strategic business pivot. Decision made on 2025-01-15, target termination date 2025-06-15 (5 months notice).

**Objectives:**
1. Validate 3-month minimum notice period compliance (Article 7.1 EETT)
2. Test stakeholder notification procedures (users, EETT, relying parties)
3. Confirm archive handover process with custodian
4. Verify financial obligations settlement (refunds, final fees)
5. Practice employee transition planning

**Inject Timeline:**
- **T+0 (Day 1):** Board decision, internal announcement
- **T+7:** EETT notification filed
- **T+14:** User notification campaign launched
- **T+30:** Archive custodian agreement signed
- **T+60:** Certificate issuance halted
- **T+90:** Revocation service maintained (24×7)
- **T+120:** Transition to archive custodian
- **T+150:** Final EETT report, NTL status change

### 2.4 Exercise Flow & Injects

#### Phase 1: Decision & Internal Planning (T+0 to T+7)

**Inject 1.1:** Executive board meeting minutes show termination decision.

**Participant Actions:**
- [CEO_NAME]: Announce decision to management team, authorize budget for termination activities
- [QTS_MANAGER_NAME]: Convene termination task force, assign roles per termination plan §3
- [Legal Counsel]: Review contractual obligations, identify customer refund liabilities
- [Finance Director]: Calculate termination costs (archive handover, employee severance, refunds)
- [HR Representative]: Draft employee communication, plan retention of key personnel through transition

**Discussion Points:**
- Who has authority to make termination decision? (Answer: Board, per Articles of Association)
- What are financial implications? (Answer: ~€50k archive setup, ~€20k refunds, severance varies)
- Can we retain 24×7 revocation service for 3 months? (Answer: Yes, SOC contract remains active)

**Outcome:** ✅ Internal task force formed, budget approved, roles assigned

---

#### Phase 2: EETT Notification (T+7)

**Inject 2.1:** EETT notification template (from Folder 13) must be completed and submitted.

**Participant Actions:**
- [QTS_MANAGER_NAME]: Complete EETT termination notification using template `13_EETT_Communication_Templates_GR.md`
- [Legal Counsel]: Review notification for legal accuracy
- [EETT Liaison]: Submit notification via EETT electronic portal, confirm receipt

**Template Fields Populated:**
- Termination reason: "Strategic business decision"
- Target termination date: 2025-06-15
- Archive custodian: [Custodian Company Name, contact details]
- 7-year accessibility plan: Attached (Annex D from termination plan)
- Status of issued certificates: 12,345 active, 1,234 revoked, 234 expired

**Discussion Points:**
- What if EETT requests additional information? (Answer: Respond within 5 working days per Article 7.3)
- Can we accelerate termination timeline? (Answer: No, minimum 3 months required)

**Outcome:** ✅ EETT notification submitted, protocol number [SIMULATED: EETT-2025-0123]

---

#### Phase 3: User Notification Campaign (T+14)

**Inject 3.1:** 12,345 active certificate holders must be notified per Article 8.2.

**Participant Actions:**
- [Communications Lead]: Launch multi-channel notification campaign
  - Email to all subscribers (template from Folder 08)
  - SMS to mobile-registered users
  - Website banner notification
  - Registered mail to legal entity certificate holders (per end-user agreement)
- [RA Manager]: Prepare FAQs, staff customer support hotline
- [Customer Representative]: Role-play customer receiving notification, provide feedback

**Notification Content Review:**
- Termination date clearly stated: ✓
- Alternative TSP recommendations provided: ✓ (list of 3 Greek QTSPs)
- Refund policy explained: ✓ (pro-rata refund for remaining validity)
- Revocation service continuity confirmed: ✓ (available through T+150)
- Archive access instructions: ✓ (7-year retention, how to request records)

**Discussion Points:**
- What if customers complain publicly? (Answer: PR response plan in §8 of termination plan)
- Can we transfer users to another QTSP? (Answer: No automatic transfer; users must re-apply)
- What about government customers? (Answer: Priority notification, offer extended support)

**Outcome:** ✅ Notification campaign materials approved, launch scheduled for T+14

---

#### Phase 4: Archive Handover Preparation (T+30 to T+90)

**Inject 4.1:** Archive custodian [Custodian Company] requires technical specifications for data transfer.

**Participant Actions:**
- [IT Infrastructure Lead]: Prepare archive dataset inventory
  - Certificate database: 12,345 certs + 1,234 revoked (SQL dump)
  - Audit logs: 7 years of signature operations (compressed, encrypted)
  - CA hierarchy: Root + Issuing CA certificates (PEM format)
  - CRL/OCSP history: Last 3 years of revocation data
  - User agreements: Scanned PDFs (GDPR-compliant anonymization)
- [DPO]: Review archive dataset for GDPR compliance, anonymize where required
- [Archive Custodian Representative]: Review data format, confirm receipt procedure
- [Legal Counsel]: Finalize archive handover agreement (liability, SLA, pricing)

**Technical Specifications:**
- Format: Encrypted ZIP archives (AES-256), split into 10GB chunks
- Transfer method: Secure SFTP + hash verification
- Encryption keys: M-of-N split (3-of-5), escrow with notary
- Integrity: SHA-256 hashes signed with [LEGAL_NAME_EN] document seal

**Discussion Points:**
- What if archive custodian goes out of business? (Answer: Successor custodian clause in agreement)
- How do users request archived records? (Answer: Via custodian web portal, identity verification required)
- Who pays for archive storage after handover? (Answer: Prepaid 7 years by [LEGAL_NAME_EN])

**Outcome:** ✅ Archive handover agreement signed, technical preparation 70% complete

---

#### Phase 5: Service Wind-Down (T+60 to T+120)

**Inject 5.1:** Certificate issuance halted at T+60. Revocation service must remain 24×7.

**Participant Actions:**
- [Operations Manager]: Disable certificate issuance in RA system, post notice on website
- [RA Manager]: Process remaining revocation requests, maintain 24×7 hotline
- [IT Infrastructure Lead]: Maintain OCSP/CRL infrastructure, increase monitoring
- [Finance Director]: Process customer refunds (pro-rata for remaining validity)
- [HR Representative]: Manage employee departures, retain key personnel through T+150

**Service Status Matrix:**

| Service | Status | Availability | Notes |
|---------|--------|--------------|-------|
| Certificate Issuance | ❌ HALTED | N/A | Stopped T+60 |
| Revocation Service | ✅ ACTIVE | 99.9% | Maintained through T+150 |
| OCSP Responder | ✅ ACTIVE | 99.9% | Maintained through T+150 |
| CRL Distribution | ✅ ACTIVE | 99.9% | Daily updates, maintained through T+150 |
| Timestamp Service | ❌ HALTED | N/A | Stopped T+60 |
| Customer Support | ✅ ACTIVE | 8am-8pm | Reduced hours T+90 |

**Discussion Points:**
- What if OCSP responder fails during wind-down? (Answer: Immediate failover to backup, emergency contact to custodian)
- Can we revoke all certificates at termination? (Answer: No, users control revocation; we only facilitate)

**Outcome:** ✅ Issuance halted, revocation service maintained, 1,234 refunds processed

---

#### Phase 6: Final Handover (T+120 to T+150)

**Inject 6.1:** Archive dataset ready for transfer to custodian. Final EETT report due.

**Participant Actions:**
- [IT Infrastructure Lead]: Execute data transfer to custodian
  - Upload encrypted archives to SFTP
  - Provide encryption key shares to notary
  - Verify hash integrity with custodian
- [Archive Custodian Representative]: Confirm receipt, validate data integrity, activate access portal
- [QTS_MANAGER_NAME]: Prepare final EETT report
  - Services terminated: QES, QSeal, QTimestamp
  - Certificates issued (lifetime): 15,000
  - Archive custodian details: [Custodian Company, contact, access URL]
  - Financial obligations settled: ✓ (all refunds processed)
- [EETT Liaison]: Submit final report, request NTL status change to "terminated"
- [Communications Lead]: Final public notice on website, redirect to custodian portal

**Final EETT Report Checklist:**
- Termination completion date: ✓
- Archive custodian confirmation: ✓ (signed handover certificate attached)
- Outstanding liabilities: ✓ (none)
- Revocation service cessation plan: ✓ (redirects to custodian OCSP)
- Employee records disposition: ✓ (personnel records archived per GDPR)

**Discussion Points:**
- What if EETT requests site inspection before closure? (Answer: Full cooperation, maintain access for 30 days post-termination)
- Can we restart TSP operations later? (Answer: Yes, but requires new application and CAB audit)

**Outcome:** ✅ Archive transferred, final report submitted, NTL status "terminated" confirmed

---

### 2.5 Lessons Learned

**What Went Well:**
1. ✅ Stakeholder communication protocols clear and comprehensive
2. ✅ Archive handover technical process well-defined
3. ✅ Financial planning adequate (refunds, severance, custodian fees)
4. ✅ EETT notification template complete and ready to use
5. ✅ Employee retention strategy effective (key personnel stayed through transition)

**Areas for Improvement:**
1. ⚠️ Customer communication timing: Start notifications earlier (T+7 instead of T+14) to allow more transition time
2. ⚠️ Archive data format: Standardize on ETSI TS 102 918 (ASiC-E) for better interoperability
3. ⚠️ Refund processing: Automate calculation and payment (took longer than expected)
4. ⚠️ GDPR anonymization: Required more DPO review time; start earlier
5. ⚠️ Customer support load: Underestimated call volume; staff 2x support team during notification period

**Action Items:**
| ID | Action | Owner | Deadline | Status |
|----|--------|-------|----------|--------|
| TTE-001-01 | Update termination plan §5 with T+7 notification timeline | [QTS_MANAGER_NAME] | 2025-04-01 | ✅ DONE |
| TTE-001-02 | Adopt ETSI TS 102 918 archive format specification | [IT Infrastructure Lead] | 2025-05-01 | 🔄 IN PROGRESS |
| TTE-001-03 | Develop automated refund calculation script | [Finance Director] | 2025-04-15 | ✅ DONE |
| TTE-001-04 | Create GDPR anonymization checklist for archive datasets | [DPO] | 2025-04-01 | ✅ DONE |
| TTE-001-05 | Revise customer support staffing plan for termination scenario | [Operations Manager] | 2025-04-01 | ✅ DONE |

---

## 3. TABLETOP EXERCISE #2: UNPLANNED TERMINATION (LEVEL 5 INCIDENT)

### 3.1 Exercise Metadata

| Attribute | Value |
|-----------|-------|
| **Exercise ID** | TTE-2025-002-UNPLANNED |
| **Date Conducted** | [Example: 2025-09-20] |
| **Duration** | 4 hours |
| **Scenario Type** | Unplanned termination (catastrophic incident) |
| **Participants** | 18 (expanded team + emergency responders) |
| **Facilitator** | [CISO_NAME], Chief Information Security Officer |
| **Observer** | [CAB Representative], [External Auditor] |
| **Location** | Emergency Operations Center (EOC) + Virtual |

### 3.2 Scenario Description

**Context:**  
Major datacenter fire destroys primary and backup HSM infrastructure. CA private keys are lost (backup keys were also in affected datacenter due to misconfiguration). This is a **Level 5 incident** per EETT Annex 3, requiring immediate termination.

**Trigger Event:**  
- Date: 2025-09-20, 03:00 AM
- Duration: Datacenter fire suppression failed, total loss
- Impact: All CA operations offline, private keys unrecoverable
- Classification: Level 5 (critical) - CA compromise

**Regulatory Requirements:**
- EETT notification: Within 1 hour (Article 5.3 for Level 5)
- ENISA notification: Within 24 hours (eIDAS Article 19(2))
- Public disclosure: Immediate (website notice)
- Service suspension: Immediate (per Article 5.5)

### 3.3 Exercise Flow (Condensed)

#### Hour 1: Incident Detection & Initial Response (03:00-04:00)
- SOC detects HSM offline alerts, fire alarm activation
- [CISO_NAME] activated emergency response team
- Confirmed: Primary + backup HSM destroyed, keys lost
- **Decision:** Invoke unplanned termination per §6 of termination plan
- [QTS_MANAGER_NAME]: Notify CEO, convene emergency board meeting (virtual)

#### Hour 2: Emergency Notifications (04:00-05:00)
- [EETT Liaison]: File Level 5 incident report with EETT (submitted 04:15)
- [Communications Lead]: Post emergency website notice (live 04:30)
- [CEO_NAME]: Approve emergency termination, authorize budget
- [Legal Counsel]: Review force majeure clauses in customer agreements

#### Hour 4-24: Immediate Actions
- Certificate issuance: HALTED (systems offline)
- Revocation service: TRANSFERRED to emergency backup (cloud OCSP responder with pre-signed responses)
- ENISA notification: Submitted (08:00)
- Customer notification: Mass email campaign (10:00)
- Insurance claim: Filed (12:00)

#### Day 2-7: Transition Planning
- Emergency archive custodian engaged (expedited agreement)
- Forensic investigation launched (cause: datacenter fire suppression failure)
- EETT site inspection conducted (Day 5)
- Customer support hotline established (24×7)

#### Week 2-4: Archive & Closure
- Archive dataset reconstructed from database backups (CRLs, logs, certificates)
- Emergency handover to custodian (Week 3)
- Final EETT report submitted (Week 4)
- NTL status changed to "terminated" (Week 4)
- Insurance payout received: ~€800k (covers losses + liabilities)

### 3.4 Lessons Learned

**What Went Well:**
1. ✅ Incident response team activation within 15 minutes
2. ✅ EETT Level 5 notification submitted within 1 hour (regulatory compliance)
3. ✅ Emergency OCSP responder activated successfully (99.5% uptime maintained)
4. ✅ Insurance policy covered losses (adequate coverage limits)
5. ✅ Customer communication empathetic and transparent

**Critical Failures Identified:**
1. ❌ **HSM backup misconfiguration:** Backup keys should have been in geographically separated vault (>50km), not same datacenter
2. ❌ **Disaster recovery testing:** Last DR test was 18 months ago, did not include HSM failure scenario
3. ❌ **Fire suppression redundancy:** Single point of failure in datacenter fire system

**Corrective Actions (MANDATORY):**
| ID | Action | Owner | Deadline | Status |
|----|--------|-------|----------|--------|
| TTE-002-01 | Move HSM backup keys to off-site vault (minimum 50km separation) | [Crypto Officer] | IMMEDIATE | ✅ DONE |
| TTE-002-02 | Increase DR testing frequency to quarterly, include HSM failure | [CISO_NAME] | Q4 2025 | 🔄 IN PROGRESS |
| TTE-002-03 | Audit all single points of failure in datacenter infrastructure | [IT Infrastructure Lead] | Q4 2025 | 🔄 IN PROGRESS |
| TTE-002-04 | Increase insurance coverage to €1.5M (from €1M) | [Finance Director] | Q4 2025 | 🔄 IN PROGRESS |
| TTE-002-05 | Develop "go bag" for emergency termination (pre-signed docs, contact lists) | [QTS_MANAGER_NAME] | Q4 2025 | ✅ DONE |

---

## 4. PARTIAL DRILLS

### 4.1 Archive Handover Drill (2025-06-10)

**Scope:** Test data transfer mechanics without full termination simulation

**Activities:**
- Export sample dataset (1,000 certificates + logs)
- Encrypt with AES-256, generate SHA-256 hashes
- Transfer to custodian SFTP, verify integrity
- Custodian imports to test environment, confirms accessibility

**Duration:** 4 hours  
**Outcome:** ✅ Data transfer successful, average speed 50MB/s, zero data corruption

**Issue Identified:** SFTP credentials management unclear (resolved: use HSM-stored SSH keys)

---

### 4.2 User Notification Drill (2025-08-15)

**Scope:** Test mass notification system with pilot user group (500 users)

**Activities:**
- Send test termination notification to pilot group
- Monitor delivery rates (email, SMS)
- Measure customer support call volume
- Survey pilot users for feedback

**Duration:** 2 days  
**Outcome:** ✅ 98% email delivery, 95% SMS delivery, 12% call rate (60 calls)

**Issue Identified:** Email template too technical; revised for clarity

---

## 5. CONTINUOUS IMPROVEMENT

### 5.1 Exercise Schedule (Next 24 Months)

| Date | Exercise Type | Scenario | Facilitator |
|------|---------------|----------|-------------|
| 2025-12-01 | Tabletop Exercise #3 | Planned termination (regulatory order) | [QTS_MANAGER_NAME] |
| 2026-03-15 | Partial Drill | EETT notification submission | [EETT Liaison] |
| 2026-06-01 | Tabletop Exercise #4 | Unplanned termination (bankruptcy) | [CFO_NAME] |
| 2026-09-01 | Partial Drill | Employee transition planning | [HR Representative] |
| 2026-12-01 | Full-Scale Simulation | Planned termination with live data transfer | [QTS_MANAGER_NAME] |

### 5.2 Metrics & KPIs

**Exercise Effectiveness:**
- Participant feedback score: Target ≥4.0/5.0
- Action item closure rate: Target 100% within 90 days
- Lessons learned integration: Target 100% into termination plan updates

**Operational Readiness:**
- EETT notification template completeness: 100% (✅)
- Archive custodian agreement status: Signed (✅)
- Employee "go bag" preparedness: 100% (✅)
- Customer communication templates: 5 scenarios covered (✅)

---

## 6. CAB AUDIT EVIDENCE

**For CAB Review:**
- This annex demonstrates [LEGAL_NAME_EN]'s commitment to termination plan operability per EETT Articles 7-8
- Exercises conducted annually with documented lessons learned
- Corrective actions tracked to closure
- Compliance with eIDAS Article 24(4) business continuity requirements

**CAB Attestation Section:**
```
[CAB_NAME] has reviewed the termination exercise evidence and confirms:
☐ Exercises conducted with appropriate frequency (annual minimum)
☐ Lessons learned documented and integrated into termination plan
☐ Stakeholder participation adequate (executive, operational, technical)
☐ Compliance with EETT Annex 5 requirements demonstrated

CAB Auditor Signature: ________________  Date: __________
```

---

## 7. CONCLUSION

Through structured tabletop exercises and partial drills, [LEGAL_NAME_EN] has validated the operability of its service termination plan. Key achievements:

1. ✅ **Planned termination:** Complete walkthrough from board decision to archive handover (5-month timeline)
2. ✅ **Unplanned termination:** Emergency response to catastrophic incident, EETT Level 5 compliance
3. ✅ **Continuous improvement:** 10 action items identified and 80% completed
4. ✅ **Regulatory readiness:** EETT notification templates tested, archive custodian engaged, stakeholder communication validated

**Next Review:** Scheduled for [SUBMISSION_DATE + 12 months] or upon material change to termination plan.

---

**Document Approval:**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Qualified Trust Services Manager** | [QTS_MANAGER_NAME] | ________________ | [SIGN_DATE] |
| **Chief Information Security Officer** | [CISO_NAME] | ________________ | [SIGN_DATE] |
| **Legal Counsel** | [Legal Representative] | ________________ | [SIGN_DATE] |

**End of Annex E**
