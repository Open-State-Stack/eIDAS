# Doc 11 – Revocation & Status QA Log

**Last update:** 2025-11-15  
**Owner:** QTS Manager / Compliance Office  
**Scope:** `Drafts/11_Revocation_Status_SOP_GR.md`, `Final/11_Revocation_SOP_GR_EN.pdf`, `Final/11a_Revocation_Forms.pdf`, hotline scripts, web disclosure, Doc 08/10/12 linkages.

## 1. Completed Enhancements
| GAP ID | Requirement | Action Implemented | Evidence |
|--------|-------------|-------------------|----------|
| GAP-11-01 | Lacked detailed authentication methods | SOP §§2–3 enriched with Methods A/B/C | `Drafts/11_Revocation_Status_SOP_GR.md` |
| GAP-11-02 | Missing compliance checklist | Front-matter checklist added (eIDAS/EETT/RFC) | Same |
| GAP-11-03 | Fraud detection unclear | Red flag table + escalation flow documented | SOP §3.3 |
| GAP-11-04 | Web disclosure incomplete | `Drafts/11a_Web_Disclosure_Text_GR.md` updated with subscriber guidance | Same |

## 2. Outstanding Actions
1. **PDF validation & hash (Critical)** – Validate `Final/11_Revocation_SOP_GR_EN.pdf` and `Final/11a_Revocation_Forms.pdf`; log hashes in `Evidence/Hashes_SHA256.txt` and steps in `Evidence/Template_Validation_Log.md`. Owner: Corporate Comms + QTS Manager.
2. **Placeholder population (High)** – Align hotline numbers, OCSP/CRL URLs with Docs 01 & 08 once DNS/CRM updates are live; document change tickets here. Owner: Compliance Ops.
3. **Evidence attachments (High)** – Store voice log samples, web publication screenshots, and acceptance forms in Doc 12 and reference IDs in `Evidence/` folder. Owner: Operations + Communications.

## 3. Readiness Snapshot
| Regulation | Coverage | Evidence Status |
|------------|----------|-----------------|
| eIDAS Art.24 (2)(d)(h) & 24(4)(d) | SOP §§2–7 | ✅ Textual coverage |
| EETT Art.11 | SOP §§2–6, web disclosure | ✅ Textual coverage |
| RFC 5280 / OCSP profiles | SOP §§5–6 | ✅ Textual coverage |
| Evidence (PDFs/forms) | Final PDF/form files | ⚠️ Validation/logs pending |

## 4. Action Tracker
| Task | Owner | Due | Evidence Target |
|------|-------|-----|-----------------|
| Validate PDFs (SOP + forms) | Comms / QTS Manager | +5 business days | `Evidence/Hashes_SHA256.txt` |
| Update placeholders (hotline/URLs) | Compliance Ops | With next CRM export | Change ticket ID + README update |
| Archive evidence (voice/web) | Operations | After go-live | Doc 12 record IDs |

## 5. Document Control
| Version | Date | Notes | Reviewer |
|---------|------|-------|----------|
| 1.0 | 2025-11-15 | Initial QA log consolidation | Senior Compliance Officer |
