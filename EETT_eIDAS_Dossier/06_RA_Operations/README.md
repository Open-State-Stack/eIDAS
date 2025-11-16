# 06 – RA Operations & Test Certificates

Doc 06 now hosts both Registration Authority (RA) operational controls and the technical evidence package (test certificates, OCSP/CRL/TSA samples) required by EETT Regulation Art. 6.3.4. The merge eliminates duplicated readiness trackers and keeps the artefacts that auditors request (identity procedures, RA logs, sample certificates) under one umbrella.

## Scope Snapshot
- **RA Operations:** Identity proofing workflows, RA handbooks, registrar training evidence, queue/exception handling, RA-specific readiness reports. (Currently awaiting uploads – use the placeholders under `Drafts/RA/` and `Compliance/RA/`.)
- **Test Certificates:** Master manifest (`Drafts/Test_Certificates/06_Test_Certificates_Content*.md`), validation guidance, and the published artefacts (`Evidence/Test_Certificates/`) that will be attached to Doc 02 §G and Conformity Assessment Annexes.

## Structure

| Path | Purpose |
|------|---------|
| `Drafts/RA/` | Working procedures for RA onboarding, identity verification scripts, queue handling (to be populated). |
| `Drafts/Test_Certificates/` | Manifest + enriched manifest, package overview, and Documentation/ folder containing the Certificate Profiles Guide, CAB checklist, validation commands, and OID registry. |
| `Compliance/RA/` | Future home for RA readiness snapshot, audit logs, KPI trackers. |
| `Compliance/Test_Certificates/` | Includes readiness tracker (`06_Submission_Readiness.md`) and compliance audit log (`06_Test_Certificates_Compliance_Audit.md`). |
| `Compliance/RA_vs_Test_Certificates_Overlap.md` | Analysis of interdependencies (RA workflows rely on the same certificate kit provided to auditors). |
| `Evidence/RA/` | Placeholder for RA session logs, registrar attestations, evidence of remote identification controls. |
| `Evidence/Test_Certificates/` | Contains the shipped zip bundle, standalone PEM/DER samples, CA hierarchy folders, revocation/OCSP/TSA samples. |
| `Final/RA/` | Signed RA SOPs, Registrar charters, KPI dashboards ready for submission. |
| `Final/Test_Certificates/` | Signed submission memo + hash/log outputs accompanying the evidence pack. |

Keep readiness icons aligned between RA and Test Certificate trackers before shipping Doc 02. Whenever an artefact under `Evidence/Test_Certificates/` changes, re-run the validation script (`Drafts/Test_Certificates/Documentation/Documentation_in_zip/22_OpenSSL_Validation_Commands.sh`) and update hashes inside the manifests plus Doc 02 §G.
