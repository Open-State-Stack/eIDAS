# CAB Validation Checklist (Doc 06)

1. Verify CA chain integrity for each issuing CA using `openssl verify` against `CA_Certificates/1_Root_CA.pem`.
2. Validate every end-entity certificate (QES/QSeal/QWAC/TSA/OCSP) using the corresponding issuing CA certificate.
3. Inspect OCSP responses (good/revoked/unknown) with `openssl ocsp -respin <file> -text -noverify` and record timestamps/status.
4. Inspect CRLs (`Revocation_Samples/16_...` and `17_...`) ensuring `nextUpdate` ≤ 24h and reason codes are present.
5. Inspect the TSA token (`Timestamp_Samples/18_TSA_Token_Sample.tsr`) via `openssl ts -reply -in ... -text`.
6. Capture SHA-256 hashes for every artefact and append them to `06_Test_Certificates_Content_ENRICHED.md`.
7. Archive the validated package checksum for the submission record.
