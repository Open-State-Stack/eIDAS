# 05 – Key Management & TSPS Services

This folder now consolidates the two Doc 05 workstreams:

1. **Key Management** – operational controls for cryptographic material (Root/Issuing/TSA/QSCD) that fulfil eIDAS Art. 24(2)(c), EETT Art. 4 §2 and ETSI EN 319 411-1 §7.4.
2. **Trust Service Practice Statements (TSPS)** – bilingual TSPS texts and readiness evidence that demonstrate how the provider meets eIDAS Art. 24, Annex II and ETSI EN 319 401/411/421 obligations.

A shared numbering scheme (05.x) introduced overlap between readiness trackers, audit logs and evidence registers. The merger keeps both domains in one auditor-facing space while making dependencies explicit (e.g., TSPS §7 pulls directly from Key Management procedures and custody evidence). Use the overlap assessment in `Compliance/Key_Management_vs_TSPS_Overlap.md` to keep traceability current.

## Structure

| Path | Purpose |
|------|---------|
| `Drafts/Key_Management/` | Working bilingual procedures, key ceremony scripts, custodian register. |
| `Drafts/TSPS/` | Working TSPS texts (GR/EN) plus annexes (e.g., Qualified Preservation). |
| `Compliance/Key_Management/` | Audit log, readiness tracker, evidence map for crypto controls. |
| `Compliance/TSPS/` | TSPS compliance audit, readiness tracker, manifest. |
| `Evidence/Key_Management/` | Certificates of destruction, backup verification reports, key ceremony packets, hashes. |
| `Evidence/TSPS/` | Signed bilingual TSPS PDF, validation logs, CAB correspondence (placeholder). |
| `Final/Key_Management/` | Signed PDFs for procedures, ceremony packets, custodian register extracts. |
| `Final/TSPS/` | Signed bilingual TSPS pack plus validation artefacts referenced in Doc 02 §G. |

All final artefacts must be signed (QES/QSeal), hashed, and linked to Annex B rows as indicated in the traceability matrix. Keep readiness trackers synchronized so that Doc 02 packaging references only completed, validated evidence.
