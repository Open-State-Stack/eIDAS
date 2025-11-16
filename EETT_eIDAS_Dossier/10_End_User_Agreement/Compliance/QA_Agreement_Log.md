# Doc 10 – End-User Agreement QA & Evidence Log

**Last update:** 2025-11-15  
**Owner:** Legal & Compliance Lead  
**Scope:** `Drafts/10_Standard_End_User_Agreement_GR_EN.md`, `Final/10_End_User_Agreement_GR_EN_SIGNED.pdf`, `Evidence/10_Acceptance_Test_Report.md`, Doc 11/12 cross-references.

## 1. Completed Enhancements
| GAP ID | Requirement | Action Implemented | Evidence |
|--------|-------------|-------------------|----------|
| GAP-10-01 | Agreement lacked bilingual structure | Entire document mirrored GR/EN sections, Annexes A–E | `Drafts/10_Standard_End_User_Agreement_GR_EN.md` |
| GAP-10-02 | Missing liability references | Section 6 updated to cite eIDAS Art.13 & doc 04/05 commitments | Same |
| GAP-10-03 | No acceptance evidence | Simulated acceptance test scenarios documented | `Evidence/10_Acceptance_Test_Report.md` |

## 2. Outstanding Actions
1. **PDF validation & hash (Critical)** – Validate `Final/10_End_User_Agreement_GR_EN_SIGNED.pdf`, capture SHA-256, store in `Evidence/Hashes_SHA256.txt` and `Evidence/Template_Validation_Log.md`. Owner: Corporate Comms + Legal.
2. **Placeholder population (High)** – Fill `[LEGAL_*]`, hotline, fee, and URL placeholders before exporting final PDF; log change ticket ID here. Owner: Legal & Compliance.
3. **Acceptance evidence (Medium)** – Once production acceptance occurs, attach log/hash to Doc 12 and reference IDs in `Evidence/10_Acceptance_Test_Report.md`. Owner: Customer Ops.

## 3. Readiness Snapshot
| Regulation | Coverage | Evidence Status |
|------------|----------|-----------------|
| eIDAS Art.13/24/28 | Sections 2-7 + Annexes | ✅ Textual coverage |
| GDPR Arts.13-17 | Section 7 + Annex D | ✅ Textual coverage |
| ETSI EN 319 411 §6.3 | Subscriber obligations & testing | ⚠️ Needs real acceptance evidence |

## 4. Action Tracker
| Task | Owner | Due | Evidence Target |
|------|-------|-----|-----------------|
| Validate signed PDF | Comms + Legal | +5 business days | `Evidence/Hashes_SHA256.txt` |
| Populate placeholders | Legal & Compliance | Before final PDF | Change ticket ID + README update |
| Log production acceptance | Customer Ops | After go-live | Doc 12 reference + update test report |

## 5. Document Control
| Version | Date | Notes | Reviewer |
|---------|------|-------|----------|
| 1.0 | 2025-11-15 | Initial QA consolidation | Senior Compliance Officer |
