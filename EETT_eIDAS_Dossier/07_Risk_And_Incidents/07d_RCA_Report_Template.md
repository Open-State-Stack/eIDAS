# 07d — Root Cause Analysis (RCA) Report Template
## Πρότυπο Αναφοράς Ανάλυσης Βασικής Αιτίας (RCA)

Document Code: 07d_RCA_Report_Template  
Version: 1.0  
Classification: Internal / Confidential  
Owner: CISO (Primary), QTS Manager (Co-owner)  
Related Policies: 07a_Incident_Response_Plan_GR.md, 11_Revocation_Status_SOP_GR.md, 12_Records_and_Access_Policy_GR.md, 04_TSP_Policy_*.md, 05_TSPS_*.md

---

## 0) Filing & Compliance Checklist / Λίστα Συμμόρφωσης
- [ ] RCA initiated within 48 hours after incident resolution (IRP §4; Level ≥3)
- [ ] Initial notification to EETT within 24 hours (for L3+) (IRP §6.2)
- [ ] DPA (GDPR) notification within 72 hours (if personal data breach)
- [ ] Final report to EETT within regulator timeframe (per EETT instructions)
- [ ] Evidence collected, hashed, archived (Records §11; NIST SP 800-88 for disposal)
- [ ] Corrective Action Plan (CAP) approved with owners and deadlines
- [ ] Effectiveness Verification Plan defined (how/when measured)
- [ ] Closure approved by CISO and QTS Manager

---

## 1) Executive Summary / Εκτελεστική Περίληψη
- Incident ID: [INCIDENT_ID]  
- Date/Time Detected (UTC): [DETECTED_AT]  
- Date/Time Resolved (UTC): [RESOLVED_AT]  
- EETT Level (Annex 3): [L1|L2|L3|L4|L5]  
- Summary of Impact (CIA): [Confidentiality|Integrity|Availability — brief]  
- Root Cause (one-liner): [ROOT_CAUSE_ONE_LINER]  
- Business Impact (qualitative/quantitative): [IMPACT_BRIEF]  
- Regulatory Notifications Submitted: [Yes/No — details]  
- Current Status: [Open|In Progress|Mitigated|Closed]

---

## 2) Incident Details / Λεπτομέρειες Περιστατικού
### 2.1 Timeline (UTC)
| Time (UTC) | Event | Actor/System | Notes |
|---|---|---|---|
| [YYYY-MM-DD HH:MM] | Detection (Alert ID: …) | [SIEM/NOC/SOC] |  |
| [YYYY-MM-DD HH:MM] | Classification (Level) | [Incident Manager] |  |
| [YYYY-MM-DD HH:MM] | Containment Action | [Team] |  |
| [YYYY-MM-DD HH:MM] | Eradication/Fix | [Team] |  |
| [YYYY-MM-DD HH:MM] | Recovery Completed | [Team] |  |
| [YYYY-MM-DD HH:MM] | EETT Initial Notification | [EETT Liaison/DPO] | Protocol: [#] |
| [YYYY-MM-DD HH:MM] | DPA Notification (if any) | [DPO] | Ref: [#] |
| [YYYY-MM-DD HH:MM] | Final Report Submitted | [EETT Liaison] | Ref: [#] |

### 2.2 Scope & Affected Assets
- Services: [QES|QSeal|QTS|QeDelivery|QWAC|QValidation]  
- Components: [OCSP|CRL|Issuing CA|TSA|RA Portal|HSM|Network]  
- Geography/DC: [DC1|DC2|Cloud Segment]  
- Subscribers/RPs impacted: [# or N/A]  
- Personal Data involved: [Yes/No; categories if yes]

---

## 3) Impact Analysis / Ανάλυση Αντίκτυπου
- Availability: [duration, SLA breach?]  
- Integrity: [data alteration? signatures validity affected?]  
- Confidentiality: [data exposure? scope]  
- Regulatory/Contractual: [obligations triggered, penalties risk]  
- Financial impact (if known): [€ estimate]  
- Reputational impact: [Low/Med/High]  
- For QTS/QES/QSeal events: [effect on validation, timestamps, revocations]

---

## 4) Evidence Register / Μητρώο Τεκμηρίων
| Evidence ID | Description | Source | Hash (SHA-256) | Retention Ref |
|---|---|---|---|---|
| EV-001 | Syslog extract (OCSP node A) | SIEM | [HASH] | 12_Recordkeeping §5 |
| EV-002 | Firewall logs (DMZ) | Firewall | [HASH] | 12_Recordkeeping §5 |
| EV-003 | RA audit trail (ticket #…) | ITSM | [HASH] | 12_Recordkeeping §5 |
| EV-004 | HSM audit events | HSM | [HASH] | 12_Recordkeeping §5 |
| EV-005 | Screenshots/Call recording (Revocation hotline) | SOP-11 | [HASH] | 12_Recordkeeping §5 |

Notes:
- Evidence stored at: [SECURE_PATH]  
- Access: read-only, least privilege; time-synced

---

## 5) Root Cause Analysis / Ανάλυση Βασικής Αιτίας
### 5.1 Problem Statement
- What specifically failed and how it manifested:  
  [PROBLEM_STATEMENT]

### 5.2 5-Whys (or equivalent technique)
1. Why? → [ ]  
2. Why? → [ ]  
3. Why? → [ ]  
4. Why? → [ ]  
5. Why? → [ ]  
Root Cause (conclusion): [ROOT_CAUSE_CONCLUSION]

### 5.3 Contributing Factors
- Technical: [e.g., misconfig, patch level, capacity]  
- Process: [e.g., missing check, unclear runbook]  
- People: [e.g., training gap, role confusion]  
- Third Parties: [e.g., upstream outage]  
- Environmental: [e.g., DC power event]

### 5.4 Fault Tree / Ishikawa (optional)
- Diagram(s) attached: [EV-REF]

---

## 6) Corrective & Preventive Action Plan (CAP) / Σχέδιο Διορθωτικών–Προληπτικών
### 6.1 Corrective Actions (to fix current issue)
| ID | Action | Owner | Due Date | Status | Evidence/Ref |
|---|---|---|---|---|---|
| CA-01 | [e.g., Reconfigure OCSP caching/TTL] | [Name/Team] | [YYYY-MM-DD] | [RAG] | [EV-REF] |
| CA-02 | [e.g., Patch vulnerable module] | [Name/Team] | [YYYY-MM-DD] | [RAG] | [EV-REF] |

### 6.2 Preventive Actions (to avoid recurrence)
| ID | Action | Owner | Due Date | KPI/Measure | Status |
|---|---|---|---|---|---|
| PA-01 | [e.g., Add monitoring rule for X] | [Name/Team] | [YYYY-MM-DD] | [MTTD↓, MTTR↓] | [RAG] |
| PA-02 | [e.g., Update SOP / training] | [Name/Team] | [YYYY-MM-DD] | [Completion %, quiz] | [RAG] |

### 6.3 Effectiveness Verification Plan
- How measured (metrics/KPIs): [e.g., zero recurrences in 90d; response times < X; SLA pass]  
- When reviewed: [YYYY-MM-DD]  
- Who approves: [CISO/QTS Manager/Process Owner]

---

## 7) Regulatory & Stakeholder Communications / Επικοινωνίες
- EETT Initial Report (<24h, L3+): [Submitted? When? Protocol #]  
- EETT Final Report: [Submitted? When? Ref]  
- DPA (72h if personal data breach): [Submitted? When? Ref]  
- Subscribers/Users: [Template used; date/time; channel]  
- Relying Parties: [Advisory issued?]  
- Public Notice (if applicable): [URL/Copy]  
- Third-parties/vendors: [Contact, actions requested]

---

## 8) Lessons Learned / Μαθήματα που Αποκομίστηκαν
- What worked well: [ ]  
- What did not work: [ ]  
- Process/Runbook changes needed: [ ]  
- Training needs: [ ]  
- Tooling/Monitoring gaps: [ ]  
- Design/Architecture improvements: [ ]

---

## 9) Risk Register Updates / Ενημέρωση Μητρώου Κινδύνων
- New risk(s) identified: [Risk ID, description, initial rating]  
- Residual risk after CAP: [rating]  
- Risk owner assignment: [Name/Role]  
- Next review date: [YYYY-MM-DD]

---

## 10) Approvals & Closure / Εγκρίσεις & Κλείσιμο
- RCA Prepared by: [Name, Role, Date]  
- Reviewed by: [Name, Role, Date]  
- CISO Approval: [Name, Signature/Date]  
- QTS Manager Approval: [Name, Signature/Date]  
- Closure Date: [YYYY-MM-DD]  
- Post-closure review scheduled: [YYYY-MM-DD]

---

## 11) Appendices / Παραρτήματα
- Appendix A — Evidence (redacted where necessary)  
- Appendix B — Diagrams (Fault Tree / Ishikawa / Timeline)  
- Appendix C — Communications (EETT/DPA templates, notices)  
- Appendix D — System Config/Changes (before/after diffs)  
- Appendix E — Audit Logs (summaries and references)

---

## Guidance Notes / Οδηγίες Συμπλήρωσης
- Use UTC timestamps; maintain a precise timeline.  
- Ensure evidence is hashed (SHA-256) and stored per Recordkeeping policy for ≥ 7 years post-expiry (regulatory reliance).  
- For Level ≥3 incidents, initiate this RCA within 48 hours after resolution; tie CAP to specific control owners and due dates.  
- Align OCSP/CRL timings with TSPS and Revocation SOP; verify SLAs post-incident.  
- If QSCD/remote signing involved, reference APPENDIX_A_QSCD_Remote_Signing.md controls in analysis.  
- Use the same Incident ID across ITSM, SIEM, hotline records, and regulatory submissions.
