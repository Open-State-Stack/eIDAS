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
├── CA_Certificates/
│   ├── 1_Root_CA.pem
│   ├── 2_Issuing_CA_QES_Natural.pem
│   ├── 3_Issuing_CA_QES_Legal.pem
│   ├── 4_Issuing_CA_QSeal.pem
│   ├── 5_Issuing_CA_QTS.pem
│   └── 6_Issuing_CA_QWAC.pem
│
├── End_Entity_Certificates/
│   ├── 7_QES_Natural_Person_Sample.pem
│   ├── 8_QES_Legal_Person_Sample.pem
│   ├── 9_QSeal_Sample.pem
│   ├── 10_QTS_Certificate_Sample.pem
│   ├── 11_QWAC_Sample.pem
│   └── 12_OCSP_Responder.pem
│
├── Revocation_Samples/
│   ├── 13_Sample_OCSP_Response_Good.der
│   ├── 14_Sample_OCSP_Response_Revoked.der
│   ├── 15_Sample_OCSP_Response_Unknown.der
│   ├── 16_Sample_CRL_Empty.pem
│   └── 17_Sample_CRL_WithRevocations.pem
│
├── Timestamp_Samples/
│   ├── 18_TSA_Token_Sample.tsr
│   └── 19_TSA_Token_Summary.txt
│
└── Documentation/
    ├── 20_Certificate_Profiles_Guide.pdf
    ├── 21_Validation_Checklist_CAB.md
    ├── 22_OpenSSL_Validation_Commands.sh
    └── 23_OID_Reference_Table.md
```

**SHA-256 (zip):** `aa21bf4040125229c4251d34f19f72946e13286607643b92664475b2e5276197`

| File | SHA-256 |
|------|---------|
| `CA_Certificates/1_Root_CA.pem` | `cfa1d7825799a3e8cc9938c3d86c52ba11f8f0c2ef1d3db204c4d404eae3fa1f` |
| `CA_Certificates/2_Issuing_CA_QES_Natural.pem` | `87dfb554d17c2d335e5395741fbd8122e78adf3ae60fbae832a844c743dce10a` |
| `End_Entity_Certificates/7_QES_Natural_Person_Sample.pem` | `37db9bcb2a6ec5f816cf8e6065eeaa4d9e14426f767ade9194e61126e8c47df7` |
| `Revocation_Samples/17_Sample_CRL_WithRevocations.pem` | `142dfe3e2310cc1d44e2f2151efcbeb0a1743e82ba8e9cecf4b129b9674868f1` |
| `Revocation_Samples/13_Sample_OCSP_Response_Good.der` | `1e06ca1272b1ac0cf2a4771ed233fe20a51116d86b582eb5cd9ddb8d9331544b` |
| `Timestamp_Samples/18_TSA_Token_Sample.tsr` | `1fe9764e8bce04b39474f70ccbdf2fbe3dadbadd214740c65ab6d7c4a1a26de3` |

---

## 3. ΔΕΙΓΜΑ ΕΓΚΕΚΡΙΜΕΝΟΥ ΠΙΣΤΟΠΟΙΗΤΙΚΟΥ (QES - ΦΥΣΙΚΟ ΠΡΟΣΩΠΟ) / SAMPLE QUALIFIED CERTIFICATE (QES - NATURAL PERSON)

**Αρχείο:** `End_Entity_Certificates/7_QES_Natural_Person_Sample.pem`

### 3.1. Ανάλυση Περιεχομένου / Content Analysis

| Πεδίο (Field) | Τιμή (Value) |
| :--- | :--- |
| **Version** | v3 |
| **Serial Number** | `0x03E8 (1000)` |
| **Signature Algorithm** | sha256WithRSAEncryption |
| **Issuer** | `C=GR, O=Greek Trust Services, OU=Qualified Services, CN=Greek Trust QES Natural CA` |
| **Validity** | Not Before: `Nov 14 04:16:31 2025 GMT`<br>Not After: `Nov 14 04:16:31 2026 GMT` |
| **Subject** | `C=GR, CN=Sample QES Natural Person, serialNumber=IDCGR-AI123456` |
| **Subject Public Key Info** | RSA, 2048 bit |
| **X509v3 Extensions** | |
| &nbsp;&nbsp;**Key Usage** | Digital Signature, Non Repudiation (critical) |
| &nbsp;&nbsp;**Subject Key Identifier** | `34:9F:EA:2D:2F:0F:5E:0B:A5:39:23:56:33:47:EF:20:5B:5F:C3:DF` |
| &nbsp;&nbsp;**Authority Key Identifier** | Matches SKI of issuing CA |
| &nbsp;&nbsp;**CRL Distribution Points** | `URI:http://example.com/crl/qes_ca.crl` |
| &nbsp;&nbsp;**Authority Information Access** | `OCSP - URI:http://example.com/ocsp/qes` |
| &nbsp;&nbsp;**qcStatements (ETSI EN 319 412-5)** | |
| &nbsp;&nbsp;&nbsp;&nbsp;**QcCompliance** | `id-etsi-qcs-QcCompliance (0.4.0.1862.1.1)` |
| &nbsp;&nbsp;&nbsp;&nbsp;**QcType** | `id-etsi-qcs-QcType-esign (0.4.0.1862.1.4)` |
| &nbsp;&nbsp;&nbsp;&nbsp;**QcSSCD** | `id-etsi-qcs-QcSSCD (0.4.0.1862.1.5)` |

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

**Αρχείο:** `Revocation_Samples/13_Sample_OCSP_Response_Good.der`

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

**Αρχείο:** `Revocation_Samples/17_Sample_CRL_WithRevocations.pem`

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

**Αρχείο:** `Timestamp_Samples/18_TSA_Token_Sample.tsr` (RFC 3161 Time-Stamp Response)

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
