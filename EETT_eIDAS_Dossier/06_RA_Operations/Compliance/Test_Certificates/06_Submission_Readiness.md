# 06 – Test Certificates & Cryptographic Evidence Readiness

| Artifact | Status | Notes |
|----------|--------|-------|
| `06_Test_Certificates.zip` | ✅ Complete | Περιλαμβάνει πλήρες δέντρο (CA certs, end-entity δείγματα, OCSP good/revoked/unknown, δύο CRL, TSA token, validation scripts & OID πίνακες). |
| PEM/DER set (`Root_CA`, `Issuing_CA_QES/QSeal`, `TSA_CA`, `Sample_QES_Certificate.pem`, `Sample_OCSP_Response.der`, `Sample_CRL.crl`) | ✅ Populated | Όλα τα standalone αρχεία αντιγράφουν τα πραγματικά δείγματα για άμεση πρόσβαση από CAB/EETT. |
| Documentation | `Test_Certificates.md`, `06_Test_Certificates_Content*.md`, `Documentation/*` | ✅ Synchronized | Manifest + enriched έκδοση ενημερωμένες με νέα δομή, hashes και επαληθευτικές εντολές. |

## Outstanding / Controls
- 🔁 Εκτελέστε περιοδικά το script `Documentation/22_OpenSSL_Validation_Commands.sh` και ενημερώστε τους πίνακες hashes όταν αλλάξει κάποιο artefact.
- 📅 Διασφαλίστε ότι τα `nextUpdate` των CRLs παραμένουν ≤ 24h· ανανεώστε τα δείγματα εφόσον αλλάξει το SLA.
- 📎 Συνδέστε το ενημερωμένο zip και τις SHA-256 τιμές στη Doc 02 §G και στα Annex του CAR.
