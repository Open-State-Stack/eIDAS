# 05 TSPS Dossier – Compliance Audit
**Reviewer:** Senior Compliance (regulator delegate)  
**Date:** 2025-11-11  
**Scope:** Folder `05_TSPS_Services` – Trust Service Practice Statements supporting eIDAS Art. 24 & ETSI EN 319 411/421

---

## Document Inventory
| File | Purpose | Regulatory hook | Actual state |
|------|---------|-----------------|--------------|
| `05_TSPS_GR.md` | Authoritative Greek TSPS text | ETSI EN 319 411-1/2 | Draft – pending final OCSP/CRL endpoints and Qualified Preservation annex references. |
| `05_TSPS_EN.md` | English TSPS text | Same | Draft translation; mirrors GR version and inherits the same open items. |
| `05_TSPS_Qualified_Services_GR_EN_SIGNED.pdf` | Bilingual signed TSPS PDF | Submission evidence (Art. 6.3) | Missing entirely; no PDF or signature log committed. |
| `TSPS_Services.md` | Folder manifest & outstanding actions | Internal control | Updated table now shows draft status but previously indicated “✅ Υπογεγραμμένο (v1.1)”. |
| `05_Submission_Readiness.md` | Readiness tracker | Internal control | Revised to ⚠️/❌, but core deliverable (signed PDF) still absent. |

---

## Findings
1. **No signed TSPS PDF** – The manifest and readiness tracker previously asserted that `05_TSPS_Qualified_Services_GR_EN_SIGNED.pdf` existed, yet no such file is present anywhere in the repository. Doc 02 §G currently cites this artefact, so the Service Start dossier lacks the mandatory Annex 05 evidence.
2. **Technical endpoints still provisional** – Sections covering OCSP/CRL/TSA references rely on “to-be-finalised” URLs; this is already called out in outstanding actions but needs resolution before releasing the TSPS to the CAB or EETT.
3. **Qualified Preservation annex missing** – TSPS notes a placeholder annex for Qualified Preservation but no actual procedures or controls are documented yet. If the service is postponed, the scope list should reflect that; otherwise, the annex must be written and attached.
4. **Readiness signals previously misleading** – Both `TSPS_Services.md` and `05_Submission_Readiness.md` marked all controls as ✅, which could have led to packaging an incomplete dossier. These files now reflect the true status, but the underlying deliverables still need work.

---

## Required Actions
1. Finalise the GR/EN TSPS texts once the production OCSP/CRL/TSA endpoints are locked and any new service annex (e.g., Qualified Preservation) is ready.
2. Export the bilingual TSPS to PDF, apply Board/CAB signatures, and store it as `05_TSPS_Qualified_Services_GR_EN_SIGNED.pdf` with accompanying validation evidence.
3. Update Doc 02 §G and other references after the signed PDF is available, ensuring consistency across the dossier.
4. Keep `TSPS_Services.md` and `05_Submission_Readiness.md` in sync with actual progress; only flip to ✅ after the above steps are completed.

---

## Immediate Next Steps
- Coordinate with the infrastructure team (Doc 06) to finalize the production OCSP/CRL URLs and reflect them in §7 of the TSPS.
- Decide whether Qualified Preservation will be part of the initial submission; if yes, draft and attach the annex, if not, remove it from the declared service scope for now.
- Once the TSPS text is stable, perform the bilingual export/signature process so Doc 05 can serve as valid evidence for the CAR and Service Start application.
