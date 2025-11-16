# RA Operations vs Test Certificates – Overlap Assessment

## Context
- **RA Operations (currently empty):** No SOPs, readiness tracker, or audit log have been uploaded to `Drafts/RA/` or `Compliance/RA/`. The only available RA evidence in the repository is `Supporting_Docs/Personnel/Qualifications/RA_Operator_Training_Certificates.pdf`, which lives outside Doc 06 and is not referenced anywhere.
- **Test Certificates:** Fully populated under `Drafts/Test_Certificates/` (manifests plus documentation) and `Evidence/Test_Certificates/` (zip bundle, PEM/DER samples, OCSP/CRL/TSA data). Readiness and audit files (`Compliance/Test_Certificates/06_Submission_Readiness.md` and `06_Test_Certificates_Compliance_Audit.md`) show ✅ status with periodic maintenance notes.

## Why They Overlap
1. **Same control families:** ETSI EN 319 401 §7.2 links RA identity proofing directly to certificate issuance quality. The sample certificates shipped in `Evidence/Test_Certificates/06_Test_Certificates.zip` must reflect the RA procedures described in Doc 06; otherwise CAB/EETT can argue the samples are not representative.
2. **Traceability requirements:** Annex B rows referencing Doc 06 expect a one-to-one mapping between RA SOP IDs and the sample certificate evidence IDs enumerated in `Drafts/Test_Certificates/06_Test_Certificates_Content_ENRICHED.md`. Without RA documents, those references break.
3. **Operational scripts:** The validation script (`Drafts/Test_Certificates/Documentation/Documentation_in_zip/22_OpenSSL_Validation_Commands.sh`) assumes RA teams can regenerate samples. Their SOP should reference the same commands/checklists so auditors know the RA desk follows identical steps.

## Overlap Map
| Control Theme | RA Artefact (expected) | Test Certificates Artefact | Dependency / Gap |
|---------------|-----------------------|---------------------------|------------------|
| Subscriber identity verification | `Drafts/RA/RA_SOP_GR_EN.md` (missing) | `Evidence/Test_Certificates/End_Entity_Certificates/*.pem` + manifest §3 (`06_Test_Certificates_Content.md`) | Samples claim compliance with ETSI EN 319 411-2 §5; need SOP to show how those samples are generated post-identity proofing. |
| Revocation turnaround | `Compliance/RA/RA_Audit_Log.md` + RA incident reports (missing) | `Evidence/Test_Certificates/Revocation_Samples/*.der/.pem` | OCSP/CRL examples show SLA ≤ 15 min / 24 h, but RA controls must prove they trigger revocation events; no logs yet. |
| Registrar training & authorization | `Evidence/RA/Registrar_Training_*.pdf` (placeholder referencing Supporting_Docs) | `Drafts/Test_Certificates/Documentation/20_Certificate_Profiles_Guide.md` §14 (RA considerations) | Training attests that registrars follow certificate profile constraints; without linking the PDF, CAB cannot see who can issue samples. |
| Submission readiness signals | `Compliance/RA/06_RA_Submission_Readiness.md` (missing) | `Compliance/Test_Certificates/06_Submission_Readiness.md` | Need harmonized status icons; currently RA side is blank, risking Doc 02 showing inconsistent readiness for section 06. |
| Evidence hashing & packaging | `Final/RA/RA_SOP_SIGNED.pdf` (future) with hash table | `Evidence/Test_Certificates/06_Test_Certificates.zip` (hash in manifest §2) | Both must be tied in Annex B; at present only the test certificate hash is listed, RA docs absent. |

## Recommendations
1. Draft and upload RA SOPs (bilingual) plus readiness/audit trackers, then reference them from this overlap file and the test certificate manifest.
2. Link RA training certificates by copying or referencing `Supporting_Docs/Personnel/Qualifications/RA_Operator_Training_Certificates.pdf` inside `Evidence/RA/` and note the hash in Annex B.
3. Update `Compliance/Test_Certificates/06_Submission_Readiness.md` once RA documents exist so both halves display synchronized ✅/⚠️ statuses.
4. When regenerating `Evidence/Test_Certificates/06_Test_Certificates.zip`, capture the RA ticket IDs (who requested the samples) and log them in `Compliance/RA/RA_Audit_Log.md` to prove operational consistency.
