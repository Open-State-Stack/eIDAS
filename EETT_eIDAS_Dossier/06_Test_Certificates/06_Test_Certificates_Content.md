# ΠΕΡΙΕΧΟΜΕΝΑ ΠΑΚΕΤΟΥ ΔΕΙΓΜΑΤΩΝ / TEST CERTIFICATES PACKAGE CONTENTS

**Εταιρεία / Company:** [LEGAL_NAME_GR] / [LEGAL_NAME_EN]  
**Έκδοση / Version:** 1.0  
**Ημερομηνία / Date:** [SUBMISSION_DATE]  
**Ταξινόμηση / Classification:** Public

---

## 1. ΣΚΟΠΟΣ / PURPOSE

**GR:** Αυτό το έγγραφο περιγράφει το περιεχόμενο του πακέτου `06_Test_Certificates.zip`. Το πακέτο περιέχει τεχνικά δείγματα από τις υπηρεσίες εμπιστοσύνης του Παρόχου, τα οποία υποβάλλονται στην ΕΕΤΤ και στον CAB για την επαλήθευση της τεχνικής συμμόρφωσης με τα πρότυπα eIDAS και ETSI.

**EN:** This document describes the contents of the `06_Test_Certificates.zip` package. The package contains technical samples from the Provider's trust services, which are submitted to EETT and the CAB for verification of technical compliance with eIDAS and ETSI standards.

---

## 2. ΠΕΡΙΕΧΟΜΕΝΑ ΑΡΧΕΙΟΥ ZIP / ZIP FILE CONTENTS

```
06_Test_Certificates.zip
│
├── 1_QES_Natural_Person_Sample.cer
├── 2_QSeal_Sample.cer
├── 3_QWAC_Sample.cer
├── 4_OCSP_Response_Sample.ors
├── 5_CRL_Sample.crl
├── 6_TSA_Token_Sample.tsr
└── 7_Certificate_Profiles_Summary.md
```

---

## 3. ΔΕΙΓΜΑ ΕΓΚΕΚΡΙΜΕΝΟΥ ΠΙΣΤΟΠΟΙΗΤΙΚΟΥ (QES - ΦΥΣΙΚΟ ΠΡΟΣΩΠΟ) / SAMPLE QUALIFIED CERTIFICATE (QES - NATURAL PERSON)

**Αρχείο:** `1_QES_Natural_Person_Sample.cer`

### 3.1. Ανάλυση Περιεχομένου / Content Analysis

| Πεδίο (Field) | Τιμή (Value) |
| :--- | :--- |
| **Version** | V3 |
| **Serial Number** | `1A:2B:3C:4D:5E:6F:7G:8H` |
| **Signature Algorithm** | sha256WithRSAEncryption |
| **Issuer** | `C=GR, O=[LEGAL_NAME_EN], CN=Hellenic Trust QES CA 1` |
| **Validity** | Not Before: `[DATE]`, Not After: `[DATE + 1 YEAR]` |
| **Subject** | `C=GR, CN=Ιωάννης Παπαδόπουλος, GN=Ιωάννης, SN=Παπαδόπουλος, serialNumber=IDC-GR-ΑΙ123456` |
| **Subject Public Key Info** | RSA, 2048 bit |
| **X509v3 Extensions** | |
| &nbsp;&nbsp;**Key Usage** | Digital Signature, Non-Repudiation (critical) |
| &nbsp;&nbsp;**Subject Key Identifier** | `[SKI_HEX]` |
| &nbsp;&nbsp;**Authority Key Identifier** | `[AKI_HEX]` |
| &nbsp;&nbsp;**CRL Distribution Points** | `URI:[CRL_URL_1]` |
| &nbsp;&nbsp;**Authority Information Access** | `OCSP - URI:[OCSP_URL_1]` |
| &nbsp;&nbsp;**qcStatements (ETSI EN 319 412-5)** | |
| &nbsp;&nbsp;&nbsp;&nbsp;**QcCompliance** | `id-etsi-qcs-QcCompliance (0.4.0.1862.1.1)` |
| &nbsp;&nbsp;&nbsp;&nbsp;**QcType** | `id-etsi-qcs-QcType-esign (0.4.0.1862.1.4)` |
| &nbsp;&nbsp;&nbsp;&nbsp;**QcSSCD** | `id-etsi-qcs-QcSSCD (0.4.0.1862.1.5)` (Εάν το κλειδί είναι σε QSCD) |

### 3.2. Μορφή PEM / PEM Format

```
-----BEGIN CERTIFICATE-----
MIID+DCCAuCgAwIBAgIJAN+I+E/q4V...
...
... (base64 encoded data) ...
...
-----END CERTIFICATE-----
```

---

## 4. ΔΕΙΓΜΑ ΑΠΑΝΤΗΣΗΣ OCSP / SAMPLE OCSP RESPONSE

**Αρχείο:** `4_OCSP_Response_Sample.ors`

### 4.1. Ανάλυση Περιεχομένου / Content Analysis

| Πεδίο (Field) | Τιμή (Value) |
| :--- | :--- |
| **OCSP Response Status** | successful |
| **Response Type** | id-pkix-ocsp-basic |
| **Version** | v1 |
| **Responder ID** | `CN=Hellenic Trust OCSP Responder, O=[LEGAL_NAME_EN], C=GR` |
| **Produced At** | `[DATETIME]` |
| **Responses** | |
| &nbsp;&nbsp;**CertID** | |
| &nbsp;&nbsp;&nbsp;&nbsp;**Hash Algorithm** | sha1 |
| &nbsp;&nbsp;&nbsp;&nbsp;**Issuer Name Hash** | `[HASH]` |
| &nbsp;&nbsp;&nbsp;&nbsp;**Issuer Key Hash** | `[HASH]` |
| &nbsp;&nbsp;&nbsp;&nbsp;**Serial Number** | `1A:2B:3C:4D:5E:6F:7G:8H` |
| &nbsp;&nbsp;**Cert Status** | **good** |
| &nbsp;&nbsp;**thisUpdate** | `[DATETIME]` |
| &nbsp;&nbsp;**nextUpdate** | `[DATETIME + 4 HOURS]` |
| **Signature Algorithm** | sha256WithRSAEncryption |

---

## 5. ΔΕΙΓΜΑ ΛΙΣΤΑΣ ΑΝΑΚΛΗΣΗΣ (CRL) / SAMPLE CERTIFICATE REVOCATION LIST (CRL)

**Αρχείο:** `5_CRL_Sample.crl`

### 5.1. Ανάλυση Περιεχομένου / Content Analysis

| Πεδίο (Field) | Τιμή (Value) |
| :--- | :--- |
| **Version** | v2 |
| **Signature Algorithm** | sha256WithRSAEncryption |
| **Issuer** | `C=GR, O=[LEGAL_NAME_EN], CN=Hellenic Trust QES CA 1` |
| **thisUpdate** | `[DATETIME]` |
| **nextUpdate** | `[DATETIME + 13 HOURS]` |
| **Revoked Certificates** | |
| &nbsp;&nbsp;**Certificate 1** | |
| &nbsp;&nbsp;&nbsp;&nbsp;**Serial Number** | `01:02:03:04:05:06:07:08` |
| &nbsp;&nbsp;&nbsp;&nbsp;**Revocation Date** | `[DATETIME]` |
| &nbsp;&nbsp;&nbsp;&nbsp;**Reason Code** | keyCompromise (1) |
| &nbsp;&nbsp;**Certificate 2** | |
| &nbsp;&nbsp;&nbsp;&nbsp;**Serial Number** | `09:0A:0B:0C:0D:0E:0F:10` |
| &nbsp;&nbsp;&nbsp;&nbsp;**Revocation Date** | `[DATETIME]` |
| &nbsp;&nbsp;&nbsp;&nbsp;**Reason Code** | affiliationChanged (3) |
| **CRL Extensions** | |
| &nbsp;&nbsp;**Authority Key Identifier** | `[AKI_HEX]` |
| &nbsp;&nbsp;**CRL Number** | `1234` |

---

## 6. ΔΕΙΓΜΑ ΗΛΕΚΤΡΟΝΙΚΗΣ ΧΡΟΝΟΣΗΜΑΝΣΗΣ (TSA TOKEN) / SAMPLE TIME-STAMP TOKEN

**Αρχείο:** `6_TSA_Token_Sample.tsr` (RFC 3161 Time-Stamp Response)

### 6.1. Ανάλυση Περιεχομένου / Content Analysis

| Πεδίο (Field) | Τιμή (Value) |
| :--- | :--- |
| **Status** | granted |
| **TimeStampToken** | |
| &nbsp;&nbsp;**Content Type** | id-signedData |
| &nbsp;&nbsp;**SignedData** | |
| &nbsp;&nbsp;&nbsp;&nbsp;**Version** | v3 |
| &nbsp;&nbsp;&nbsp;&nbsp;**encapContentInfo** | |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Content Type** | id-ct-TSTInfo |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Content (TSTInfo)** | |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Version** | v1 |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Policy** | `[TSA_POLICY_OID]` |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**MessageImprint** | |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Hash Algorithm** | sha256 |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Hashed Message** | `[HASH_OF_USER_DATA]` |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Serial Number** | `[TSA_TOKEN_SERIAL]` |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**GenTime** | `[DATETIME]` (UTC) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Accuracy** | 1 second |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**TSA** | `CN=Hellenic Trust TSA, O=[LEGAL_NAME_EN], C=GR` |
| &nbsp;&nbsp;&nbsp;&nbsp;**SignerInfo** | |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Signature Algorithm** | sha256WithRSAEncryption |

---

## 7. ΠΕΡΙΛΗΨΗ ΠΡΟΦΙΛ ΠΙΣΤΟΠΟΙΗΤΙΚΩΝ / CERTIFICATE PROFILES SUMMARY

**Αρχείο:** `7_Certificate_Profiles_Summary.md`

Αυτό το έγγραφο περιγράφει τα τεχνικά προφίλ για κάθε τύπο πιστοποιητικού, διασφαλίζοντας τη συμμόρφωση με τα πρότυπα ETSI EN 319 412.

### QES Profile
-   **Key Usage:** Digital Signature, Non-Repudiation
-   **Extended Key Usage:** (Not typically used)
-   **QCStatements:** QcCompliance, QcType (esign), QcSSCD (if applicable)
-   **Subject DN:** `CN` (Full Name), `GN` (Given Name), `SN` (Surname), `serialNumber` (National ID)

### QSeal Profile
-   **Key Usage:** Digital Signature, Non-Repudiation
-   **QCStatements:** QcCompliance, QcType (eseal)
-   **Subject DN:** `O` (Organization Name), `organizationIdentifier` (VAT/GEMI Number), `CN` (Common Name)

### QWAC Profile
-   **Key Usage:** Digital Signature, Key Encipherment
-   **Extended Key Usage:** Server Authentication, Client Authentication
-   **QCStatements:** QcCompliance, QcType (web)
-   **Subject DN:** `CN` (Domain Name), `O` (Organization Name), `C` (Country)
-   **Subject Alternative Name (SAN):** `dNSName` for all covered domains.

---
## 8. ΕΠΑΛΗΘΕΥΣΕΙΣ / VERIFICATION COMMANDS

Παρακάτω παρατίθενται ενδεικτικές εντολές επαλήθευσης (OpenSSL) για τον έλεγχο των δειγμάτων. Οι εντολές εκτελούνται σε περιβάλλον δοκιμών και στοχεύουν στην επιβεβαίωση της συμμόρφωσης με τα δηλωθέντα προφίλ (TSPS) και τα SLAs (OCSP/CRL).

### 8.1 Επαλήθευση Αλυσίδας Πιστοποιητικών / Certificate Chain Verification
```
# Μετατροπή σε PEM (εφόσον απαιτείται)
openssl x509 -in 1_QES_Natural_Person_Sample.cer -inform DER -out 1_QES_Natural_Person_Sample.pem

# Επαλήθευση αλυσίδας (Root + Issuing ως untrusted)
openssl verify -CAfile Root_CA.pem -untrusted Issuing_CA.pem 1_QES_Natural_Person_Sample.pem
```

### 8.2 Ανάλυση Απόκρισης OCSP / OCSP Response Decode
```
# Εξαγωγή αναλυτικών πληροφοριών
openssl ocsp -respin 4_OCSP_Response_Sample.ors -resp_text -noverify

# Προαιρετικά με issuer/cert για πλήρη έλεγχο
# openssl ocsp -issuer Issuing_CA.pem -cert 1_QES_Natural_Person_Sample.pem -respin 4_OCSP_Response_Sample.ors -resp_text -noverify
```
Επαληθεύστε ότι τα πεδία `thisUpdate` / `nextUpdate` είναι παρόντα και ότι το `nextUpdate` βρίσκεται εντός πολιτικής (4 ώρες).

### 8.3 Ανάλυση CRL / CRL Decode
```
# Μετατροπή & ανάλυση CRL (DER -> text)
openssl crl -in 5_CRL_Sample.crl -inform DER -text -noout
```
Επαληθεύστε ότι το `thisUpdate` και το `nextUpdate` τηρούν την πολιτική (πλήρης CRL ανά 12 ώρες, `nextUpdate` σε 13 ώρες) και ότι τυχόν ανακληθέντα πιστοποιητικά φέρουν κατάλληλο Reason Code.

### 8.4 Ανάλυση RFC 3161 Time-Stamp Token / TSA Token Decode
```
openssl ts -reply -in 6_TSA_Token_Sample.tsr -text -noout
```
Ελέγξτε τα πεδία `TSTInfo` (policy OID, genTime, accuracy) και την αλυσίδα TSA.

### 8.5 Έλεγχος Συμμόρφωσης με TSPS / Policy Cross-Checks
- Τα OCSP `nextUpdate` ≤ 4 ώρες (ευθυγραμμισμένο με TSPS §7.1).
- Η πλήρης CRL εκδίδεται κάθε 12 ώρες με `nextUpdate` 13 ώρες (TSPS §7.2).
- Τα προφίλ πιστοποιητικών (OIDs, KU/EKU, QCStatements) ταιριάζουν με το `Certificate_Profiles_Guide.pdf`.

**Τέλος Εγγράφου / End of Document**