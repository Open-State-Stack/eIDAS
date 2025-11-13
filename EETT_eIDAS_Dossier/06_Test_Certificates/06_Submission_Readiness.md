# 06 – Test Certificates & Cryptographic Evidence Readiness

| Artifact | Status | Notes |
|----------|--------|-------|
| `06_Test_Certificates.zip` | ✅ Complete | Περιλαμβάνει δείγματα QES/QSeal/QTimestamp, OCSP, CRL, DER, PEM, manifest.
| PEM/DER set (`Root_CA`, `Issuing_CA_QES/QSeal`, `TSA_CA`, `Sample_QES_Certificate.pem`, `Sample_OCSP_Response.der`, `Sample_CRL.crl`) | ✅ Validated | SHA-256 fingerprints καταγεγραμμένες στο `06_Test_Certificates_Content.md`.
| Documentation | `Test_Certificates.md`, `06_Test_Certificates_Content.md`, `06_Test_Certificates_Content_ENRICHED.md`, `Documentation/20_Certificate_Profiles_Guide.md`, `samples/7_Certificate_Profiles_Summary.md` | ✅ Synchronized | Περιλαμβάνει mapping προς ETSI EN 319 412-x & Decision (EU) 2015/1506.

## Outstanding / Controls
- ⚠️ Επιβεβαιώστε ότι τα `nextUpdate` πεδία στους CRL samples είναι <24h σύμφωνα με SOP §11.
- ⚠️ Εκτελέστε re-validation (openssl verify) μετά από κάθε αλλαγή κλειδιού για να ενημερωθούν τα hash στο `.md`.
- ⚠️ Προσθέστε δοκιμαστικό OCSP response «revoked» (σημειώνεται στο `06_Test_Certificates_Content_ENRICHED.md`).
