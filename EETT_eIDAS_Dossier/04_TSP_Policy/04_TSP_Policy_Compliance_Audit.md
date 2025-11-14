# 04 TSP Policy Dossier – Compliance Audit
**Reviewer:** Senior Compliance (regulator role)  
**Date:** 2025-11-11  
**Scope:** Folder `04_TSP_Policy` – policy deliverables supporting eIDAS Art. 19/24 and EETT Regulation Art. 4

---

## Document Inventory
| File | Purpose | Regulatory hook | Actual state |
|------|---------|-----------------|--------------|
| `04_TSP_Policy_GR.md` | Authoritative Greek work file | eIDAS Art. 19, 24; ETSI EN 319 411-1 | ⚠️ Contains placeholders (`[LEGAL_NAME_GR]`, `[POLICY_OID]`, `[SUBMISSION_DATE]`, `[COMPLAINTS_EMAIL]`, `[WEBSITE_URL]`). |
| `04_TSP_Policy_EN.md` | English work file | Same | ⚠️ Same placeholders present (English versions). |
| `04_TSP_Policy_GR_EN_SIGNED.pdf` | Expected signed bilingual PDF | Submission evidence | ❌ File missing entirely; table still claims it is “✅ Υπογεγραμμένο”. |
| `APPENDIX_A_QSCD_Remote_Signing.md` | Annex describing QSCD remote operations | Art. 24(2)(c), EN 319 411-2 | ✅ Present but not linked into the main policy/PDF yet. |
| `TSP_Policy.md` | Folder overview/manifest | Internal control | ⚠️ States PDFs are signed and synced; inaccurate given missing artifacts. |
| `04_Submission_Readiness.md` | Readiness tracker | Internal control | ⚠️ Previously showed all ✅ despite missing PDF/placeholders (now updated). |

---

## Detailed Findings
1. **Missing signed policy PDF** – No `04_TSP_Policy_GR_EN_SIGNED.pdf` exists in the repository (see `find` results). Yet `TSP_Policy.md:7-13` and `04_Submission_Readiness.md` claimed the document was signed and ready. This is a critical submission blocker.
2. **Work files still templated** – Both `04_TSP_Policy_GR.md:1-20` and `04_TSP_Policy_EN.md` retain placeholder fields for legal name, policy OID, submission date, complaints contact, and website. Until these are filled, neither version reflects the actual provider identity, violating Art. 19 transparency requirements.
3. **Appendix not integrated** – `APPENDIX_A_QSCD_Remote_Signing.md` exists but is not referenced within the main policy body or TOC; the readiness tracker still lists it as “αναμένεται input”.
4. **Readiness tracker overstated completion** – `04_Submission_Readiness.md` showed three green checks even though no signed PDF exists and the templates contain placeholders. Pushing this dossier upstream would mislead the package owner.
5. **Cross-folder impacts** – Doc 02 §G references the TSP Policy as already signed; without the PDF, the Service Start dossier can’t provide the necessary evidence for Art. 6.3.

---

## Required Cleanup
1. Populate both GR/EN Markdown files with actual values (`[LEGAL_NAME_*]`, `[POLICY_OID]`, contact emails, dates) using the master placeholder configuration employed in other dossiers.
2. Merge `APPENDIX_A_QSCD_Remote_Signing.md` into the main policy (or include it as an annex) and update the table of contents references.
3. Export a bilingual PDF (`04_TSP_Policy_GR_EN_SIGNED.pdf`) once content is final, obtain Board signatures, and store the signed version in this folder.
4. Update `TSP_Policy.md` and other references to reflect reality only after the signed PDF is present.
5. Rerun the readiness checklist once the PDF exists and attachments are verified.

---

## Immediate Next Steps
1. Run the placeholder replacement routine for Doc 04 using the same master file created for Docs 01–02.
2. Re-export the bilingual PDF and capture the signature evidence (QES/QSeal validation log) for inclusion in the submission package.
3. Cross-check §8.4 (GDPR & incident/risk references) against the latest documents in folders 07 and 11 to ensure hyperlinks and contact data match.
