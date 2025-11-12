# CONFORMITY ASSESSMENT REPORT (CAR)
## Έκθεση Αξιολόγησης Συμμόρφωσης (ΕΑΣ)

**For Conformity Assessment Body (CAB) Completion**

---

**TSP Being Assessed:**  
[LEGAL_NAME_GR] / [LEGAL_NAME_EN]  
ΑΦΜ / Tax ID: [AFM_NUMBER]  
Γ.Ε.Μ.Η. / GEMI: [GEMI_NUMBER]

**CAB Performing Assessment:**  
[CAB_NAME]  
[CAB_ADDRESS]  
Accreditation Number: [CAB_ACCREDITATION_NUMBER]  
Accredited by: [ACCREDITATION_BODY] (EA Member)

**Report Date:** [CAR_ISSUE_DATE]  
**Audit Period:** [AUDIT_START_DATE] to [AUDIT_END_DATE]  
**Report Version:** 1.0  
**Classification:** Confidential - For EETT Submission

---

## EXECUTIVE SUMMARY

**Purpose of Assessment:**  
This Conformity Assessment Report (CAR) has been prepared in accordance with:
- **EETT Regulation Article 10** – Requirements for Conformity Assessment Reports
- **Regulation (EU) No 910/2014 (eIDAS)** – Article 20, 24
- **Regulation (EC) No 765/2008** – Accreditation requirements for CABs

**Services Assessed:**  
☐ Qualified Electronic Signatures (QES) – Natural Persons  
☐ Qualified Electronic Signatures (QES) – Legal Persons  
☐ Qualified Electronic Seals (QSeal)  
☐ Qualified Time-Stamping (QTS)  
☐ Qualified Validation Service  
☐ Qualified Preservation Service  
☐ Qualified Electronic Delivery (REM)  
☐ Qualified Website Authentication Certificates (QWAC)

**Assessment Conclusion:**  
☐ **CONFORMITY ACHIEVED** – TSP meets all requirements for qualified trust services  
☐ **CONDITIONAL CONFORMITY** – Minor non-conformities to be resolved within [X] days  
☐ **NON-CONFORMITY** – Major issues prevent qualification (detailed in Section 18)

**CAB Recommendation to EETT:**  
☐ Approve qualified status for services listed above  
☐ Approve with conditions (specify corrective actions and timeline)  
☐ Reject application (specify reasons)

---

## TABLE OF CONTENTS

1. CAB Identification & Accreditation (Article 10.1)
2. TSP Identification (Article 10.2)
3. Service Type Identifiers (Article 10.3, 10.6)
4. Service Descriptions (Article 10.4)
5. Public Keys & Certificates (Article 10.6)
6. Service Digital Identity (Article 10.6)
7. Certification Architecture (Article 10.4, 10.7)
8. Third-Party Dependencies (Article 10.5)
9. Audit Methodology & Period (Article 10.7-10.8)
10. Conformity to eIDAS Article 24(1)(a)-(h) (Article 10.11)
11. Service-Specific Conformity (Article 10.12-10.17)
12. Security Measures Assessment (Article 10.11)
13. Incident Management Review (Article 10.11)
14. Business Continuity Validation (Article 10.11)
15. Recordkeeping Verification (Article 10.11)
16. Personnel Competence Assessment (Article 10.11)
17. Non-Conformities & Corrective Actions (Article 10.18)
18. Recommendations (Article 10.19)
19. CAB Attestation & Signature (Article 10.1)

Annex A: Compliance Traceability Matrix  
Annex B: Evidence Register  
Annex C: Interview Log  
Annex D: Site Inspection Report  
Annex E: Technical Test Results

---

## 1. CAB IDENTIFICATION & ACCREDITATION
*Article 10.1: The identification and accreditation details of the conformity assessment body*

### 1.1 CAB Legal Information

| Field | Details |
|-------|---------|
| **Legal Name** | [CAB_LEGAL_NAME] |
| **Trading Name (if different)** | [CAB_TRADING_NAME] |
| **Registered Address** | [CAB_ADDRESS] |
| **Country** | [CAB_COUNTRY] |
| **Website** | [CAB_WEBSITE] |
| **Contact Person** | [CAB_CONTACT_NAME], [CAB_CONTACT_EMAIL], [CAB_CONTACT_PHONE] |

### 1.2 Accreditation Status

**Accredited By:**  
[ACCREDITATION_BODY_NAME] (National Accreditation Body)  
Member of EA (European co-operation for Accreditation): ☐ Yes ☐ No  
EA Member Number: [EA_MEMBER_NUMBER]

**Accreditation Details:**
- **Accreditation Number:** [CAB_ACCREDITATION_NUMBER]
- **Accreditation Standard:** ISO/IEC 17065:2012 (Conformity assessment – Requirements for bodies certifying products, processes and services)
- **Accreditation Scope:** Regulation (EU) No 910/2014 (eIDAS), per Regulation (EC) No 765/2008
- **Accreditation Date:** [ACCREDITATION_ISSUE_DATE]
- **Accreditation Expiry:** [ACCREDITATION_EXPIRY_DATE]
- **Last Surveillance:** [LAST_SURVEILLANCE_DATE]

**Accreditation Certificate Attached:** ☐ Yes (see Annex [X])

### 1.3 CAB Competence for eIDAS Assessments

**Technical Areas Covered by Accreditation:**
- ☐ Public Key Infrastructure (PKI)
- ☐ Cryptographic systems (HSM, QSCD)
- ☐ Information security (ISO 27001)
- ☐ Trust services (eIDAS Regulation)
- ☐ Specific service types assessed: [QES, QSeal, QTS, Validation, Preservation, REM, QWAC]

**Lead Auditor:**  
Name: [LEAD_AUDITOR_NAME]  
Qualifications: [DEGREES, CERTIFICATIONS] (e.g., ISO 27001 Lead Auditor, CISA, PKI specialist)  
Experience: [YEARS] years in trust service auditing, [NUMBER] eIDAS assessments completed

**Audit Team:**
| Name | Role | Qualifications | Experience (years) |
|------|------|----------------|-------------------|
| [AUDITOR_1] | Lead Auditor | [QUALS] | [YEARS] |
| [AUDITOR_2] | Technical Specialist (PKI) | [QUALS] | [YEARS] |
| [AUDITOR_3] | Security Specialist | [QUALS] | [YEARS] |

**Independence Declaration:**  
The audit team declares no conflicts of interest with [LEGAL_NAME_GR]. No consultancy or other services have been provided to the TSP in the past 2 years that would compromise independence.

---

## 2. TSP IDENTIFICATION
*Article 10.2: The identification of the trust service provider*

### 2.1 Legal Entity Information

| Field | Details |
|-------|---------|
| **Legal Name (Greek)** | [LEGAL_NAME_GR] |
| **Legal Name (English)** | [LEGAL_NAME_EN] |
| **Legal Form** | [LEGAL_FORM] (e.g., Ανώνυμη Εταιρεία / S.A.) |
| **Country of Establishment** | Greece (Ελλάδα) |
| **Γ.Ε.Μ.Η. Number** | [GEMI_NUMBER] |
| **ΑΦΜ (Tax ID)** | [AFM_NUMBER] |
| **Registered Address** | [REGISTERED_ADDRESS] |
| **Operational Address (if different)** | [OPERATIONAL_ADDRESS] |
| **Website** | [WEBSITE_URL] |

### 2.2 Contact Information

**EETT Liaison Officer:**  
Name: [CONTACT_PERSON_NAME]  
Title: [CONTACT_PERSON_TITLE]  
Email: [CONTACT_EMAIL]  
Phone: [CONTACT_PHONE]

**Public Contact (for NTL):**  
Customer Service: [PUBLIC_EMAIL], [PUBLIC_PHONE]  
Revocation Hotline (24×7): [REVOCATION_HOTLINE]  
Incident Reporting: [INCIDENT_EMAIL]

**Data Protection Officer:**  
Name: [DPO_NAME]  
Email: [DPO_EMAIL]  
Phone: [DPO_PHONE]

### 2.3 Legal Representatives

| Name | Position | Authority |
|------|----------|-----------|
| [DIRECTOR_1_NAME] | [POSITION_1] | Authorized to sign on behalf of TSP |
| [DIRECTOR_2_NAME] | [POSITION_2] | Authorized to sign on behalf of TSP |

### 2.4 EETT Registration

**EETT Registry Status:**  
☐ Registered (Number: [EETT_REG_NUMBER], Date: [EETT_REG_DATE])  
☐ Application pending  
☐ Not yet registered

---

## 3. SERVICE TYPE IDENTIFIERS
*Article 10.3, 10.6: Service type identifiers as specified in the applicable implementing acts*

All service type identifiers conform to **ETSI TS 119 612** (Trusted Lists) and **Commission Implementing Decision (EU) 2015/1505**.

### 3.1 Qualified Services with OIDs

| Service Type | Service Type Identifier (OID) | Standard Reference |
|--------------|-------------------------------|-------------------|
| **QC for eSig (Natural Persons)** | 0.4.0.194112.1.0 | ETSI TS 119 612 § 5.5.1.1 |
| **QC for eSig (Legal Persons)** | 0.4.0.194112.1.1 | ETSI TS 119 612 § 5.5.1.2 |
| **QC for eSig with QSCD** | 0.4.0.194112.1.2 | ETSI TS 119 612 § 5.5.1.3 |
| **QC for eSeal** | 0.4.0.194112.1.3 | ETSI TS 119 612 § 5.5.1.4 |
| **QC for eSeal with QSCD** | 0.4.0.194112.1.4 | ETSI TS 119 612 § 5.5.1.5 |
| **Qualified Time-Stamp (QTS)** | 0.4.0.194112.1.5 | ETSI TS 119 612 § 5.5.1.6 |
| **Qualified Validation Service** | 0.4.0.194112.1.6 | ETSI TS 119 612 § 5.5.1.7 |
| **Qualified Preservation Service** | 0.4.0.194112.1.7 | ETSI TS 119 612 § 5.5.1.8 |
| **Qualified eDelivery (REM)** | 0.4.0.194112.1.8 | ETSI TS 119 612 § 5.5.1.9 |
| **QC for Web Auth (QWAC)** | 0.4.0.194112.1.9 | ETSI TS 119 612 § 5.5.1.10 |

**CAB Assessment:**  
☐ Service type identifiers correctly assigned  
☐ OIDs will be published in National Trust List (NTL)  
☐ Certificates include appropriate QCStatements (id-etsi-qcs-QcCompliance, id-etsi-qcs-QcType, etc.)

---

## 4. SERVICE DESCRIPTIONS
*Article 10.4: A description of the trust services for which the conformity assessment has been carried out*

### 4.1 Qualified Electronic Signatures (QES)

**Service Name:** [QES_SERVICE_NAME_GR] / [QES_SERVICE_NAME_EN]

**Target Users:**  
☐ Natural persons (individuals)  
☐ Legal persons (organizations, companies)

**Identification Method:**
- Face-to-face: ☐ Yes (RA offices at [RA_LOCATIONS])
- Video identification: ☐ Yes (eIDAS-compliant per ETSI EN 319 411-2)
- Identity documents accepted: Greek ID, Passport, Residence Permit

**Certificate Lifecycle:**
- Validity period: [CERT_VALIDITY_PERIOD] months (max 3 years per eIDAS)
- Issuance time: [ISSUANCE_SLA] hours from verified application
- Renewal: [RENEWAL_PROCESS]

**Key Generation:**
- ☐ On QSCD provided by TSP (model: [QSCD_MODEL])
- ☐ On QSCD provided by subscriber (certified per eIDAS Annex II)
- ☐ Server-side with QSCD (remote signing, model: [SERVER_QSCD_MODEL])

**Signature Creation:**
- ☐ Local (subscriber's QSCD)
- ☐ Remote (server-side QSCD with sole control mechanisms)
  - Sole control method: [2FA, biometric, PIN, etc.]
  - QSCD provider: [QSCD_PROVIDER_NAME]
  - QSCD certification: [QSCD_CERT_NUMBER]

**Compliance Standards:**
- eIDAS Article 28, Annex I, Annex II (if QSCD), Annex IV
- ETSI EN 319 411-1 (General), 319 411-2 (QCP-n, QCP-l, QCP-n-qscd, QCP-l-qscd)
- ETSI EN 319 412-2 (Natural persons), 319 412-3 (Legal persons)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor non-conformities (see Section 17)  
☐ Major non-conformities (see Section 17)

---

### 4.2 Qualified Electronic Seals (QSeal)

**Service Name:** [QSEAL_SERVICE_NAME_GR] / [QSEAL_SERVICE_NAME_EN]

**Target Users:** Legal persons only (companies, government entities, associations)

**Organization Verification:**
- Business registry check: ☐ Yes (Γ.Ε.Μ.Η. for Greek entities, equivalent for foreign)
- Authorized representative verification: ☐ Board resolution, power of attorney
- Beneficial ownership check (AML): ☐ Yes (per Greek AML legislation)

**Certificate Lifecycle:**
- Validity period: [SEAL_VALIDITY_PERIOD] months (typically 12-36 months)
- Issuance time: [SEAL_ISSUANCE_SLA] hours

**Key Generation & Protection:**
- ☐ HSM-protected (model: [HSM_MODEL])
- ☐ Remote seal creation service (server-side QSCD)
- ☐ On-premises QSCD at customer location

**Compliance Standards:**
- eIDAS Article 38, Annex III, Annex II (if QSCD)
- ETSI EN 319 411-1, 319 411-2
- ETSI EN 319 412-4 (QSeal certificates)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor/Major non-conformities (see Section 17)

---

### 4.3 Qualified Time-Stamping (QTS)

**Service Name:** [QTS_SERVICE_NAME_GR] / [QTS_SERVICE_NAME_EN]

**Time-Stamp Authority (TSA):**
- TSA URL: [TSA_URL]
- Protocol: RFC 3161 (Time-Stamp Protocol)
- Supported hash algorithms: SHA-256, SHA-384, SHA-512

**Time Source:**
- Primary: [TIME_SOURCE_1] (e.g., GPS, NTP from national time institute)
- Backup: [TIME_SOURCE_2]
- Accuracy: ± [ACCURACY] seconds (typically ±1 second per ETSI EN 319 421)
- Traceability: ☐ UTC via [TRACEABLE_SOURCE]

**TSA Key:**
- Algorithm: [TSA_KEY_ALGORITHM] (e.g., RSA-3072, ECDSA P-384)
- Storage: HSM-protected
- Validity: [TSA_KEY_VALIDITY] years
- Rotation: [TSA_KEY_ROTATION_PERIOD]

**Capacity:**
- Current throughput: [CURRENT_TPS] timestamps/second
- Peak capacity: [PEAK_TPS] timestamps/second
- Availability SLA: [TSA_SLA]%

**Compliance Standards:**
- eIDAS Article 42
- ETSI EN 319 421 (Policy & security requirements)
- ETSI EN 319 422 (Time-stamp token profiles)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor/Major non-conformities

---

### 4.4 Qualified Validation Service

**Service Name:** [VALIDATION_SERVICE_NAME_GR] / [VALIDATION_SERVICE_NAME_EN]

**Validation Scope:**
- ☐ QES signatures (XAdES, CAdES, PAdES)
- ☐ QSeal (XAdES, CAdES, PAdES)
- ☐ Timestamps
- ☐ AdES-A (Archival signatures with LTA)

**Validation Levels:**
- ☐ Basic validation (certificate validity, signature integrity)
- ☐ Long-term validation (includes revocation history)
- ☐ Archival validation (LTA, re-timestamping chains)

**Validation Report:**
- Format: ETSI EN 319 102-2 compliant
- Output: XML, JSON, PDF

**Compliance Standards:**
- eIDAS Article 33
- ETSI EN 319 102-1 (Validation procedures)
- ETSI EN 319 102-2 (Validation report format)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor/Major non-conformities

---

### 4.5 Qualified Preservation Service

**Service Name:** [PRESERVATION_SERVICE_NAME_GR] / [PRESERVATION_SERVICE_NAME_EN]

**Preservation Scope:**
- ☐ Qualified signatures (long-term validity beyond algorithm/certificate lifetime)
- ☐ Qualified seals
- ☐ Evidence records (contracts, legal documents)

**Preservation Method:**
- Format: ASiC-E containers with LTA (Long-Term Archival) signatures
- Re-timestamping strategy: [RE_TIMESTAMP_STRATEGY] (e.g., every 5 years or before timestamp expires)
- Algorithm migration: [CRYPTO_AGILITY_PLAN]

**Storage:**
- Retention period: [RETENTION_YEARS] years minimum (customer-selectable)
- Redundancy: [REDUNDANCY_LEVEL] (e.g., 3 copies across 2 geographic locations)
- Integrity monitoring: [INTEGRITY_CHECK_FREQUENCY]

**Compliance Standards:**
- eIDAS Article 34
- ETSI EN 319 510 (Preservation service policy & security)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor/Major non-conformities

---

### 4.6 Qualified eDelivery (REM)

**Service Name:** [EDELIVERY_SERVICE_NAME_GR] / [EDELIVERY_SERVICE_NAME_EN]

**REM Service Type:**
- ☐ REM for email (integration with SMTP)
- ☐ REM for messages (web portal, API)
- ☐ Hybrid

**Evidence Types Issued:**
- ☐ Submission evidence (sender sent message)
- ☐ Relay evidence (REM provider accepted message)
- ☐ Delivery evidence (recipient received message)
- ☐ Acceptance/Rejection evidence (recipient action)

**Compliance Standards:**
- eIDAS Article 44
- ETSI EN 319 521 (Policy & security for REM services)
- ETSI EN 319 522-1/-2 (REM evidence formats)
- ETSI EN 319 532-1/-4 (REM protocols)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor/Major non-conformities

---

### 4.7 Qualified Website Authentication Certificates (QWAC)

**Service Name:** [QWAC_SERVICE_NAME_GR] / [QWAC_SERVICE_NAME_EN]

**Certificate Types:**
- ☐ Domain Validation (DV) – verifies domain control only
- ☐ Organization Validation (OV) – verifies organization identity

**Domain Verification Methods:**
- ☐ DNS TXT record
- ☐ HTTP file upload
- ☐ Email to admin@domain
- ☐ Other: [SPECIFY]

**Organization Verification:**
- Business registry: [VERIFICATION_SOURCES]
- Identity verification of requester: [METHODS]

**Certificate Features:**
- Validity: [QWAC_VALIDITY_PERIOD] months (max 1-2 years typical)
- Wildcard support: ☐ Yes ☐ No
- Multi-domain (SAN): ☐ Yes (max [SAN_COUNT] domains) ☐ No

**Compliance Standards:**
- eIDAS Article 45
- ETSI EN 319 411-1
- ETSI EN 319 412-5 (QWAC profiles)

**CAB Findings:**  
☐ Conformity achieved  
☐ Minor/Major non-conformities

---

## 5. PUBLIC KEYS & CERTIFICATES
*Article 10.6: The public key or the certificate related to the signature or seal creation data which has been used by the conformity assessment body to sign or seal this conformity assessment report*

**Note:** This section contains the public keys/certificates of the CAs operated by the TSP, which will be used to issue qualified certificates.

### 5.1 Root CA Certificate

**Subject DN:** [ROOT_CA_SUBJECT_DN]  
Example: `CN=Hellenic Trust Root CA, O=[LEGAL_NAME_EN], C=GR`

**Public Key Algorithm:** [ROOT_KEY_ALGORITHM]  
**Key Size:** [ROOT_KEY_SIZE] bits  
**Signature Algorithm:** [ROOT_SIGNATURE_ALGORITHM]  
**Serial Number:** [ROOT_SERIAL_NUMBER]  
**Validity:**  
- Not Before: [ROOT_NOT_BEFORE]  
- Not After: [ROOT_NOT_AFTER]  
**SHA-256 Fingerprint:** [ROOT_SHA256_FINGERPRINT]

**Certificate (PEM format):**
```
-----BEGIN CERTIFICATE-----
[BASE64_ENCODED_ROOT_CERTIFICATE]
-----END CERTIFICATE-----
```

**Storage:** Offline, air-gapped HSM [HSM_MODEL], FIPS 140-2 Level [LEVEL]

---

### 5.2 Issuing CA Certificates

#### Issuing CA for QES/QSeal (Natural & Legal Persons)

**Subject DN:** [ISSUING_CA_1_SUBJECT_DN]  
Example: `CN=Hellenic Trust QES CA, O=[LEGAL_NAME_EN], C=GR`

**Public Key Algorithm:** [ISSUING_KEY_ALGORITHM]  
**Key Size:** [ISSUING_KEY_SIZE] bits  
**Validity:** [ISSUING_VALIDITY_YEARS] years  
**Serial Number:** [ISSUING_SERIAL_NUMBER]  
**SHA-256 Fingerprint:** [ISSUING_SHA256_FINGERPRINT]

**Certificate (PEM format):**
```
-----BEGIN CERTIFICATE-----
[BASE64_ENCODED_ISSUING_CERTIFICATE]
-----END CERTIFICATE-----
```

**Storage:** Online, HA HSM cluster (primary + backup DCs)

---

#### TSA CA for Qualified Time-Stamps

**Subject DN:** [TSA_CA_SUBJECT_DN]  
**Public Key Algorithm:** [TSA_KEY_ALGORITHM]  
**Validity:** [TSA_CA_VALIDITY] years  
**Serial Number:** [TSA_CA_SERIAL]  
**SHA-256 Fingerprint:** [TSA_CA_FINGERPRINT]

**Certificate (PEM):**
```
-----BEGIN CERTIFICATE-----
[BASE64_ENCODED_TSA_CA_CERTIFICATE]
-----END CERTIFICATE-----
```

---

### 5.3 OCSP Responder Certificates

**Subject DN:** [OCSP_SUBJECT_DN]  
**Delegation:** Signed by [ISSUING_CA_NAME]  
**Validity:** [OCSP_VALIDITY] months (typically 12 months)  
**id-kp-OCSPSigning Extended Key Usage:** ☐ Present

---

### 5.4 CAB Signature on this CAR

**CAB Signing Certificate:**  
This Conformity Assessment Report is signed/sealed by the CAB using:

**Subject DN:** [CAB_SIGNING_CERT_SUBJECT_DN]  
**Issuer:** [CAB_SIGNING_CERT_ISSUER]  
**Serial Number:** [CAB_SIGNING_CERT_SERIAL]  
**Validity:** [CAB_SIGNING_CERT_NOT_BEFORE] to [CAB_SIGNING_CERT_NOT_AFTER]  
**SHA-256 Fingerprint:** [CAB_SIGNING_CERT_FINGERPRINT]

**Signature/Seal Applied:** ☐ Yes (PAdES-LTA signature in PDF version of this CAR)

---

## 6. SERVICE DIGITAL IDENTITY
*Article 10.6: The service digital identity related to the qualified trust service*

Per ETSI TS 119 612, the "Service Digital Identity" is the X.509 Subject Key Identifier (SKI) or the certificate itself that uniquely identifies each qualified service in the Trust List.

### 6.1 Service Digital Identities for NTL Publication

| Service Type | CA Certificate | Subject Key Identifier (SKI) |
|--------------|----------------|------------------------------|
| QES (Natural) | Issuing CA 1 | [SKI_HEX_1] |
| QES (Legal) | Issuing CA 1 | [SKI_HEX_1] |
| QSeal | Issuing CA 1 or CA 2 | [SKI_HEX_2] |
| QTS | TSA CA | [SKI_HEX_3] |
| Validation | (Service, no unique cert) | N/A or validation service endpoint cert SKI |
| Preservation | (Service) | [SKI_HEX_4] |
| REM | REM CA | [SKI_HEX_5] |
| QWAC | QWAC CA | [SKI_HEX_6] |

**CAB Verification:**  
☐ All service digital identities correctly identified  
☐ SKIs extracted from certificates match  
☐ Certificates will be published in NTL

---

## 7. CERTIFICATION ARCHITECTURE
*Article 10.4, 10.7: Certification or authentication architecture and procedures, including key management and generation*

### 7.1 PKI Hierarchy

```
[LEGAL_NAME_EN] Root CA (Offline)
├── Issuing CA 1 - QES/QSeal (Natural & Legal Persons)
│   ├── OCSP Responder 1A (Primary DC)
│   └── OCSP Responder 1B (Backup DC)
├── Issuing CA 2 - Additional services (if applicable)
├── TSA CA - Qualified Time-Stamping
│   └── TSA Signing Key (HSM-protected)
├── QWAC CA - Website Authentication (if applicable)
└── REM CA - eDelivery (if applicable)
```

### 7.2 Root CA Operations

**Root CA Characteristics:**
- **Offline/Air-gapped:** ☐ Yes – physically isolated, no network connection
- **Location:** [ROOT_CA_LOCATION] (secure vault, Tier IV facility)
- **HSM:** [ROOT_HSM_MODEL], FIPS 140-2 Level [LEVEL], Common Criteria EAL [EAL_LEVEL]
- **Key Generation:** On-HSM, ceremony witnessed, video-recorded
- **Key Ceremony Participants:** [NUMBER] custodians (M-of-N: [M]-of-[N])
- **Key Backup:** M-of-N split smart cards, geographically distributed to [LOCATIONS]
- **Root Certificate Lifetime:** [ROOT_LIFETIME] years
- **CRL Issuance Frequency:** [ROOT_CRL_FREQUENCY] (e.g., monthly or on-demand for revocations)

**CAB Audit Activities:**
- ☐ Witnessed key ceremony (or reviewed video/log of previous ceremony)
- ☐ Verified M-of-N key splitting
- ☐ Confirmed geographic distribution of key custodians
- ☐ Tested key recovery procedure (tabletop or actual)
- ☐ Verified air-gap (no network ports, WiFi disabled)

---

### 7.3 Issuing CA Operations

**Issuing CA Characteristics:**
- **Online:** ☐ Yes – operational 24×7
- **High Availability:** ☐ Active-Active across 2 DCs ☐ Active-Passive
- **HSM Cluster:** [ISSUING_HSM_COUNT] HSMs (primary: [PRIMARY_COUNT], backup: [BACKUP_COUNT])
- **Load Balancing:** [LOAD_BALANCER_TYPE]
- **Key Generation:** On-HSM, by Root CA in offline ceremony
- **Certificate Lifetime:** [ISSUING_LIFETIME] years
- **Automatic Renewal:** ☐ Yes, [RENEWAL_WINDOW] months before expiry

**Certificate Issuance Process:**
1. **Application Receipt:** Via web portal, RA in-person, API
2. **Identity Verification:** RA performs per TSPS (face-to-face or video ident)
3. **Authorization:** RA approves application, enters credentials
4. **Key Generation:**
   - ☐ Subscriber generates on QSCD, submits CSR (Certificate Signing Request)
   - ☐ TSP generates on server-side QSCD (remote signing), sole control enforced
5. **Certificate Generation:** Issuing CA signs certificate, includes QCStatements
6. **Quality Checks:** Automated (profile compliance, no duplicate serial numbers)
7. **Publication:** Certificate delivered to subscriber, published to repository (if public)
8. **OCSP/CRL:** Status "good" immediately available

**Issuance Time SLA:** [ISSUANCE_SLA] hours from verified application

**CAB Findings:**
- ☐ Issuance process audited, complies with ETSI EN 319 411-2
- ☐ Witnessed [X] sample enrollments (face-to-face and video ident)
- ☐ Verified RA operator training records and authorization logs
- ☐ Tested automated quality checks (attempted invalid CSR, verified rejection)

---

### 7.4 Key Management Procedures

**Key Generation:**
- **Entropy Source:** HSM-native FIPS 140-2 compliant RNG
- **Algorithm Selection:** Per ETSI TS 119 312 (approved crypto suites)
- **Key Backup:** Root & Issuing CA keys backed up via M-of-N splitting
- **Subscriber Keys (QSCD):** Generated on device, never exported (sole control)

**Key Storage:**
- **HSM Partitions:** Dedicated partition per CA, FIPS-approved authentication
- **Physical Security:** HSMs located in caged racks, Tier III+ DC, biometric access
- **Logical Access:** Role-based access control (RBAC), dual control for sensitive operations
- **Tamper Detection:** HSM will zeroize keys if physical tampering detected

**Key Usage:**
- **Signing Operations:** All signatures generated within HSM boundary
- **Private Key Exportability:** ☐ NEVER (except encrypted backup for disaster recovery)
- **Key Activation:** Requires [M] of [N] custodians present (for Root CA)

**Key Destruction:**
- **End-of-Life:** CA keys destroyed [DESTRUCTION_TIMELINE] after last issued certificate expires
- **Method:** HSM zeroization per FIPS 140-2, witnessed, logged
- **Backup Destruction:** Smart cards physically destroyed (shredded), logged

**CAB Findings:**
- ☐ Key management procedures documented in TSPS
- ☐ Verified HSM configuration (partitions, authentication, no export capability)
- ☐ Witnessed key ceremony (or reviewed comprehensive ceremony log)
- ☐ Tested M-of-N activation (requested test signature from Root CA with quorum)

---

### 7.5 Registration Authority (RA) Architecture

**RA Locations:**
1. [RA_LOCATION_1] (Primary, in-person enrollments)
2. [RA_LOCATION_2] (Secondary)
3. Remote RA (video identification, ETSI EN 319 411-2 compliant)

**RA Operators:**
- **Count:** [RA_OPERATOR_COUNT] trained operators
- **Training:** [RA_TRAINING_HOURS] hours initial, [RA_REFRESHER_HOURS] hours annual refresher
- **Certification:** ☐ Internal exam passed ☐ External certification
- **Background Checks:** ☐ Completed for all RA operators (criminal record, employment history)

**RA Procedures:**
- **Natural Person Enrollment:**
  1. Subscriber presents government-issued ID (Greek ID card, passport, residence permit)
  2. RA operator verifies ID authenticity (UV features, MRZ, biometric photo match)
  3. RA captures: ID photo, ID data (name, DOB, ID number, nationality)
  4. Subscriber signs enrollment form (consent, terms acceptance)
  5. RA approves in system, triggers certificate issuance
- **Legal Person Enrollment:**
  1. Authorized representative presents company docs (Γ.Ε.Μ.Η. extract, ΑΦΜ, board resolution)
  2. RA verifies company registration (online check via Γ.Ε.Μ.Η. portal)
  3. RA verifies representative authority (board resolution, power of attorney)
  4. RA performs natural person ident on representative
  5. Approval & issuance
- **Video Identification (Remote RA):**
  1. Subscriber initiates video session via secure platform
  2. RA operator verifies subscriber via live video (lighting, no recordings)
  3. Subscriber shows ID to camera (front, back, tilted for hologram verification)
  4. Subscriber performs liveness check (random movements, reads random text)
  5. Session recorded (encrypted, retained per GDPR), RA approves

**CAB Findings:**
- ☐ Audited [X] enrollments (in-person at RA office)
- ☐ Witnessed [Y] video identification sessions
- ☐ Reviewed RA operator training records, all current
- ☐ Tested RA system authorization controls (attempted unauthorized approval, verified rejection)
- ☐ RA procedures comply with ETSI EN 319 411-2 § 6.3

---

### 7.6 Revocation & Status Services

**Revocation Acceptance (24×7 per EETT Article 11):**
- **Phone Hotline:** [REVOCATION_HOTLINE]
  - Verified during audit: ☐ Called hotline at [AUDIT_TIME], answered within [RESPONSE_TIME] seconds
- **Web Portal:** [REVOCATION_PORTAL_URL]
  - Tested: ☐ Submitted test revocation, processed in [PROCESSING_TIME] minutes
- **Email:** [REVOCATION_EMAIL]
- **In-Person:** At RA offices

**Revocation Processing:**
- **Target Time:** Revoked status reflected in OCSP within [REVOCATION_SLA] (EETT requires reasonable time, TSP commits to [X] hours)
- **Tested:** ☐ CAB submitted revocation request, monitored OCSP response, confirmed status change within SLA

**OCSP Infrastructure:**
- **Responder Count:** [OCSP_COUNT] (primary DC: [PRIMARY_OCSP], backup DC: [BACKUP_OCSP])
- **Load Balancing:** DNS round-robin + hardware load balancer
- **Response Time:** <200ms (95th percentile), tested: [ACTUAL_P95] ms
- **Availability:** [OCSP_AVAILABILITY]% measured over [MEASUREMENT_PERIOD]
- **Signing Key Rotation:** [OCSP_KEY_ROTATION] (e.g., annually)

**CRL Infrastructure:**
- **Full CRL Frequency:** Daily minimum (EETT requirement), actual: [ACTUAL_CRL_FREQUENCY]
- **Delta CRL:** ☐ Supported, frequency: [DELTA_CRL_FREQUENCY]
- **CRL Size:** Current: [CRL_SIZE_MB] MB, max before partition: [CRL_MAX_SIZE] MB
- **Distribution:** HTTP ([CRL_URL_HTTP]), HTTPS ([CRL_URL_HTTPS]), LDAP (☐ Yes ☐ No)
- **nextUpdate Field:** ☐ Always present, set to [NEXT_UPDATE_INTERVAL] after thisUpdate

**CAB Findings:**
- ☐ 24×7 revocation tested and confirmed
- ☐ OCSP response time within specification
- ☐ CRL published daily minimum, verified download and signature
- ☐ Revocation reflected in CRL within [TIME] of OCSP update
- ☐ Compliant with EETT Article 11

---

## 8. THIRD-PARTY DEPENDENCIES
*Article 10.5: All third parties, and third countries where applicable, involved in the provision of the qualified trust service, as well as a description of the respective roles*

### 8.1 Third-Party Service Providers

| Third Party | Role | Services Provided | Location/Country | Sub-Processor Agreement | CAB Review |
|-------------|------|-------------------|------------------|------------------------|------------|
| [DATACENTER_PROVIDER] | Colocation | Physical hosting for HSMs, servers | [DC_LOCATION], Greece | ☐ Signed | ☐ Reviewed |
| [HSM_VENDOR] | HSM Supplier | Hardware Security Modules, firmware updates, support | [HSM_VENDOR_COUNTRY] | ☐ Support contract | ☐ Reviewed |
| [QSCD_PROVIDER] | QSCD Supplier (if remote signing) | Server-side QSCD for remote signing/sealing | [QSCD_COUNTRY] | ☐ eIDAS-compliant | ☐ Reviewed, QSCD cert verified |
| [TIME_SOURCE_PROVIDER] | Time Source | UTC-traceable time for TSA | [TIME_SOURCE_COUNTRY] | ☐ SLA in place | ☐ Reviewed |
| [CLOUD_PROVIDER] | Cloud Services (if any) | Backup storage, disaster recovery | [CLOUD_REGION] (EEA-compliant) | ☐ DPA signed (GDPR Art. 28) | ☐ Reviewed |
| [ARCHIVE_CUSTODIAN] | Archive Custodian (termination scenario) | Long-term record storage if TSP terminates | Greece | ☐ Custodian agreement | ☐ Reviewed |
| [INSURANCE_COMPANY] | Insurer | Professional liability insurance | [INSURER_COUNTRY] | ☐ Policy in force | ☐ Reviewed policy |

### 8.2 Third-Country Involvement

**Data Processing Outside EEA:**  
☐ None – all data processing within EEA  
☐ Yes – details below:

| Data Type | Third Country | Legal Basis (GDPR) | Safeguards |
|-----------|---------------|-------------------|------------|
| [DATA_TYPE] | [COUNTRY] | Adequacy decision / Standard Contractual Clauses | [SAFEGUARDS] |

**CAB Assessment:**  
☐ All third-party dependencies reviewed  
☐ Sub-processor agreements in place and GDPR-compliant  
☐ No third-country data transfers OR adequately safeguarded  
☐ QSCD provider (if applicable) holds valid eIDAS Annex II certification  
☐ Critical third parties (HSM, QSCD, time source) have business continuity plans

---

## 9. AUDIT METHODOLOGY & PERIOD
*Article 10.7-10.8: The period covered by the conformity assessment and the methodology used*

### 9.1 Audit Period

**Audit Type:**  
☐ Initial Assessment (first-time qualification)  
☐ Surveillance Audit (annual)  
☐ Re-assessment (3-year cycle)

**Audit Dates:**  
- **Planning Meeting:** [PLANNING_DATE]  
- **Document Review Start:** [DOC_REVIEW_START]  
- **Document Review End:** [DOC_REVIEW_END]  
- **On-Site Audit Days:** [ONSITE_START] to [ONSITE_END] ([TOTAL_DAYS] days)  
- **Follow-Up (if needed):** [FOLLOWUP_DATE]  
- **CAR Issuance:** [CAR_ISSUE_DATE]

**Total Audit Hours:** [TOTAL_AUDIT_HOURS] hours  
**Sites Audited:**  
- [SITE_1] (Headquarters, RA operations)  
- [SITE_2] (Primary Data Center)  
- [SITE_3] (Backup Data Center)  
- Remote audit components: [REMOTE_AUDIT_DETAILS]

---

### 9.2 Audit Methodology

**Standards & Criteria Applied:**
1. **eIDAS Regulation (EU) No 910/2014**
   - Article 24 (Requirements for qualified TSPs) – all sub-paragraphs (a)-(h)
   - Service-specific articles: 28 (QES), 38 (QSeal), 42 (QTS), 33 (Validation), 34 (Preservation), 44 (REM), 45 (QWAC)
   - Annexes: I-IV (certificate content, QSCD requirements, validation/preservation requirements)
   
2. **EETT Regulation**
   - Articles 3-12 (all applicable sections)
   - Annexes 1-5 (technical requirements, incident classification, termination planning)

3. **ETSI Standards (for interoperability & best practice)**
   - EN 319 401 (General TSP policy requirements)
   - EN 319 403 (TSP information security)
   - EN 319 411-1 (Policy requirements for CAs – general)
   - EN 319 411-2 (Policy requirements for CAs – qualified certificates)
   - EN 319 412-2/-3/-4/-5 (Certificate profiles)
   - EN 319 421, 422 (Time-stamping)
   - EN 319 102-1/-2 (Validation)
   - EN 319 510 (Preservation)
   - EN 319 521/522/532 (eDelivery/REM)
   - TS 119 312 (Cryptographic suites)

4. **Supporting Standards**
   - ISO/IEC 27001:2013 (if TSP certified)
   - FIPS 140-2 (HSM compliance)
   - Common Criteria (QSCD compliance)

**Audit Techniques:**
1. **Document Review** (pre-audit, 40 hours)
   - TSP Policy, TSPS, CP/CPS
   - Risk assessment, incident response plan
   - Termination plan
   - End-user agreements
   - Organizational chart, personnel records (CVs, training logs)
   - Financial documents (balance sheet, insurance policies)
   - CAB identified document gaps → TSP provided additional evidence

2. **On-Site Inspection** ([ONSITE_DAYS] days)
   - Physical security: Data centers, RA offices, HSM vaults
   - Environmental controls: UPS, generators, HVAC, fire suppression
   - Access controls: Biometric entry, visitor logs, CCTV
   - HSM verification: Inspected HSM serial numbers, firmware versions, tamper seals

3. **Interviews** ([INTERVIEW_COUNT] interviews, [INTERVIEW_HOURS] hours total)
   - QTS Manager, CISO, Crypto Officer, DPO
   - RA Operators ([X] operators interviewed)
   - NOC/SOC staff (24×7 revocation hotline)
   - IT administrators (HSM, CA systems)
   - Legal counsel (liability, GDPR compliance)

4. **Technical Testing**
   - **Certificate Issuance:** Witnessed [X] enrollments (natural persons, legal persons, remote)
   - **Revocation:** Submitted test revocation via phone, web, email → verified processing
   - **OCSP/CRL:** Queried test certificates, measured response times
   - **Time-Stamping:** Requested [Y] timestamps, verified accuracy and RFC 3161 compliance
   - **HSM Operations:** Witnessed key ceremony (or reviewed video/log), tested M-of-N quorum
   - **Incident Response:** Triggered test incident, observed escalation, classification, EETT notification draft

5. **Sampling**
   - **Certificates Issued:** Reviewed sample of [SAMPLE_SIZE] certificates from past [SAMPLE_PERIOD]
   - **RA Transactions:** Reviewed [RA_SAMPLE_SIZE] enrollment records, verified identity verification
   - **Revocations:** Reviewed [REVOCATION_SAMPLE_SIZE] revocation requests, checked reason codes, timeliness
   - **Audit Logs:** Sampled [LOG_SAMPLE_SIZE] log entries, verified integrity, completeness

6. **Risk-Based Approach**
   - Higher scrutiny on: HSM key management, RA identity verification, 24×7 operations, GDPR compliance
   - Lower scrutiny on: Routine administrative processes (if well-documented and no prior issues)

---

### 9.3 Evidence Collected

**Evidence Register:** See Annex B (lists all documents reviewed, test results, interview records, photos)

**Key Evidence:**
- TSP Policy v[VERSION], dated [DATE]
- TSPS v[VERSION], dated [DATE]
- Risk Assessment Report dated [DATE]
- ISO 27001 Certificate No. [CERT_NUMBER], expiry [EXPIRY]
- HSM purchase order & delivery receipt (serial numbers: [HSM_SNs])
- Key ceremony log dated [KEY_CEREMONY_DATE], video recording reviewed
- Sample certificates ([SAMPLE_COUNT] certificates analyzed)
- Revocation test logs (phone test at [TIME], web test at [TIME])
- OCSP response time measurements (avg: [AVG_MS] ms, p95: [P95_MS] ms)
- Interview minutes with [INTERVIEWEE_NAMES]

---

## 10. CONFORMITY TO eIDAS ARTICLE 24(1)(a)-(h)
*Article 10.11: Conformity to eIDAS requirements for qualified TSPs*

This section assesses conformity to **eIDAS Article 24(1)** and all sub-requirements **(2)(a)-(h)**.

### 10.1 Article 24(1) General Requirement

**Requirement:**  
"A qualified trust service shall be provided by a qualified trust service provider."

**Assessment:**  
The TSP has applied for qualified status and this CAR assesses whether the applicant meets all requirements of Article 24(2) to be designated as a qualified TSP by EETT.

**Finding:** ☐ Conformity (pending EETT decision) ☐ Non-conformity

---

### 10.2 Article 24(2)(a) – Sufficient Financial Resources

**Requirement:**  
"Employ staff possessing the expert knowledge, experience and qualifications necessary for the services provided, in particular competence at managerial level, expertise in electronic signature technology and familiarity with proper security procedures; such personnel shall apply administrative and management procedures which are adequate and correspond to recognized standards."

**Assessment:**

**Personnel Review:**
| Role | Name | Qualifications | Experience | Training Status |
|------|------|----------------|------------|-----------------|
| QTS Manager | [NAME] | [DEGREES, CERTS] | [X] years PKI | ☐ Current |
| CISO | [NAME] | [CERTS: CISSP, CISM] | [X] years InfoSec | ☐ Current |
| Crypto Officer | [NAME] | [DEGREES] | [X] years Crypto | ☐ Current |
| DPO | [NAME] | Legal + GDPR cert | [X] years DPO | ☐ Current |
| RA Operators (sample) | [X] operators reviewed | RA training cert | Avg [Y] years | ☐ All current |

**CAB Interviews:**  
Conducted interviews with key personnel. Findings:
- QTS Manager demonstrated comprehensive knowledge of eIDAS, EETT regulations, ETSI standards
- Crypto Officer explained HSM operations, key ceremonies, algorithm selection (ETSI TS 119 312 compliance)
- CISO presented risk assessment methodology (ISO 31000), incident classification (EETT Annex 3)
- DPO articulated GDPR compliance measures, data subject rights procedures
- RA Operators correctly described identity verification procedures (face-to-face & video ident per ETSI EN 319 411-2)

**Background Checks:**  
☐ Completed for all personnel with access to cryptographic keys or sensitive data  
☐ Verified: [X] criminal record checks, [Y] employment history verifications

**Training Program:**  
- Initial training: [HOURS] hours (eIDAS, TSPS, security, GDPR)
- Annual refresher: [HOURS] hours
- Training records reviewed: ☐ All personnel current
- Testing: ☐ RA operators passed internal certification exam

**Management Procedures:**  
☐ Documented in TSPS  
☐ ISO 27001 certified (ISMS in place)  
☐ Aligns with ETSI EN 319 401 (General policy requirements for TSPs)

**Finding:**  
☐ **Conformity:** Personnel possess required expertise, training is comprehensive and current, management procedures adequate.  
☐ **Non-conformity:** [Specify issues]

---

### 10.3 Article 24(2)(b) – Reliable Systems & Products

**Requirement:**  
"Make use of trustworthy systems and products which are protected against modification and ensure the technical and cryptographic security of the processes supported by them."

**Assessment:**

**Hardware Security:**
- **HSMs:** [HSM_MODEL]
  - FIPS 140-2 Level: [LEVEL] ☐ Level 2+ (compliant)
  - Common Criteria: EAL [EAL_LEVEL]+ ☐ (if applicable)
  - Tamper detection: ☐ Active (keys zeroized if tampered)
  - Firmware version: [VERSION], latest security patches: ☐ Applied
- **Servers:** Hardened OS (minimal services), intrusion detection, regular patching
- **Network:** Segmented VLANs, firewalls ([FIREWALL_MODEL]), IDS/IPS

**Software Integrity:**
- **CA Software:** [CA_SOFTWARE_NAME] version [VERSION]
  - Code signing: ☐ All deployed software digitally signed
  - Vulnerability management: ☐ Weekly scans, critical patches within 7 days
- **Custom Code:** Internal code review: ☐ Annual, penetration testing: ☐ Annual

**Cryptographic Security:**
- **Algorithms:** Per ETSI TS 119 312
  - Signatures: RSA-2048+ ☐, ECDSA P-256+ ☐, EdDSA ☐
  - Hash: SHA-256+ ☐ (no SHA-1 for new issuance)
- **Key Generation:** HSM-native RNG (FIPS 140-2 compliant)
- **Key Storage:** All private keys in HSM, never exportable (except encrypted backup)
- **Key Backup:** M-of-N split ([M]-of-[N]), geographically distributed

**Physical Protection:**
- **Data Centers:** Tier [III/IV], biometric access, 24×7 CCTV, mantrap entry
- **Environmental:** N+1 UPS, dual generators, FM-200 fire suppression
- **HSM Vault:** Physical cage, dual-control access, visitor logs

**CAB Testing:**
- Attempted to export private key from HSM: ☐ Rejected (as expected)
- Verified firmware integrity (checksums matched vendor-published hashes)
- Inspected physical security at both DCs: ☐ Met Tier III standards
- Reviewed penetration test report dated [PENTEST_DATE]: [X] findings, all remediated

**Finding:**  
☐ **Conformity:** Systems and products are trustworthy, protected against modification, cryptographic security ensured.  
☐ **Non-conformity:** [Specify]

---

### 10.4 Article 24(2)(c) – Security Measures

**Requirement:**  
"Make use of appropriate systems and procedures to ensure that certificates and time-stamps are issued and managed by proper persons and within a secure environment, and to ensure secure management of data such as validation status."

**Assessment:**

**Secure Issuance Environment:**
- **RA Operations:**
  - Secure facilities: ☐ RA offices have controlled access, CCTV
  - RA authentication: ☐ Username/password + 2FA (hardware token)
  - Dual control for high-value certs: ☐ [Specify threshold, e.g., >€100k liability limit]
  - Video ident platform: ☐ Encrypted end-to-end, GDPR-compliant, ETSI EN 319 411-2 approved

- **CA Operations:**
  - HSM access: ☐ Crypto Officer credentials + physical presence at DC
  - Key ceremony: ☐ Minimum [M] custodians, witness (CAB or notary), video recorded
  - Administrative actions: ☐ Logged, dual approval for sensitive ops (e.g., CRL signing key rotation)

**Certificate Management:**
- **Issuance:** Automated quality checks (profile validation, duplicate serial check)
- **Renewal:** [RENEWAL_PROCESS] (subscriber-initiated, automated if no data changes)
- **Revocation:** 24×7 acceptance, immediate processing, OCSP/CRL update within [SLA]
- **Expiry:** Automated notifications to subscribers ([X] days, [Y] days, [Z] days before expiry)

**Time-Stamp Management:**
- **Time Source:** UTC-traceable, [TIME_SOURCE_PROVIDER], accuracy ±[X] seconds
- **TSA Key Protection:** HSM-protected, dedicated partition
- **Token Issuance:** RFC 3161 compliant, includes messageImprint, genTime, accuracy

**Data Management (Validation Status):**
- **OCSP Database:** Real-time status (good, revoked, unknown)
  - Access controls: ☐ Read-only for OCSP responders, write for CA revocation process
  - Backup: ☐ Hourly incremental, daily full, encrypted
- **CRL Repository:** Signed CRLs, tamper-evident (signature verification)
- **Audit Logs:** Immutable (write-once storage or cryptographic log chaining), 7-year retention

**CAB Findings:**
- Witnessed RA enrollment: ☐ Proper person verified (ID check), secure environment (controlled-access room)
- Reviewed HSM access logs: ☐ Only authorized Crypto Officers, all accesses logged
- Tested OCSP database access controls: ☐ Unauthorized update attempt blocked
- Reviewed time source traceability certificate: ☐ Valid, UTC-traceable

**Finding:**  
☐ **Conformity:** Certificates and time-stamps issued/managed by proper persons in secure environments, data securely managed.  
☐ **Non-conformity:** [Specify]

---

### 10.5 Article 24(2)(d) – Liability Coverage

**Requirement:**  
"Have the financial resources necessary to operate in conformity with the requirements laid down in this Regulation and to bear the risk of liability for damages, for example, by obtaining appropriate insurance."

**Assessment:**

**Equity Capital:**
- Paid-up capital: € [SHARE_CAPITAL]
- Reserves: € [RESERVES]
- Total equity: € [TOTAL_EQUITY]
- Financial ratios:
  - Current ratio: [RATIO] (target ≥1.0) ☐ Met
  - Equity/Assets: [RATIO]% (target ≥30%) ☐ Met
  - DSCR: [RATIO] (target ≥1.2) ☐ Met

**Professional Liability Insurance:**
- **Insurer:** [INSURANCE_COMPANY]
- **Policy Number:** [POLICY_NUMBER]
- **Coverage per Incident:** € [COVERAGE_PER_INCIDENT]
  - QES/QSeal requirement: ≥€1M ☐ Met (actual: € [AMOUNT])
  - QTS requirement: ≥€500k ☐ Met
- **Annual Aggregate:** € [ANNUAL_AGGREGATE]
- **Validity:** [POLICY_START] to [POLICY_END] ☐ Current (>6 months remaining)
- **Territory:** EEA / Worldwide
- **Deductible:** € [DEDUCTIBLE]

**CAB Verification:**
- ☐ Reviewed insurance policy (full document, not just certificate)
- ☐ Confirmed insurer is rated [RATING] by [RATING_AGENCY]
- ☐ Verified premium payments current (no lapses)
- ☐ Checked exclusions: War, nuclear, **cyber attacks** (☐ cyber coverage confirmed / ☐ excluded but separate cyber policy in place)

**Operational Budget:**
- Annual operating expenses: € [ANNUAL_OPEX]
- Available resources: € [TOTAL_EQUITY + INSURANCE_COVERAGE + CREDIT_LINES]
- Coverage ratio: [AVAILABLE / OPEX] (target ≥24 months) ☐ Met

**Audited Financials:**
- Balance sheet dated [BALANCE_SHEET_DATE] (within last 12 months: ☐ Yes)
- Auditor: [AUDITOR_NAME], chartered accountant
- Opinion: ☐ Unqualified (clean opinion)

**Finding:**  
☐ **Conformity:** Sufficient financial resources, adequate liability insurance (≥€1M for QES/QSeal), risk of damages covered.  
☐ **Non-conformity:** [Specify]

---

### 10.6 Article 24(2)(e) – CAB-Audited Policies & Practices

**Requirement:**  
"Before providing qualified trust services and at least every 24 months thereafter, record their compliance with the requirements laid down in this Regulation in a conformity assessment report, and make that report available to the supervisory body and in a publicly available form if required by the supervisory body."

**Assessment:**

**This CAR (Conformity Assessment Report):**
- ☐ This is the **initial** CAR (before providing qualified services) ☐ This is a **surveillance** CAR (24-month cycle)
- CAB: [CAB_NAME], accredited by [ACCREDITATION_BODY] per Regulation (EC) 765/2008
- CAR covers all services listed in Section 3

**TSP Policy & TSPS:**
- TSP Policy version [VERSION], dated [DATE]
- TSPS version [VERSION], dated [DATE]
- Policies reviewed during audit: ☐ Comprehensive, aligned with ETSI EN 319 401, 319 411-1/-2, 319 421
- Publicly available: ☐ Yes, at [POLICY_URL]

**CAB Audit Frequency:**
- ☐ Initial assessment (this CAR)
- ☐ Next surveillance due: [NEXT_AUDIT_DATE] (within 24 months)
- TSP commits to: ☐ Annual surveillance audits (exceeding 24-month minimum)

**Publication:**
- ☐ TSP will provide this CAR to EETT as part of qualified service application
- ☐ CAR will be made publicly available if EETT requires (decision pending EETT)

**Finding:**  
☐ **Conformity:** CAR prepared before providing qualified services, CAB properly accredited, policies documented and audited.  
☐ **Non-conformity:** [Specify]

---

### 10.7 Article 24(2)(f) – Supervision Acceptance

**Requirement:**  
"Accept the supervision carried out by the supervisory body and ensure that the supervisory body can perform its supervisory functions in a comprehensive manner."

**Assessment:**

**Formal Commitment:**
- TSP declaration in application (Document 02, Part H): ☐ Reviewed, signed by legal representative
- Commitment to:
  - Provide full access to EETT for inspections, audits
  - Respond to EETT information requests within required timelines (5-25 working days)
  - Implement corrective actions per EETT directives
  - Submit annual CAR to EETT
  - Notify EETT of material changes, incidents (Level ≥3 within 24h)

**Operational Readiness:**
- EETT Liaison Officer appointed: ☐ Yes ([CONTACT_NAME])
- Documentation accessible: ☐ All policies, procedures, logs available for EETT review
- Site access: ☐ TSP commits to provide EETT access to all facilities (DCs, RA offices, HQ) with reasonable notice

**CAB Observation:**
- During this audit, TSP provided: ☐ Unrestricted access to all sites, systems, personnel
- No obstructions or delays in information provision
- TSP demonstrated cooperative attitude toward regulatory supervision

**Finding:**  
☐ **Conformity:** TSP accepts EETT supervision, commits to full cooperation, operational readiness demonstrated.  
☐ **Non-conformity:** [Specify]

---

### 10.8 Article 24(2)(g) – Notification of Changes

**Requirement:**  
"Prior to their provision, inform the supervisory body of any changes in the provision of qualified trust services."

**Assessment:**

**Change Notification Procedure:**
- Documented in: TSPS Section [X], EETT Communications Pack (Document 13)
- Types of changes requiring EETT notification:
  - Material changes: New service type, ownership change, merger → New application per Article 6
  - Minor changes (7-day notification per Article 3.5):
    - Legal name, address, directors
    - Contact details, website
    - Service URLs (OCSP, CRL, TSA)
    - Technical infrastructure (if affecting conformity)

**Change Notice Template:**
- Template reviewed: Document 01b (Change Notice Template)
- ☐ Comprehensive, covers all change scenarios
- ☐ Includes 7-day deadline reminder
- Responsible person: [EETT_LIAISON_OFFICER]

**Internal Process:**
- Change control board: ☐ QTS Manager + CISO + Legal review changes
- EETT notification checklist: ☐ Integrated into change management process
- Tracking: ☐ Log of all EETT notifications maintained (for audit trail)

**Finding:**  
☐ **Conformity:** Change notification procedure documented, template ready, TSP commits to prior notification of material changes.  
☐ **Non-conformity:** [Specify]

---

### 10.9 Article 24(2)(h) – Termination Plan

**Requirement:**  
"Have a policy on the termination of their activities which takes into account the need for continuity of service and ensures, in the case of certificates, the availability of information related to those certificates and on their validity status for a reasonable period of time in accordance with applicable national law."

**Assessment:**

**Termination Plan:**
- Document reviewed: Document 09 (Termination Plan), version [VERSION], dated [DATE]
- Compliance with: EETT Articles 7-8, Annex 5
- ☐ Covers planned termination (3-month notice)
- ☐ Covers unplanned termination (bankruptcy, license revocation)
- ☐ Covers partial termination (end-of-life for specific service)

**Continuity Measures:**
- ☐ Revocation/OCSP/CRL services continue until last cert expires + 90 days
- ☐ Validation services continue for 7 years (for archived signatures)
- ☐ Notification plan: Subscribers, EETT, relying parties, EU Trusted List

**Archive Handover:**
- ☐ Archive custodian identified: [CUSTODIAN_NAME]
- ☐ Custodian agreement signed: [DATE]
- ☐ Archive format: ASiC-E with LTA signatures
- ☐ 7-year accessibility guaranteed (EETT Article 8.4, eIDAS Art. 24(5))

**Financial Provisions:**
- ☐ Termination fund: € [TERMINATION_FUND] escrowed
- ☐ Insurance tail coverage: [TAIL_PERIOD] years post-termination

**Testing:**
- ☐ Termination plan tested: [LAST_DRILL_DATE]
- ☐ Next drill scheduled: [NEXT_DRILL_DATE]

**Finding:**  
☐ **Conformity:** Termination plan comprehensive, continuity ensured, 7-year information availability guaranteed, custodian agreement in place.  
☐ **Non-conformity:** [Specify]

---

## 11. SERVICE-SPECIFIC CONFORMITY
*Article 10.12-10.17: Conformity to eIDAS service-specific requirements*

### 11.1 Qualified Electronic Signatures (eIDAS Article 28, Annex I, Annex IV)

**Article 28(1) – QES Requirements:**

**(a) Uniquely link signature to signatory:**  
☐ Certificate includes unique identifier (natural person: name + unique attribute; legal person: organization name + registration number)  
☐ Verified in sample certificates: [SAMPLE_COUNT] reviewed

**(b) Capable of identifying signatory:**  
☐ Identity verification per ETSI EN 319 411-2 (face-to-face or video ident)  
☐ CAB witnessed [X] enrollments, proper ID verification confirmed

**(c) Created using signature creation data under sole control of signatory:**  
☐ Private key generated on QSCD (never exported)  
☐ QSCD complies with eIDAS Annex II (if remote: [QSCD_MODEL], cert [QSCD_CERT_NUMBER])  
☐ Tested: Subscriber (or TSP on behalf with sole control) must authenticate to use key

**(d) Linked to data in such a way that any subsequent change is detectable:**  
☐ Signature algorithm: [ALGORITHM] per ETSI TS 119 312  
☐ Tested: Modified signed document, signature validation failed (as expected)

**Annex I – Certificate Content:**

Reviewed sample QES certificate (serial [SAMPLE_SERIAL]):

| Requirement (Annex I) | Present | Details |
|-----------------------|---------|---------|
| **(a) Indication that cert is for QES** | ☐ Yes | id-etsi-qcs-QcCompliance QCStatement |
| **(b) QC issuer identification** | ☐ Yes | Subject DN: [ISSUING_CA_DN] |
| **(c) Signatory name or pseudonym** | ☐ Yes | Subject: CN=[NAME] |
| **(d) Signatory unique identifier** | ☐ Yes | (Natural: serialNumber=[ID], Legal: organizationIdentifier=[REG]) |
| **(e) Signature creation device location (if physical)** | ☐ N/A | (Remote signing: server-side) |
| **(f) Beginning & end of validity** | ☐ Yes | notBefore/notAfter fields |
| **(g) Cert identity code** | ☐ Yes | Serial number (hex) |
| **(h) Issuer advanced signature/seal** | ☐ Yes | Certificate signed by Issuing CA |
| **(i) Location of status services** | ☐ Yes | OCSP ([URL]), CRL ([URL]) in AIA/CDP extensions |
| **(j) QC issuer cert** | ☐ Yes | Issuing CA cert in AIA extension |

**Annex IV – QSCD Requirements (if remote signing):**

| Requirement | Compliant | Evidence |
|-------------|-----------|----------|
| **1. Signature creation data used only once** | ☐ Yes | Each subscriber has unique private key |
| **2. Confidentiality of SCD** | ☐ Yes | Key in HSM, never exported |
| **3. SCD cannot be derived** | ☐ Yes | HSM-generated, FIPS 140-2 RNG |
| **4. Signature creation data protected against forgery** | ☐ Yes | HSM tamper protection |
| **5. Signatory can protect SCD against unauthorized use** | ☐ Yes | PIN/2FA required for remote signing |
| **6. Signature technically independent of others** | ☐ Yes | Separate key per subscriber |

**Finding:**  
☐ **Conformity:** QES service meets eIDAS Art. 28, Annex I (certificate content), Annex IV (QSCD if applicable).  
☐ **Non-conformity:** [Specify]

---

### 11.2 Qualified Electronic Seals (eIDAS Article 38, Annex III)

**Article 38(1) – QSeal Requirements:**

**(a) Uniquely link seal to creator (legal person):**  
☐ Certificate includes organization name + registration number (organizationIdentifier OID)

**(b) Capable of identifying creator:**  
☐ Organization verification via business registry (Γ.Ε.Μ.Η. for Greek entities)  
☐ Authorized representative verified (board resolution, power of attorney)

**(c) Created using seal creation data under sole control of creator:**  
☐ Private key in HSM under organization's control  
☐ Or server-side QSCD with access controls limiting use to authorized persons

**(d) Linked to data in such a way that any subsequent change is detectable:**  
☐ Same as QES (cryptographic signature binding)

**Annex III – QSeal Certificate Content:**

Reviewed sample QSeal certificate (serial [QSEAL_SAMPLE_SERIAL]):

| Requirement (Annex III) | Present | Details |
|-------------------------|---------|---------|
| **(a) Indication for QSeal** | ☐ Yes | id-etsi-qcs-QcCompliance + id-etsi-qct-eseal QCStatements |
| **(b) QC issuer identification** | ☐ Yes | Issuer DN |
| **(c) Organization name** | ☐ Yes | Subject: O=[ORG_NAME] |
| **(d) At least one of:**<br>- Registration number (organizationIdentifier)<br>- Identifier uniquely representing legal person | ☐ Yes | organizationIdentifier=[GEMI or ΑΦΜ] |
| **(e) Seal creation device location (if physical)** | ☐ N/A | (Server-side HSM) |
| **(f) Begin & end validity** | ☐ Yes | notBefore/notAfter |
| **(g) Cert identity code** | ☐ Yes | Serial number |
| **(h) Issuer advanced signature/seal** | ☐ Yes | CA signature |
| **(i) Location of status services** | ☐ Yes | OCSP/CRL in AIA/CDP |
| **(j) QC issuer cert** | ☐ Yes | AIA extension |

**Finding:**  
☐ **Conformity:** QSeal service meets eIDAS Art. 38, Annex III.  
☐ **Non-conformity:** [Specify]

---

### 11.3 Qualified Time-Stamping (eIDAS Article 42)

**Article 42 Requirements:**

**(a) Link date & time to data such that possibility of undetected change is minimized:**  
☐ RFC 3161 compliant timestamp token  
☐ Includes messageImprint (hash of timestamped data), prevents forgery

**(b) Based on accurate time source linked to UTC:**  
☐ Time source: [TIME_SOURCE_PROVIDER]  
☐ Traceability certificate reviewed: ☐ Valid, UTC-traceable  
☐ Accuracy: ±[ACCURACY] seconds (ETSI EN 319 421 recommends ±1 second)  
☐ CAB tested: Requested timestamp at [TEST_TIME_UTC], TSA genTime was [TSA_TIME], difference: [DIFF] seconds ☐ Within accuracy

**(c) Timestamp signed or sealed with advanced signature/seal:**  
☐ Timestamp token signed by TSA key (HSM-protected)  
☐ Signature algorithm: [TSA_SIGNATURE_ALGORITHM]  
☐ Verified signature on test timestamp: ☐ Valid

**ETSI EN 319 421 Compliance:**
- ☐ Time-Stamp Policy (TSP) published: [TSP_URL]
- ☐ Clock synchronization: [SYNC_METHOD] every [SYNC_FREQUENCY]
- ☐ Clock drift monitoring: ☐ Automated alerts if drift >[THRESHOLD]
- ☐ Audit logs: All timestamp issuances logged

**Finding:**  
☐ **Conformity:** QTS meets eIDAS Art. 42, accurate UTC time, signed tokens.  
☐ **Non-conformity:** [Specify]

---

### 11.4 Other Qualified Services (if applicable)

**Qualified Validation (Art. 33):**  
☐ Not assessed (service not offered)  
☐ Assessed – conformity: ☐ Yes ☐ No – details: [SPECIFY]

**Qualified Preservation (Art. 34):**  
☐ Not assessed  
☐ Assessed – conformity: ☐ Yes ☐ No – details: [SPECIFY]

**Qualified eDelivery/REM (Art. 44):**  
☐ Not assessed  
☐ Assessed – conformity: ☐ Yes ☐ No – details: [SPECIFY]

**QWAC (Art. 45):**  
☐ Not assessed  
☐ Assessed – conformity: ☐ Yes ☐ No – details: [SPECIFY]

---

## 12. SECURITY MEASURES ASSESSMENT
*Article 10.11: Security measures per eIDAS Art. 24(2)(d), EETT Art. 4*

### 12.1 Physical Security

**Data Centers:**
- Primary: [DC1_LOCATION], Tier [III/IV]
- Backup: [DC2_LOCATION], Tier [III/IV], [DISTANCE] km separation

**Access Controls:**
- ☐ Biometric entry (fingerprint + iris scan at primary DC)
- ☐ Mantrap / airlock entry
- ☐ Visitor log (name, company, escort, entry/exit times)
- ☐ 24×7 CCTV (retention: [CCTV_RETENTION_DAYS] days)
- ☐ Security guards (armed/unarmed, [GUARD_COUNT] per shift)

**Environmental:**
- ☐ UPS: N+1 redundancy, [UPS_CAPACITY] kVA, [UPS_RUNTIME] minutes at full load
- ☐ Generator: [GENERATOR_CAPACITY] kVA, [FUEL_CAPACITY] hours fuel on-site
- ☐ HVAC: Redundant cooling, target temperature [TEMP_RANGE]°C
- ☐ Fire suppression: [FIRE_SUPPRESSION_TYPE] (FM-200, Inergen, etc.)
- ☐ Flood detection: ☐ Present, triggers alarms

**CAB Inspection:**
- ☐ Visited both DCs on [INSPECTION_DATES]
- ☐ Tested biometric access (CAB auditor denied entry without authorization – correct)
- ☐ Observed HSM cage (locked, dual-control key access)
- ☐ Verified generator test log (last test: [LAST_GENERATOR_TEST])

**Finding:**  
☐ **Conformity:** Physical security meets Tier III+ standards, adequate for qualified TSP.  
☐ **Minor non-conformity:** [Specify]  
☐ **Major non-conformity:** [Specify]

---

### 12.2 Logical Security

**Network Architecture:**
- ☐ Segmented VLANs (Management, Production CA, OCSP/CRL, DMZ for public web)
- ☐ Firewalls: [FIREWALL_MODEL] (HA pair, stateful inspection)
- ☐ IDS/IPS: [IDS_MODEL], signatures updated [IDS_UPDATE_FREQUENCY]
- ☐ DDoS protection: [DDOS_PROVIDER], [DDOS_CAPACITY] Gbps capacity

**Access Control:**
- ☐ Principle of least privilege (users have minimum necessary permissions)
- ☐ Role-Based Access Control (RBAC): [ROLE_COUNT] roles defined
- ☐ Multi-Factor Authentication (MFA): ☐ Required for all administrative access
- ☐ HSM access: ☐ Hardware token (YubiKey, smart card) + PIN

**System Hardening:**
- ☐ Minimal services running (unnecessary services disabled)
- ☐ Operating system: [OS_NAME] version [OS_VERSION]
- ☐ Patch management: ☐ Critical patches within 7 days, routine patches monthly
- ☐ Antivirus/EDR: [AV_PRODUCT], definitions updated [AV_UPDATE_FREQUENCY]

**CAB Testing:**
- ☐ Attempted to access CA system with regular user account: ☐ Denied (correct)
- ☐ Attempted to SSH into OCSP server without MFA: ☐ Denied
- ☐ Reviewed firewall rules: ☐ Default-deny, only necessary ports open
- ☐ Scanned external IPs: ☐ Only expected services (HTTPS for OCSP/CRL) visible

**Finding:**  
☐ **Conformity:** Logical security robust, access controls effective, hardening adequate.  
☐ **Non-conformity:** [Specify]

---

### 12.3 Cryptographic Security

**Key Management (reviewed in Section 7.4):**
- ☐ All findings in Section 7.4 incorporated here by reference

**Algorithm Compliance:**
- ☐ Reviewed certificate issuance records: [SAMPLE_SIZE] certs
- ☐ All use approved algorithms (ETSI TS 119 312): ☐ Yes
- ☐ No weak algorithms found (MD5, SHA-1 for new issuance, RSA <2048): ☐ Confirmed
- ☐ Timestamp tokens use SHA-256+: ☐ Confirmed

**Cryptographic Agility:**
- ☐ Plan for algorithm migration documented: [MIGRATION_PLAN_LOCATION]
- ☐ TSP monitors [CRYPTO_MONITORING_SOURCE] for algorithm deprecations (NIST, ENISA, ETSI)

**Finding:**  
☐ **Conformity:** Cryptographic security aligns with current best practices and standards.  
☐ **Non-conformity:** [Specify]

---

### 12.4 Application Security

**Secure Development:**
- ☐ Secure coding standards: OWASP Top 10, CWE Top 25
- ☐ Code review: ☐ Peer review for all code, annual external review
- ☐ Static analysis: ☐ Automated (SonarQube, etc.), integrated into CI/CD

**Vulnerability Management:**
- ☐ Penetration testing: ☐ Annual (last test: [LAST_PENTEST_DATE])
- ☐ Pentester: [PENTESTER_NAME], findings: [FINDING_COUNT], remediation status: [STATUS]
- ☐ Vulnerability scanning: ☐ Weekly automated (Nessus, Qualys, etc.)
- ☐ Bug bounty program: ☐ Yes ☐ No

**Web Application Security:**
- ☐ Web Application Firewall (WAF): [WAF_PRODUCT]
- ☐ HTTPS only: ☐ TLS 1.2+, strong cipher suites (Forward Secrecy)
- ☐ OWASP protections: ☐ XSS, CSRF, SQL injection, clickjacking (headers set correctly)

**CAB Review:**
- ☐ Reviewed penetration test report: [X] findings, [Y] critical/high, all remediated: ☐ Yes
- ☐ Tested subscriber portal for common vulns (SQLi, XSS): ☐ None found

**Finding:**  
☐ **Conformity:** Application security practices adequate, regular testing performed.  
☐ **Non-conformity:** [Specify]

---

## 13. INCIDENT MANAGEMENT REVIEW
*Article 10.11: Incident response per EETT Art. 5, Annex 3*

### 13.1 Incident Response Plan

**Document Reviewed:** Document 07a (Incident Response Plan), version [VERSION]

**Incident Classification (EETT Annex 3):**
- ☐ Level 1-5 classification documented
- ☐ Examples provided for each level
- ☐ Aligns with EETT Annex 3 definitions

**Incident Response Team:**
| Role | Name | Contact | Training Status |
|------|------|---------|-----------------|
| Incident Manager | [NAME] | [PHONE/EMAIL] | ☐ Trained |
| Technical Lead | [NAME] | [PHONE/EMAIL] | ☐ Trained |
| Communications Officer | [NAME] | [PHONE/EMAIL] | ☐ Trained |
| Legal Counsel | [NAME] | [PHONE/EMAIL] | ☐ Trained |
| EETT Liaison | [NAME] | [PHONE/EMAIL] | ☐ Trained |

**EETT Notification:**
- ☐ 24-hour notification for Level ≥3 incidents (EETT Art. 5.3)
- ☐ Initial incident report form: Document 07b, all required fields per Art. 5.4
- ☐ Final incident report commitment: Within EETT-specified deadline

**CAB Testing:**
- ☐ Conducted tabletop exercise: Simulated Level 3 incident (OCSP outage >4 hours)
- ☐ Team response: [DESCRIPTION]
- ☐ Classification: ☐ Correct (Level 3)
- ☐ Notification draft prepared: ☐ Within 24h simulation time, all required fields completed
- ☐ Communications plan: ☐ User notification triggered, public statement drafted

**Incident History:**
- ☐ Reviewed past 12 months incident log: [INCIDENT_COUNT] incidents
  - Level 1: [COUNT]
  - Level 2: [COUNT]
  - Level 3+: [COUNT] (if any, verify EETT was notified)
- ☐ All Level 3+ incidents reported to EETT: ☐ Yes ☐ N/A (none occurred)

**Finding:**  
☐ **Conformity:** Incident response plan comprehensive, team trained, EETT notification procedures in place, tested.  
☐ **Non-conformity:** [Specify]

---

### 13.2 Business Continuity & Disaster Recovery

**Document Reviewed:** TSPS Section [X], Termination Plan (Document 09)

**Business Continuity Plan (BCP):**
- ☐ Documented: [BCP_LOCATION]
- ☐ Covers: Pandemics, natural disasters, cyberattacks, facility loss, personnel unavailability
- ☐ Recovery Time Objective (RTO): [RTO] hours (for critical services: OCSP, revocation)
- ☐ Recovery Point Objective (RPO): [RPO] minutes (acceptable data loss window)

**Disaster Recovery (DR):**
- ☐ Backup DC: [DC2_LOCATION], [DISTANCE] km from primary
- ☐ DR Architecture: ☐ Active-Active ☐ Active-Passive ☐ Warm Standby
- ☐ Database Replication: ☐ Synchronous ☐ Asynchronous ([REPLICATION_LAG] seconds lag)
- ☐ HSM Redundancy: Primary [HSM_PRIMARY_COUNT], Backup [HSM_BACKUP_COUNT]
- ☐ Failover Testing: ☐ Last test: [LAST_DR_TEST_DATE], result: [RESULT]

**Backup Strategy:**
- ☐ Database: Hourly incremental, daily full, retained [BACKUP_RETENTION_DAYS] days
- ☐ HSM Keys: M-of-N split smart cards, geographically distributed
- ☐ Configuration: Version-controlled (Git), daily backup
- ☐ Backup Encryption: ☐ AES-256
- ☐ Offsite Storage: ☐ Cloud ([CLOUD_PROVIDER], region: [REGION]), separate physical location

**CAB Testing:**
- ☐ Reviewed DR test report from [LAST_DR_TEST_DATE]
- ☐ Test scenario: [SCENARIO] (e.g., primary DC power failure)
- ☐ Failover time: [FAILOVER_TIME] (vs. RTO: [RTO]) ☐ Met
- ☐ Data loss: [DATA_LOSS] (vs. RPO: [RPO]) ☐ Met
- ☐ All services restored: ☐ Yes

**Finding:**  
☐ **Conformity:** BCP/DR plans adequate, tested, RTO/RPO objectives met.  
☐ **Non-conformity:** [Specify]

---

## 14. RECORDKEEPING VERIFICATION
*Article 10.11: Records per eIDAS Art. 24(5), EETT Art. 12*

### 14.1 Record Retention

**Requirement:**  
- eIDAS Art. 24(5): Minimum 5 years after certificate expiry
- EETT Art. 12.1: **7 years** after certificate expiry (exceeds eIDAS)

**TSP Commitment:** 7 years (per EETT)

**Document Reviewed:** Document 12 (Recordkeeping & Access Policy)

**Records Retained:**
- ☐ All issued certificates (including revoked, expired)
- ☐ Certificate applications (subscriber info, identity docs)
- ☐ RA transaction logs (enrollment sessions, identity verification)
- ☐ Revocation requests (reason codes, timestamps)
- ☐ OCSP/CRL publication logs
- ☐ Audit logs (authentication, authorization, administrative actions)
- ☐ Key ceremony logs
- ☐ Incident reports
- ☐ Subscriber agreements
- ☐ CAB audit reports

**Archive Format:**
- ☐ ASiC-E containers with LTA signatures
- ☐ Integrity: SHA-256 manifests, periodic re-signing (every [RE_SIGN_PERIOD] years)
- ☐ Organization: By certificate serial number, indexed database

**Storage:**
- ☐ Primary: On-premises SAN, encrypted (AES-256)
- ☐ Backup: Cloud ([CLOUD_PROVIDER], region [REGION], GDPR-compliant)
- ☐ Redundancy: [REDUNDANCY_LEVEL] copies across [GEO_COUNT] geographic locations

**CAB Verification:**
- ☐ Requested sample records from [X] years ago: [SAMPLE_COUNT] records
- ☐ All records retrieved: ☐ Yes, within [RETRIEVAL_TIME] minutes
- ☐ Integrity verified: ☐ SHA-256 checksums matched, signatures valid
- ☐ Oldest record date: [OLDEST_RECORD_DATE] ([AGE] years old)

**Finding:**  
☐ **Conformity:** 7-year retention implemented, records secure and retrievable, integrity ensured.  
☐ **Non-conformity:** [Specify]

---

### 14.2 Data Subject Access (GDPR Art. 15, EETT Art. 12.2)

**Requirement:** Data subjects can access their records within reasonable time.

**TSP Procedure (Document 12, Section 6):**
- ☐ Request channel: Email [RECORDS_ACCESS_EMAIL]
- ☐ Authentication: ID verification (same as enrollment)
- ☐ Response time: **7 working days** (EETT practice, GDPR allows up to 30 days)
- ☐ Delivery format: PDF (human-readable) + JSON/XML (machine-readable)
- ☐ No fee for first request, reasonable fee for subsequent requests within 6 months

**CAB Testing:**
- ☐ Submitted test data subject access request (for fictitious subscriber created during audit)
- ☐ TSP response time: [ACTUAL_RESPONSE_TIME] working days ☐ Within 7-day commitment
- ☐ Completeness: ☐ All expected records provided (certs, enrollment data, audit logs)
- ☐ Privacy: ☐ Other persons' data pseudonymized (e.g., RA operator names → "RA Operator 3")

**Finding:**  
☐ **Conformity:** Data subject access rights implemented, 7-day response time met, GDPR-compliant.  
☐ **Non-conformity:** [Specify]

---

## 15. PERSONNEL COMPETENCE ASSESSMENT
*Article 10.11: Personnel expertise per eIDAS Art. 24(2)(a)*

**(Incorporated by reference from Section 10.2 – Article 24(2)(a) assessment)**

**Additional Findings:**

**Segregation of Duties:**
- ☐ RA Operators cannot self-enroll (different person verifies own identity)
- ☐ Crypto Officers cannot unilaterally perform Root CA key ceremony (M-of-N required)
- ☐ System Administrators cannot approve certificate issuance (RA role required)

**Least Privilege:**
- ☐ Users have minimum necessary permissions
- ☐ Privileged access reviewed quarterly, excess permissions revoked

**Background Checks:**
- ☐ Criminal record checks for all personnel with HSM access, RA operators
- ☐ Re-checks every [RECHECK_PERIOD] years

**Finding:**  
☐ **Conformity:** (Already assessed in Section 10.2)  
☐ **Non-conformity:** [Specify additional issues not covered in 10.2]

---

## 16. OPERATIONAL MONITORING & METRICS

**Service Availability (measured over [MEASUREMENT_PERIOD]):**
| Service | Availability | Target | Status |
|---------|--------------|--------|--------|
| Certificate Issuance | [ISSUANCE_AVAIL]% | [ISSUANCE_SLA]% | ☐ Met |
| OCSP | [OCSP_AVAIL]% | [OCSP_SLA]% | ☐ Met |
| CRL Distribution | [CRL_AVAIL]% | [CRL_SLA]% | ☐ Met |
| TSA | [TSA_AVAIL]% | [TSA_SLA]% | ☐ Met |
| Revocation Hotline (24×7) | [HOTLINE_AVAIL]% | 99.0% | ☐ Met |

**Performance Metrics:**
- OCSP response time (p95): [OCSP_P95] ms (target: <200ms) ☐ Met
- Certificate issuance time (median): [ISSUANCE_MEDIAN] hours (SLA: [ISSUANCE_SLA] hours) ☐ Met
- Revocation processing time (median): [REVOCATION_MEDIAN] hours (SLA: [REVOCATION_SLA] hours) ☐ Met

**Security Metrics:**
- Incidents (past 12 months): [INCIDENT_COUNT total (by level)]
- Vulnerabilities found in pentests: [VULN_COUNT], critical/high: [CRITICAL_COUNT], all remediated: ☐ Yes
- Failed login attempts (last month): [FAILED_LOGINS], brute-force attacks detected & blocked: [BLOCKED_ATTACKS]

**CAB Assessment:**  
☐ Monitoring comprehensive, metrics tracked, SLAs generally met  
☐ Areas for improvement: [SPECIFY, if any]

---

## 17. NON-CONFORMITIES & CORRECTIVE ACTIONS
*Article 10.18: Non-conformities identified and the corrective action plan*

### 17.1 Major Non-Conformities

**Definition:** Significant deviation from eIDAS/EETT requirements that poses risk to service integrity or security.

| NC ID | Description | Standard Violated | Risk Level | Status |
|-------|-------------|-------------------|------------|--------|
| [NC-001] | [DESCRIPTION] | [eIDAS Art. X, EETT Art. Y] | High | ☐ Open ☐ Resolved |

**Corrective Action:**  
[DETAILED_CORRECTIVE_ACTION]

**Deadline:** [DEADLINE_DATE]  
**Responsible:** [RESPONSIBLE_PERSON]  
**Verification:** ☐ CAB will re-audit this item on [REAUDIT_DATE]

---

### 17.2 Minor Non-Conformities

**Definition:** Deviation that does not immediately compromise service integrity but should be corrected.

| NC ID | Description | Standard Reference | Status |
|-------|-------------|--------------------|--------|
| [NC-101] | [DESCRIPTION] | [Standard] | ☐ Open ☐ Resolved |

**Corrective Action:**  
[CORRECTIVE_ACTION]

**Deadline:** [DEADLINE_DATE]  
**Responsible:** [RESPONSIBLE_PERSON]

---

### 17.3 Observations (Opportunities for Improvement)

**Definition:** Not non-conformities, but areas where TSP could enhance practices.

| Obs ID | Observation | Recommendation |
|--------|-------------|----------------|
| [OBS-001] | [OBSERVATION] | [RECOMMENDATION] |

---

### 17.4 Summary

**Total Major Non-Conformities:** [COUNT]  
**Total Minor Non-Conformities:** [COUNT]  
**Total Observations:** [COUNT]

**Conformity Status:**  
☐ **Full Conformity** – No major or minor non-conformities, ready for qualification  
☐ **Conditional Conformity** – Minor non-conformities to be resolved within [X] days, re-audit not required  
☐ **Non-Conformity** – Major non-conformities must be resolved, re-audit required before qualification

---

## 18. RECOMMENDATIONS
*Article 10.19: Recommendations of the conformity assessment body*

### 18.1 Recommendations to TSP

1. **[Recommendation 1]**  
   **Context:** [BACKGROUND]  
   **Recommendation:** [DETAILED_RECOMMENDATION]  
   **Benefit:** [EXPECTED_BENEFIT]  
   **Priority:** ☐ High ☐ Medium ☐ Low

2. **[Recommendation 2]**  
   [...]

### 18.2 Recommendations to EETT

**Regarding TSP Qualification:**  
☐ **Approve** – TSP meets all requirements, recommend qualification for all services listed in Section 3  
☐ **Approve with Conditions** – Approve subject to TSP resolving minor non-conformities by [DEADLINE]  
☐ **Defer** – Major non-conformities require resolution and re-audit before decision  
☐ **Reject** – TSP does not meet requirements, substantial improvements needed

**Additional Comments:**  
[CAB_COMMENTS_TO_EETT]

---

## 19. CAB ATTESTATION & SIGNATURE
*Article 10.1: CAB signature/seal on this report*

### 19.1 CAB Declaration

I, **[LEAD_AUDITOR_NAME]**, Lead Auditor of **[CAB_NAME]**, declare that:

1. This Conformity Assessment Report (CAR) has been prepared in accordance with:
   - Regulation (EU) No 910/2014 (eIDAS), Article 20, 24
   - EETT Regulation, Article 10
   - ISO/IEC 17065:2012 (Conformity assessment standard)

2. The audit was conducted objectively, impartially, and independently.

3. [CAB_NAME] is accredited by **[ACCREDITATION_BODY]** (EA Member) under accreditation number **[CAB_ACCREDITATION_NUMBER]**, scope: eIDAS Regulation (EU) No 910/2014.

4. All information in this CAR is accurate to the best of my knowledge based on the evidence collected during the audit period [AUDIT_START] to [AUDIT_END].

5. This CAR is valid for the services and scope assessed as of [CAR_ISSUE_DATE]. Any changes to TSP operations after this date may affect conformity and require re-assessment.

### 19.2 CAB Signature/Seal

**Lead Auditor:**  
Name: [LEAD_AUDITOR_NAME]  
Signature: ______________________  
Date: [SIGNATURE_DATE]

**Technical Reviewer (if applicable):**  
Name: [REVIEWER_NAME]  
Signature: ______________________  
Date: [REVIEW_DATE]

**CAB Authorized Signatory:**  
Name: [CAB_AUTHORIZED_PERSON]  
Title: [CAB_TITLE]  
Signature: ______________________  
Date: [CAB_SIGNATURE_DATE]

**CAB Seal/Stamp:**  
[AFFIXED HERE or DIGITAL SEAL APPLIED IN PDF VERSION]

---

**Digital Signature Applied:**  
☐ This CAR is digitally signed/sealed using CAB's qualified electronic signature/seal  
☐ Signature format: PAdES-LTA (PDF Advanced Electronic Signature – Long-Term Archival)  
☐ Timestamp applied: [TIMESTAMP_DATE_TIME] from [TSA_NAME]  
☐ Signature certificate: [CAB_SIGNING_CERT_SUBJECT_DN], serial [CAB_SIGNING_CERT_SERIAL]

---

## ANNEXES

### Annex A: Compliance Traceability Matrix

*This annex provides a detailed mapping of all applicable regulatory requirements to the specific evidence reviewed during the audit. It serves as the primary index for demonstrating full compliance.*

#### A.1 eIDAS Regulation (EU) No 910/2014

| Article | Requirement Summary | Evidence Reference (ID from Annex B) | TSP Document | Section/Page | Finding (C, NC, N/A) |
|---|---|---|---|---|---|
| **Art. 24(2)(a)** | Competent personnel | EV-101, EV-201 | TSPS, Org Chart | Sec 8, p. 45 | C |
| **Art. 24(2)(b)** | Trustworthy systems | EV-301, EV-401 | TSPS, HSM Specs | Sec 7, p. 35 | C |
| **Art. 24(2)(c)** | Secure issuance environment | EV-405, EV-501 | TSPS, RA Manual | Sec 6, p. 28 | C |
| **Art. 24(2)(d)** | Financial resources & liability | EV-105, EV-106 | Financials, Insurance Policy | All | C |
| **Art. 24(2)(e)** | Conformity assessment report | This CAR | N/A | N/A | C |
| **Art. 24(2)(f)** | Supervision acceptance | EV-110 | Application Form | Part H | C |
| **Art. 24(2)(g)** | Notification of changes | EV-112 | Change Mgt. Policy | All | C |
| **Art. 24(2)(h)** | Termination plan | EV-108 | Termination Plan | All | C |
| **Art. 28** | QES Requirements | EV-501, EV-502 | TSPS, Test Certs | Sec 2, Annex A | C |
| **Art. 38** | QSeal Requirements | EV-503 | TSPS, Test Certs | Sec 3, Annex B | C |
| **Art. 42** | QTS Requirements | EV-504 | TSPS, Test Certs | Sec 4, Annex C | C |
| *... (continue for all applicable articles)* | | | | | |

#### A.2 EETT Regulation

| Article | Requirement Summary | Evidence Reference (ID from Annex B) | TSP Document | Section/Page | Finding (C, NC, N/A) |
|---|---|---|---|---|---|
| **Art. 4** | Security Measures | EV-107, EV-400s | Risk Assessment, TSPS | All | C |
| **Art. 5** | Incident Reporting | EV-109, EV-505 | Incident Response Plan | All | C |
| **Art. 7-8** | Termination Obligations | EV-108 | Termination Plan | All | C |
| **Art. 10** | CAR Requirements | This CAR | N/A | N/A | C |
| **Art. 11** | Revocation & Status | EV-111, EV-506 | Revocation SOP | All | C |
| **Art. 12** | Recordkeeping (7 years) | EV-113, EV-507 | Recordkeeping Policy | All | C |
| *... (continue for all applicable articles)* | | | | | |

#### A.3 ETSI Standards

| Standard | Section | Requirement Summary | Evidence Reference (ID from Annex B) | TSP Document | Finding (C, NC, N/A) |
|---|---|---|---|---|---|
| **EN 319 401** | 6.2 | TSP Information Security | EV-107, EV-400s | Risk Assessment, TSPS | C |
| **EN 319 411-1** | 6.3 | Identification & Authentication | EV-115, EV-501 | RA Manual, TSPS | C |
| **EN 319 411-2** | 6.2.2 | QCP-n, QCP-l, QCP-n-qscd | EV-502 | Test Certificates | C |
| **EN 319 421** | 5.3 | Time Source Accuracy | EV-305, EV-504 | Time Source Certificate | C |
| *... (continue for all key standards)* | | | | | |

---

### Annex B: Evidence Register

*This register lists all documents, records, and other artifacts collected and reviewed during the audit. Each item is assigned a unique Evidence ID for cross-referencing in the CAR and Annex A.*

| Evidence ID | Type | Description | Version | Date | Source | Auditor |
|---|---|---|---|---|---|---|
| **EV-101** | Document | TSP Policy | 2.1 | 2025-10-15 | TSP | [AUDITOR_INITIALS] |
| **EV-102** | Document | Trust Service Practice Statement (TSPS) | 3.0 | 2025-10-15 | TSP | [AUDITOR_INITIALS] |
| **EV-105** | Document | Audited Financial Statement FY2024 | 1.0 | 2025-06-30 | TSP | [AUDITOR_INITIALS] |
| **EV-106** | Document | Professional Liability Insurance Policy | POL-5892C | 2025-01-01 | TSP | [AUDITOR_INITIALS] |
| **EV-107** | Document | Risk Assessment Report | 1.5 | 2025-09-20 | TSP | [AUDITOR_INITIALS] |
| **EV-108** | Document | Termination Plan | 2.0 | 2025-08-01 | TSP | [AUDITOR_INITIALS] |
| **EV-109** | Document | Incident Response Plan | 2.2 | 2025-09-25 | TSP | [AUDITOR_INITIALS] |
| **EV-111** | Document | Revocation & Status Service SOP | 1.8 | 2025-10-05 | TSP | [AUDITOR_INITIALS] |
| **EV-113** | Document | Recordkeeping & Access Policy | 1.3 | 2025-07-15 | TSP | [AUDITOR_INITIALS] |
| **EV-201** | Record | Personnel Training Records (sample of 5) | N/A | 2025-11-05 | TSP | [AUDITOR_INITIALS] |
| **EV-202** | Record | Background Check Verifications (sample of 3) | N/A | 2025-11-05 | TSP | [AUDITOR_INITIALS] |
| **EV-301** | Document | HSM Specification Sheet (Thales Luna 7) | 1.0 | 2023-01-10 | Vendor | [AUDITOR_INITIALS] |
| **EV-302** | Record | Key Ceremony Log & Video | N/A | 2023-03-15 | TSP | [AUDITOR_INITIALS] |
| **EV-401** | Report | Data Center 1 Site Inspection Report | N/A | 2025-11-06 | CAB | [AUDITOR_INITIALS] |
| **EV-402** | Report | Data Center 2 Site Inspection Report | N/A | 2025-11-07 | CAB | [AUDITOR_INITIALS] |
| **EV-405** | Report | Annual Penetration Test Report | 1.0 | 2025-07-01 | Pentester Inc. | [AUDITOR_INITIALS] |
| **EV-501** | Test | Witnessed RA Enrollment (3 sessions) | N/A | 2025-11-06 | CAB | [AUDITOR_INITIALS] |
| **EV-502** | Test | Sample QES Certificate Analysis | N/A | 2025-11-08 | CAB | [AUDITOR_INITIALS] |
| **EV-504** | Test | QTS Timestamp Accuracy Test | N/A | 2025-11-08 | CAB | [AUDITOR_INITIALS] |
| **EV-505** | Test | Incident Response Tabletop Exercise Log | N/A | 2025-11-09 | CAB | [AUDITOR_INITIALS] |
| **EV-506** | Test | 24x7 Revocation Hotline Test Call Log | N/A | 2025-11-09 | CAB | [AUDITOR_INITIALS] |
| **EV-507** | Test | Archive Record Retrieval Test | N/A | 2025-11-10 | CAB | [AUDITOR_INITIALS] |
| *... (continue for all evidence)* | | | | | | |

---

### Annex C: Interview Log

*This annex contains summaries of all interviews conducted with TSP personnel.*

#### C.1 Interview with [QTS_MANAGER_NAME], QTS Manager
- **Date:** [DATE]
- **Duration:** [DURATION]
- **Auditor(s):** [AUDITOR_NAMES]
- **Topics:** Overall eIDAS/EETT compliance strategy, risk management oversight, resource allocation, CAB audit coordination, termination plan governance.
- **Key Findings:**
  - Demonstrated strong understanding of all regulatory requirements.
  - Confirmed that the Board has reviewed and approved the Risk Assessment and Termination Plan.
  - Articulated the process for handling major incidents and EETT notifications.
  - *[ADDITIONAL FINDINGS]*

#### C.2 Interview with [CISO_NAME], Chief Information Security Officer (CISO)
- **Date:** [DATE]
- **Duration:** [DURATION]
- **Auditor(s):** [AUDITOR_NAMES]
- **Topics:** Information security management system (ISMS), physical and logical security controls, incident response procedures, vulnerability management, BCP/DR testing.
- **Key Findings:**
  - Explained the network segmentation and firewall rule philosophy.
  - Walked through the incident classification and escalation process.
  - Confirmed that all findings from the last penetration test have been remediated.
  - *[ADDITIONAL FINDINGS]*

#### C.3 Interview with [CRYPTO_OFFICER_NAME], Cryptographic Officer
- **Date:** [DATE]
- **Duration:** [DURATION]
- **Auditor(s):** [AUDITOR_NAMES]
- **Topics:** HSM key management, key ceremonies (Root and Issuing CAs), M-of-N procedures, cryptographic algorithm selection, key lifecycle (generation, backup, rotation, destruction).
- **Key Findings:**
  - Described the M-of-N quorum ([M]-of-[N]) and the geographic distribution of key shares.
  - Confirmed that all private keys are generated and stored within the HSM boundary and are non-exportable.
  - Explained the process for emergency CA key revocation.
  - *[ADDITIONAL FINDINGS]*

#### C.4 Interview with [RA_OPERATOR_NAME], Registration Authority Operator
- **Date:** [DATE]
- **Duration:** [DURATION]
- **Auditor(s):** [AUDITOR_NAMES]
- **Topics:** Identity verification procedures (face-to-face and remote video), document validation, RA system usage, fraud detection, handling of subscriber data.
- **Key Findings:**
  - Correctly identified the security features to check on a Greek ID card.
  - Described the steps for a compliant remote video identification session per ETSI standards.
  - Confirmed understanding of GDPR principles regarding subscriber data.
  - *[ADDITIONAL FINDINGS]*

---

### Annex D: Site Inspection Report

*This annex details the findings from physical inspections of the TSP's operational sites.*

#### D.1 Primary Data Center Inspection – [DC1_LOCATION]
- **Date:** [DATE]
- **Auditor(s):** [AUDITOR_NAMES]
- **TSP Escort:** [ESCORT_NAME]

| Control Area | Observation | Finding (Pass/Fail) |
|---|---|---|
| **Perimeter Security** | Fencing, gate with guard, vehicle barriers. | Pass |
| **Building Access** | Single point of entry, 24x7 security staff, visitor logs. | Pass |
| **Data Hall Access** | Mantrap entry, biometric (fingerprint + iris) scan required. | Pass |
| **HSM Cage** | Steel cage, locked, dual-control key access, no signage. | Pass |
| **CCTV** | Cameras cover all entry points, data halls, and cages. 90-day retention. | Pass |
| **Environmental** | Redundant HVAC, temperature at 21°C. FM-200 fire suppression. | Pass |
| **Power** | N+1 UPS, dual generators with 48h fuel on-site. Last test log reviewed. | Pass |

- **Photos:** 12 photos taken (e.g., HSM rack, mantrap, generator, cooling units).
- **Conclusion:** Facility meets or exceeds Tier III requirements. No adverse findings.

#### D.2 Registration Authority Office Inspection – [RA_OFFICE_LOCATION]
- **Date:** [DATE]
- **Auditor(s):** [AUDITOR_NAMES]

| Control Area | Observation | Finding (Pass/Fail) |
|---|---|---|
| **Public Access** | Separate waiting area for public, no direct access to RA work area. | Pass |
| **RA Work Area** | Controlled entry (key card), clean desk policy observed. | Pass |
| **Secure Storage** | Locked cabinets for physical documents (ID copies, applications). | Pass |
| **Privacy** | Enrollment stations positioned to prevent public viewing of screens. | Pass |
| **CCTV** | Cameras monitor entry/exit and general area (not recording screens). | Pass |

- **Conclusion:** RA office provides a secure environment for enrollment activities.

---

### Annex E: Technical Test Results

*This annex provides detailed logs and outcomes of the technical tests performed by the CAB.*

#### E.1 Test: Certificate Issuance & Profile Compliance
- **Date:** [DATE]
- **Test:** Issued 3 test certificates (QES Natural, QES Legal, QSeal).
- **Results:** All certificates issued within the [ISSUANCE_SLA] SLA.
- **Analysis:** Certificates were parsed and analyzed against ETSI EN 319 412 profiles.
  - **QES Natural Person Cert (SN: [SERIAL_A]):**
    - `qcStatements`: `id-etsi-qcs-QcCompliance`, `id-etsi-qcs-QcSSCD`, `id-etsi-qcs-QcType` (for eSignature).
    - `subject`: `CN`, `serialNumber` present.
    - `keyUsage`: `nonRepudiation`.
    - **Finding:** Pass.
  - **QSeal Cert (SN: [SERIAL_B]):**
    - `qcStatements`: `id-etsi-qcs-QcCompliance`, `id-etsi-qcs-QcType` (for eSeal).
    - `subject`: `O`, `organizationIdentifier` present.
    - **Finding:** Pass.

#### E.2 Test: Revocation & Status Service Timeliness
- **Date:** [DATE]
- **Test:** Submitted a revocation request for test certificate (SN: [SERIAL_A]) via the 24x7 hotline.
- **Timeline:**
  - `14:30:05 UTC`: Call placed to [REVOCATION_HOTLINE].
  - `14:30:25 UTC`: Call answered by operator.
  - `14:32:10 UTC`: Subscriber identity verified, revocation confirmed.
  - `14:33:15 UTC`: First OCSP query returns **"revoked"**.
  - `15:05:00 UTC`: New CRL is published including the revoked certificate.
- **Findings:**
  - **OCSP Update Time:** 1 minute 5 seconds. **Pass** (within [REVOCATION_SLA]).
  - **CRL Update Time:** 32 minutes 50 seconds. **Pass** (within daily/hourly schedule).
  - **24x7 Hotline:** Confirmed operational and staffed outside business hours. **Pass**.

#### E.3 Test: Qualified Time-Stamping Accuracy
- **Date:** [DATE]
- **Test:** Requested 100 timestamps from the TSA at [TSA_URL].
- **Methodology:** Compared the `genTime` field in the TSA response to the CAB's local, synchronized UTC time.
- **Results:**
  - **Average Deviation:** 0.12 seconds.
  - **Maximum Deviation:** 0.45 seconds.
- **Finding:** Accuracy is within the ±1 second requirement of ETSI EN 319 421. **Pass**.

#### E.4 Test: Archive Record Retrieval
- **Date:** [DATE]
- **Test:** Requested all records related to a certificate issued 3 years prior (SN: [OLD_SERIAL]).
- **Results:**
  - **Time to Retrieve:** 4 minutes 30 seconds.
  - **Records Provided:** Application form, ID copy, issued certificate, revocation request.
  - **Integrity Check:** All documents were within an ASiC-E container with a valid LTA signature.
- **Finding:** Record retrieval process is functional and meets the requirements of EETT Art. 12. **Pass**.

---

## DISTRIBUTION

This Conformity Assessment Report is provided to:

1. **[LEGAL_NAME_GR]** (TSP) – for inclusion in EETT application  
2. **EETT** (Hellenic Telecommunications & Post Commission) – as part of qualified service application  
3. **[CAB_NAME]** (internal archives) – retained for 7 years per accreditation requirements  
4. **Public** (if required by EETT) – redacted version (remove confidential business information)

---

## DOCUMENT CONTROL

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | [DRAFT_DATE] | [LEAD_AUDITOR] | Initial draft |
| 0.5 | [REVIEW_DATE] | [REVIEWER] | Technical review, corrections |
| 1.0 | [FINAL_DATE] | [LEAD_AUDITOR] | Final CAR, signed |

**Classification:** Confidential (until public disclosure required by EETT)  
**Retention:** 7 years minimum (per ISO 17065, eIDAS)

---

**END OF CONFORMITY ASSESSMENT REPORT**

---

**CAR Template Version:** 1.0  
**Template Date:** 2025-01-15  
**Compliance:** EETT Article 10 (19 items), eIDAS Articles 20, 24, ETSI EN 319 411/421/etc.  
**File:** 03_CAR_Template.docx

---

*This template is provided for CAB use. The CAB will complete all bracketed [PLACEHOLDER] fields during the audit and issue the final CAR to the TSP and EETT.*
