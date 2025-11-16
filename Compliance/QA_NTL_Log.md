# Doc 14 – NTL Publication QA Log

**Last update:** 2025-11-15  
**Owner:** Regulatory Submission Lead  
**Scope:** `Drafts/14_NTL_Publication_Datasheet.md`, `Final/14_NTL_Publication_Datasheet.pdf`, packaging guide, verification checklist, readiness tracker.

## 1. Completed Enhancements
| GAP ID | Requirement | Action Implemented | Evidence |
|--------|-------------|-------------------|----------|
| GAP-14-01 | Datasheet lacked ETSI mapping | Added Section 0 compliance matrix + XML schema references | `Drafts/14_NTL_Publication_Datasheet.md` |
| GAP-14-02 | Packaging instructions absent | Created bilingual packaging guide | `Evidence/14_NTL_Submission_Packaging_Guide_GR_EN.md` |

## 2. Outstanding Actions
1. Validate final PDF/Excel outputs, capture hashes, and document in `Evidence/Hashes_SHA256.txt` + `Evidence/Template_Validation_Log.md`. Owner: QA Lead.
2. Update datasheet placeholders with final service data (fingerprints, URLs) before submission; log change ticket ID.
3. Attach ASiC package evidence and reference Doc 12 record IDs.

## 3. Readiness Snapshot
| Requirement | Coverage | Evidence Status |
|-------------|----------|-----------------|
| ETSI TS 119 612 data fields | Datasheet draft | ✅ Content complete (pending live data) |
| Packaging instructions | Packaging guide | ✅ |
| Evidence logs | Hash/validation | ⚠️ Pending |

## 4. Action Tracker
| Task | Owner | Due | Evidence Target |
|------|-------|-----|-----------------|
| Validate PDF + Excel | QA Lead | +5 business days | `Evidence/Hashes_SHA256.txt` |
| Update placeholders | Regulatory Team | Before submission | QA log entry |
| Store ASiC bundle | Regulatory Team | After validation | Doc 12 record |
