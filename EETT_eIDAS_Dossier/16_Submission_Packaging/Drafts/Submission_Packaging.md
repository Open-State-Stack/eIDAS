## Submission Packaging – Quick Reference

**Last Review:** 2025-11-15  
**Reviewer:** Senior Compliance Officer (Regulatory Audit Team)

### Key Artifacts
- `14_NTL_Submission_Packaging_Guide_GR_EN.md` – Authoritative, step-by-step manual (PAdES-LTA + ASiC-E build, validation, submission).
- `16_Submission_Packaging_PLACEHOLDER.txt` – Detailed workflow/commands kept locally for staging.
- (to be added) `16_Master_File_Index.md` – file/sha inventory for the final ASiC-E package.
- (to be added) `EETT_Submission_<YYYYMMDD>.asice` – Final signed container plus validation logs.

### Compliance Coverage Snapshot
| Requirement | Covered By |
|-------------|------------|
| Decision (EU) 2015/1506 (signature formats) | Guide §3–4 (PAdES-LT/LTA instructions) |
| ETSI EN 319 142 / 162 (PAdES & ASiC-E) | Guide §3–5 + placeholder workflow |
| eIDAS Art. 26 & 42 (qualified signatures/timestamps) | Guide §2 & §4.3 |
| EETT Reg. Art. 6 (submission format) | Guide §7–8 (portal/email/physical) |

### Process Overview
1. **Freeze content**: ensure Docs 01–20 (and annexes) are finalized, placeholders resolved, CAB CAR signed (Doc 03).
2. **Convert & sign**: apply PAdES-B-LT/LTA using QES/QSeal per Guide §4; archive validator reports.
3. **Build ASiC-E**: follow Guide §5 / placeholder script (mimetype first, manifest SHA-256, README, optional signatures).
4. **Validate**: run ETSI-compliant validator (DSS) on each PDF and the container; capture reports in `Supporting_Docs/Submission_Proofs`.
5. **Record hashes**: produce SHA-256 list for every payload + final `.asice` and store alongside README/logs.
6. **Submit**: use EETT electronic portal (preferred) or email/physical per Guide §7; retain receipts.

### Outstanding Actions (Pre-Submission)
1. **Create master index** (`16_Master_File_Index.md`) listing every file/version/hash that will enter the ASiC-E container.
2. **Publish manifest templates/scripts** referenced in the placeholder (e.g., `META-INF/manifest-sha256.txt` generator, `verify.sh`).
3. **Produce validation artifacts** (PAdES/ASiC validator PDFs, hash log, README_SUBMISSION.txt) and store them in this folder once the final package is built.
4. **Copy final assets here**: when the signed guide and ASiC-E are ready, place `16_Submission_Packaging_Guide_GR_EN.pdf`, `EETT_Submission_<DATE>.asice`, and validation logs under this directory for traceability.

### Contacts
- **Packaging Owner:** Compliance Officer (Doc 16)
- **Qualified Signer:** Legal Representative / QES token custodian
- **Technical Lead (ASiC-E tooling):** PKI Operations Manager
