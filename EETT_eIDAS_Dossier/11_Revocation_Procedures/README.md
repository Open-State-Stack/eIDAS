## Revocation & Status Services – Quick Reference

**Last Review:** 2025-11-15  
**Reviewer:** Senior Compliance Officer

### Folder Map
- `Drafts/11_Revocation_Status_SOP_GR.md` – Authoritative SOP (24×7 revocation, OCSP/CRL operations, emergency flows).
- `Drafts/DOC-REVOKE-S01_Revocation_Hotline_Script.md` – Operator scripts with authentication/fraud handling steps.
- `Drafts/11a_Web_Disclosure_Text_GR.md` – Website disclosure for subscribers/relying parties.
- `Final/11_Revocation_SOP_GR_EN.pdf` – Signed bilingual SOP (validation pending).
- `Final/11a_Revocation_Forms.pdf` – Standard revocation form pack (validation pending).
- `Compliance/11_Submission_Readiness.md` – Readiness gate tracker.
- `Compliance/QA_Revocation_Log.md` – Consolidated GAP/evidence log (replaces enrichment summary).
- `Evidence/11_Implementation_Guide.md` – Operational deployment checklist for NOC/SOC/RA teams.
- `Evidence/Hashes_SHA256.txt` & `Evidence/Template_Validation_Log.md` – Hash register & validation log for final PDFs.

### Regulation Coverage Snapshot
| Requirement | Evidence |
|-------------|----------|
| eIDAS Art. 24(2)(d),(h) & 24(4)(d) | SOP §§2–7 (revocation acceptance, OCSP/CRL ops, emergency procedures) |
| eIDAS Art. 19(2) | SOP §7 – incident/notification linkages |
| EETT Regulation Art. 11 | SOP §§2–6; web disclosure |
| ETSI EN 319 401 §6.4 | SOP §§2–3 authentication and processing |
| RFC 5280 / OCSP profiles | SOP §§5–6; Implementation Guide checklist |

### Outstanding Tasks
1. Align hotline numbers & OCSP/CRL URLs with Docs 01 & 08 once DNS/CRM updates complete; record change tickets in QA log.
2. Validate PDFs (`Final/11_Revocation_SOP_GR_EN.pdf`, `Final/11a_Revocation_Forms.pdf`), capture hashes in Evidence logs, and file Doc 12 references.
3. Store voice log samples and web publication evidence (screenshots, timestamps) in Doc 12 and cross-reference in Evidence folder.

### Contacts
- **Process Owner:** QTS Manager (Doc 11)  
- **Operational Leads:** NOC/SOC Manager, RA Manager  
- **Escalation:** CISO / Incident Commander
