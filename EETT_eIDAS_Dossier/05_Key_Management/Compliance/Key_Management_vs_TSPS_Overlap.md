# Key Management vs TSPS Overlap Assessment

## Purpose
Doc 05 now houses both cryptographic operations evidence and the Trust Service Practice Statements. This note captures how the two sets of artefacts interact, which controls they jointly satisfy, and where evidence is missing so that Annex B and the forthcoming traceability matrix can point to a single source of truth.

## Context Snapshot
- **Key Management scope** (files under `Drafts/Key_Management/` and `Compliance/Key_Management/`) documents Root/Issuing/TSA/QSCD procedures, custodian rosters and ceremony evidence. Current blockers: missing backup verification logs and certificates of destruction (`Evidence/Key_Management/` placeholders) plus unsigned procedure PDFs.
- **TSPS scope** (files under `Drafts/TSPS/` and `Compliance/TSPS/`) contains the bilingual TSPS text, annex placeholders and the compliance audit log. Current blockers: absence of the signed bilingual PDF, unresolved OCSP/CRL/TSA endpoints, and an unfinished Qualified Preservation annex.

## Overlap Map
| Theme / Control | Key Management Source | TSPS Source | Integration Need |
|-----------------|-----------------------|-------------|------------------|
| eIDAS Art. 24(2)(c) – secure key lifecycle | `Drafts/Key_Management/Key_Management_Procedures_GR_EN.md` + `Root_CA_Key_Ceremony_Script.md` | §7–§8 of `Drafts/TSPS/05_TSPS_GR.md` & `05_TSPS_EN.md` | TSPS sections should reference the definitive procedure filenames + Annex B IDs once PDFs are signed. |
| Custodian accountability & training | `Drafts/Key_Management/Custodian_Register.csv` | Personnel clauses (§9) + Annex references | When the register is signed & moved to `Final/Key_Management/`, quote the register version/hash in TSPS §9. |
| Readiness / submission status | `Compliance/Key_Management/Submission_Readiness.md` | `Compliance/TSPS/05_Submission_Readiness.md` | Align status icons and due dates so Doc 02 packaging does not show conflicting readiness states. |
| Audit observations | `Compliance/Key_Management/Audit_Log.md` | `Compliance/TSPS/05_TSPS_Compliance_Audit.md` | Cross-reference CAR IDs; a single remediation tracker should capture both CAB and internal findings. |
| Evidence registers | `Compliance/Key_Management/Evidence_Map.md` | `Compliance/TSPS/TSPS_Services.md` | Once signed artefacts exist, populate `Evidence/Key_Management/` and `Evidence/TSPS/` with hashes and cite them in both registers to avoid duplicate referencing. |
| Qualified Preservation scope | `Drafts/Key_Management` (N/A) | `Drafts/TSPS/Annexes/Annex_QPreservation.md` | If service is deferred, explicitly note "out of scope" in TSPS §3 and remove Annex references from Doc 05 dashboards; otherwise add technical safeguards + evidence in `Evidence/TSPS/`. |

## Recommendations
1. Export both key-management procedures and the TSPS pack to signed PDFs, store under `Final/Key_Management/` and `Final/TSPS/`, and capture hashes in Annex B rows EV-501..EV-505.
2. Populate `Evidence/Key_Management/Backup_Verification_Reports/` and `Evidence/Key_Management/Certificates_of_Destruction/` so that TSPS §8 can cite tangible proof instead of placeholders.
3. Resolve OCSP/CRL/TSA endpoint placeholders via coordination with Doc 06, then update §7 of both TSPS drafts and mirror the values in the Key Management readiness tracker.
4. Maintain a single remediation tracker (suggested location: `Compliance/Key_Management_vs_TSPS_Overlap.md`) when CAB actions touch both domains, so that Doc 02 §G and the Master Compliance Register (folder 19) stay synchronized.
