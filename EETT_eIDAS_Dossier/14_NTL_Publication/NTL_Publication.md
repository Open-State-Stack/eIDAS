## NTL Publication Dossier – Quick Reference

**Last Review:** 2025-11-15  
**Reviewer:** Senior Compliance Officer (Regulatory Audit Team)

### Key Artifacts
- `14_NTL_Publication_Datasheet.md` / `.pdf` – Master datasheet aligned with ETSI TS 119 612 (TSP info, service entries, OID mapping, XML schema references).
- `14_NTL_Submission_Packaging_Guide_GR_EN.md` – Detailed instructions for signing and packaging the datasheet and supporting docs (PAdES-LTA + ASiC-E).
- `README.md`, `ENRICHMENT_SUMMARY.md` – Context on enrichment scope, quality metrics, and user guidance.

### Regulation Coverage Snapshot
| Requirement | Evidence |
|-------------|----------|
| eIDAS Art. 22(1)(3)(5) | Datasheet Sections 0-2 ensure Member State publication format and accuracy |
| EETT Regulation Art. 3.3 & 6.6 | TSP contact info + post-approval submission workflow |
| ETSI TS 119 612 v2.3.1 | Detailed field-by-field mapping (Section 6), OID & status URI validation |
| Commission Decision (EU) 2015/1506 | Packaging guide sections 3-5 (signature formats, ASiC-E) |

### Key Process Milestones
1. **Populate datasheet** after approval decision (Sheet 1 TSP info, Sheet 2 service entries, Sheet 3 change log).
2. **Validate technical endpoints** (OCSP/CRL/TSA tests in Datasheet §4.4) and cross-check with Docs 02, 03, 05, 06, 19.
3. **Package and sign** using the Submission Packaging Guide (Doc 14) → produce PAdES-LTA signed PDF + ASiC-E container.
4. **Submit to EETT** within 3 working days post-approval and re-submit within 7 days for any change or annually post-CAR.

### Outstanding Actions (Pre-Submission)
1. Replace all `[PLACEHOLDERS]` (names, OIDs, URLs, timestamps) with the final approved data set before generating the final PDF/ASiC package.
2. Execute the hash-verification and PAdES-LTA validation steps in Packaging Guide §4, storing the validation report in Doc 16.
3. Once the signed PDF/ASiC is produced, copy it into `16_Submission_Packaging` for the master submission bundle and log the checksum in Doc 15.

### Points of Contact
- **NTL Datasheet Owner:** Compliance Officer (Doc 14)  
- **Technical Lead (OCSP/CRL/TSA):** PKI Operations Manager  
- **Submission Owner:** Legal Representative / QES signer
