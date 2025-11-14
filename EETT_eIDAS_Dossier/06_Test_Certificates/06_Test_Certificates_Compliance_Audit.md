# 06 Test Certificates – Compliance Audit
**Reviewer:** Senior Compliance (regulator delegate)  
**Date:** 2025-11-11  
**Scope:** Folder `06_Test_Certificates` – technical evidence package required by EETT Regulation Art. 6.3.4 and eIDAS Art. 24

---

## Inventory & Actual State
| Artifact | Intended role | Observed state |
|----------|---------------|----------------|
| `06_Test_Certificates.zip` | Master bundle with CA/EE certs, OCSP/CRL/TSA samples, validation docs | ✅ Regenerated – now includes CA hierarchy, five end-entity samples, OCSP good/revoked/unknown responses, dual CRLs, TSA token, validation scripts, and OID tables. |
| Standalone PEM/DER files (`Root_CA_Certificate.pem`, `Issuing_CA_*`, `Sample_QES_Certificate.pem`, `Sample_OCSP_Response.der`, `Sample_CRL.crl`, `TSA_CA_Certificate.pem`) | Quick-access samples for CAB/EETT | ✅ Populated with the same content as zip for direct inspection. |
| `Test_Certificates.md` | Folder overview / manifest | ✅ Updated summary of package state and remediation log. |
| `06_Test_Certificates_Content.md` & `..._ENRICHED.md` | Detailed manifest with hashes, fields, regulatory mapping | ✅ Synced with new structure, includes SHA-256 table and refreshed descriptions; deeper sections still reference `[LEGAL_*]` placeholders (to be filled globally). |
| `Documentation/*` | Supporting references | ✅ New CAB checklist, validation script, and OID table accompany the existing Certificate Profiles Guide. |

---

## Findings (non-placeholder)
1. **Package refreshed** – Zip now matches the documentation and includes CA/EE samples, multiple OCSP statuses, CRLs, TSA token, and validation tooling. Hash recorded in §2.1 of the manifest.
2. **Standalone artefacts ready** – Root-level PEM/DER files contain the actual samples so CAB/EETT can inspect without extracting the zip.
3. **Documentation aligned** – `Test_Certificates.md` summarises the package; both manifest files list the new structure and hashes; CAB checklist plus validation script are included.
4. **Residual control** – Maintain periodic `openssl` verification and ensure CRL `nextUpdate` remains within SLA; link the new hash to Doc 02 §G and CAR Annexes.

---

## Required Actions
1. Record the published SHA-256 (zip + key artefacts) in Doc 02 §G and the CAR annexes.
2. Schedule periodic reruns of `Documentation/22_OpenSSL_Validation_Commands.sh` and update the manifests if any artefact changes.
3. Keep CRL samples current (nextUpdate ≤ 24h) and regenerate OCSP responses when certificate keys rotate.

---

## Immediate Next Steps
- Link the new evidence pack to Doc 02 §G (attachment 3.4) and Doc 03 traceability annex.
- Store the hash report and validation logs alongside the submission package in case EETT requests proof.
