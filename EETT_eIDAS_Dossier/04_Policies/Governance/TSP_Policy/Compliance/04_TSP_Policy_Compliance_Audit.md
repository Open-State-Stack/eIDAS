# 04 TSP Policy Dossier – Compliance Audit
**Reviewer:** Senior Compliance (regulator role)  
**Date:** 2025-11-11  
**Scope:** Folder `04_TSP_Policy` – policy deliverables supporting eIDAS Art. 19/24 and EETT Regulation Art. 4

---

## Document Inventory
| File | Purpose | Regulatory hook | Actual state |
|------|---------|-----------------|--------------|
| `Drafts/04_TSP_Policy_GR.md` | Authoritative Greek work file | eIDAS Art. 19, 24; ETSI EN 319 411-1 | ✅ Fully populated (legal data, OID, signature attestation, Appendix A). |
| `Drafts/04_TSP_Policy_EN.md` | English work file | Same | ✅ Mirrors GR version; Appendix A merged and bilingual signature note added. |
| `04_TSP_Policy_GR_EN_SIGNED.pdf` | Bilingual PDF export | Submission evidence | ⚠️ Generated via cupsfilter; QES signature/seal still pending. |
| `APPENDIX_A_QSCD_Remote_Signing.md` | Annex describing QSCD remote operations | Art. 24(2)(c), EN 319 411-2 | ℹ️ Retained as technical template; content embedded in §6.4 & Appendix A of both languages. |
| `README.md` | Folder overview/manifest | Internal control | ✅ Updated to show current status and highlight the outstanding QES action. |
| `04_Submission_Readiness.md` | Readiness tracker | Internal control | ✅ Shows policy completion and flags only the pending QES signature/log. |

---

## Detailed Findings
1. **Qualified signature missing:** The PDF export has not yet been digitally signed. EETT requires a QES signature/seal plus validation evidence (EV-201) before submission.
2. **Traceability references pending:** Doc 02 §G and the Article 10 traceability matrix still reference the draft path; once the signed PDF exists, their hashes/links must be updated.

---

## Required Cleanup
1. Apply the Greek Trust Services QES signature to `04_TSP_Policy_GR_EN_SIGNED.pdf`, archive the validation log (EV-201), and record the file hash.
2. Update Doc 02 §G and the traceability matrix annex with the signed file name + hash so downstream dossiers reference the final artifact.

---

## Immediate Next Steps
1. Trigger the QES signing workflow (lead auditor + CEO approval) and upload the signed PDF + validation log into this folder.
2. Notify the owners of Doc 02 and the traceability matrix to update their references once the signed PDF hash is available.
