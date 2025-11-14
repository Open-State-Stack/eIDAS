# Test Certificates – Folder Overview

This folder hosts the artefacts required by EETT Regulation Art. 6.3.4 (sample certificates, OCSP/CRL responses, TSA tokens) together with their manifests. The authoritative manifest is `06_Test_Certificates_Content.md` / `_ENRICHED.md`; the zipped bundle to be delivered to CAB/EETT is `06_Test_Certificates.zip`.

**Current state (2025-11-14):**
- `06_Test_Certificates.zip` now mirrors the structure described in the content guides (CA hierarchy, five end-entity samples, OCSP good/revoked/unknown responses, dual CRLs, TSA token, documentation/validation tooling).
- Standalone PEM/DER artefacts (`Root_CA_Certificate.pem`, `Issuing_CA_*`, `Sample_QES_Certificate.pem`, `Sample_OCSP_Response.der`, `Sample_CRL.crl`, `TSA_CA_Certificate.pem`) are populated with the same data for quick inspection without unzipping.

Refer to `06_Test_Certificates_Compliance_Audit.md` for ongoing QA notes and to Doc 02 §G for the attachment linkage.
