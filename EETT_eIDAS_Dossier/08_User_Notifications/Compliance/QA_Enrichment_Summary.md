# Doc 08 – QA & Enrichment Control Log

**Last update:** 2025-11-15  
**Owner:** Compliance Office – User Communications Stream  
**Scope:** `Drafts/08_User_Notification_Plan_GR_EN.md`, `Final/08_User_Notification_Templates_GR_EN.pdf`, `Compliance/08_Submission_Readiness.md`, Archive references, Doc 07/11/12/13 dependencies.

---

## 1. Objective
Provide a single authoritative checklist showing how Doc 08 satisfies the remediation items raised during the GAP analysis (§1.3.A) and what evidence remains outstanding prior to submission to EETT/CAB.

---

## 2. Completed Enhancements
| GAP ID | Requirement | Action Implemented | Evidence Location |
|--------|-------------|-------------------|-------------------|
| GAP-08-01 | Compliance checklist missing | Added bilingual checklist with citations in §ΠΙΝΑΚΑΣ ΣΥΜΜΟΡΦΩΣΗΣ | `Drafts/08_User_Notification_Plan_GR_EN.md` p.1 |
| GAP-08-02 | Notification SLAs undefined | Section 4 SLA matrix referencing eIDAS/EETT timing | `Drafts/08_User_Notification_Plan_GR_EN.md` §4 |
| GAP-08-03 | Templates incomplete | Section 5 templates A–F plus Doc 13 linkage | `Drafts/08_User_Notification_Plan_GR_EN.md` §5 |
| GAP-08-04 | Workflow absent | Section 9 eight-step workflow + ASCII swimlane | `Drafts/08_User_Notification_Plan_GR_EN.md` §9 |
| GAP-08-05 | Stakeholder contact governance missing | Section 10 table tied to `MASTER_CONTACT_LIST.md` | `Drafts/08_User_Notification_Plan_GR_EN.md` §10 |
| GAP-08-06 | Testing & KPI structure absent | Section 11 drill cadence + KPI table | `Drafts/08_User_Notification_Plan_GR_EN.md` §11 |
| GAP-08-07 | Annual reporting undefined | Section 12 deliverables + timing | `Drafts/08_User_Notification_Plan_GR_EN.md` §12 |
| GAP-08-08 | Annexes absent | Annexes A–D (incident form, contacts, status API payload, drill log) | `Drafts/08_User_Notification_Plan_GR_EN.md` Annexes |

---

## 3. Outstanding Actions (Must Close Before Submission)
1. **PDF Template Validation – Critical**  
   - **Action:** Manually review `Final/08_User_Notification_Templates_GR_EN.pdf` outside sandbox, confirm bilingual coverage, QSeal signature, and alignment with Section 5 text.  
   - **Owner:** Corporate Communications + QTS Manager.  
   - **Evidence:** Store validation checklist + SHA-256 hash in `Evidence/Template_Validation_Log.md` and `Evidence/Hashes_SHA256.txt`.
2. **Placeholder Population – High**  
   - **Action:** Replace `[LEGAL_NAME_*]`, `[STATUS_URL]`, `[REVOCATION_HOTLINE]`, `[DPO_CONTACT]`, etc., using `MASTER_CONTACT_LIST.md` and CRM extracts; document change ticket IDs.  
   - **Owner:** Compliance Operations (dual control with QTS Manager).  
   - **Evidence:** Updated draft + change log snippet in `Evidence/Template_Validation_Log.md`.
3. **Cross-Border Recipient Registry – Medium**  
   - **Action:** Once external relying parties confirmed, append them to Doc 13 and point Section 7 to the registry entry (language + timezone notes).  
   - **Owner:** International Programs Lead.  
   - **Evidence:** Link to Doc 13 update + mention in readiness tracker.
4. **QA Evidence Attachments – Low**  
   - **Action:** File signed reviewer checklist, drill reports, and approval emails under Doc 12 (Recordkeeping) and cross-reference IDs here.  
   - **Owner:** Compliance Office.

---

## 4. Readiness Snapshot
| Regulation | Evidence Referenced | Status |
|------------|--------------------|--------|
| eIDAS Art. 19(2) | §§2–7 triggers/methods, Annex C | ✅ Textual coverage |
| EETT Art. 5 & 11 | §4 SLA table, Annex A templates | ✅ Textual coverage |
| GDPR Arts. 33–34 | §2.2 + Template B references | ✅ Textual coverage |
| ETSI EN 319 401 §6.1.4 | §§3.3 & 6 public comms | ✅ Textual coverage |
| CABF BR §4.9.3 | Template C + SLA table | ✅ Textual coverage |
| Evidence (PDF/templates) | `Final/` artefacts + `Evidence/` hashes | ⚠️ Pending validation |

Overall readiness: **Submission-ready once outstanding actions above are closed and evidence logged.**

---

## 5. Action & Owner Matrix
| Task | Owner | Due | Evidence Target |
|------|-------|-----|-----------------|
| Validate template PDF + capture QSeal proof | Corporate Comms / QTS Manager | +5 business days | `Evidence/Template_Validation_Log.md` |
| Populate placeholders & log change control | Compliance Ops | With next CRM export | Change ticket ref in log |
| Update readiness tracker with closures | Compliance Lead | After each closure | `Compliance/08_Submission_Readiness.md` |
| Store reviewer sign-offs | Compliance Lead | Before submission | Doc 12 record IDs |

---

## 6. Document Control
| Version | Date | Notes | Reviewer |
|---------|------|-------|----------|
| 1.0 | 2025-11-15 | Initial consolidation of QA notes | Senior Compliance Officer |

Next review coincides with Doc 08 annual review or upon any material change.
