# TRUST SERVICE PRACTICE STATEMENT (TSPS)

**Company:** [LEGAL_NAME_EN]  
**Version:** 1.0  
**Issue Date:** [SUBMISSION_DATE]  
**Statement OID:** [TSPS_OID]  
**Status:** Final  
**Classification:** Public

---

## DOCUMENT COMPLIANCE CHECKLIST

| Regulation | Requirement | Section |
|------------|-------------|---------|
| eIDAS Article 24(2)(b) | Reliable systems and products | §8 |
| eIDAS Article 24(2)(d) | Trained personnel | §9 |
| eIDAS Article 24(2)(f) | Incident response measures | §13 |
| eIDAS Article 24(2)(g) | Business continuity | §12 |
| eIDAS Article 28 | QES - Identification | §3.1 |
| EETT Article 4 | Security measures | §8 |
| EETT Article 5 | Incident management | §13 |
| EETT Article 11 | 24×7 Revocation | §6 |
| EETT Article 12 | 7-year record retention | §11 |
| ETSI EN 319 401 | TSP Policy | All |
| ETSI EN 319 411-1 | Natural person identification | §3.1 |
| ETSI EN 319 411-2 | QES Certificates | §3-7 |
| ETSI EN 319 421 | Time-stamping services | §8 |
| GDPR Article 5 | Data processing principles | §11 |
| GDPR Article 15 | Right of access | §11.3 |
| GDPR Article 17 | Right to erasure (limitations) | §11.4 |

**Legend:** 🔍 = Section requiring CAB validation

---

## TABLE OF CONTENTS

1.  Introduction
2.  Publication and Repository Practices
3.  Identification and Authentication Procedures
4.  Certificate Application, Renewal, and Re-key
5.  Certificate Acceptance and Usage
6.  Revocation Procedures
7.  Status Checking Services (OCSP & CRL)
8.  Security Measures and Controls
9.  Personnel Requirements
10. Audit Logging and Monitoring
11. Records Archival and Retention
12. Disaster Recovery and Business Continuity
13. Incident Response Procedures
14. TSP Termination Procedures
15. Compliance and Legal Provisions
16. Fees and Payments
17. Publication and Amendments

---

## 1. INTRODUCTION

### 1.1. Purpose
This Trust Service Practice Statement (TSPS) provides a detailed description of the infrastructure, practices, procedures, and controls implemented by **[LEGAL_NAME_EN]** ("the Provider") to deliver its Trust Services. It is the primary supporting document to the **Trust Service Policy (TSP Policy)** and provides the necessary detail for auditors and relying parties to assess the Provider's compliance and trustworthiness.

### 1.2. Scope
This document applies to all Qualified Trust Services offered by the Provider, including the issuance and management of Qualified Electronic Signatures (QES), Qualified Electronic Seals (QSeal), and Qualified Time-Stamps (QTS).

### 1.3. Compliance
This TSPS implements the requirements of the TSP Policy and is compliant with the eIDAS Regulation, the Greek EETT Regulation, and the following ETSI standards:
-   **ETSI EN 319 401:** General Policy Requirements for Trust Service Providers.
-   **ETSI EN 319 411-1 & 411-2:** Policy and security requirements for CAs issuing certificates.
-   **ETSI EN 319 421:** Policy and security requirements for TSPs issuing time-stamps.

**ETSI Alignment Note:**
> This document is structured to align with ETSI EN 319 401/411/421 to facilitate interoperability with other EU TSPs and meet common industry expectations. However, ETSI standards are not legally mandatory under eIDAS; all mandatory requirements derive from Regulation (EU) 910/2014 and EETT Κανονισμός. Where this document exceeds legal minimums by following ETSI best practices, such provisions are marked as **[ETSI Recommended]** vs. **[eIDAS/EETT Mandatory]**.

---

## 2. PUBLICATION AND REPOSITORY PRACTICES

### 2.1. Repository
The Provider maintains a public, 24x7 available repository at **[WEBSITE_URL]/repository**. This repository contains:
-   This TSPS and all previous versions.
-   The current TSP Policy and all previous versions.
-   All current and expired CA certificates for the Provider's PKI hierarchy.
-   The latest versions of the Certificate Revocation Lists (CRLs).
-   Terms of Service and End-User Agreements.
-   The latest Conformity Assessment Report (CAR), if required to be public.

### 2.2. Publication of Revocation Information
-   **OCSP:** Revocation information is published to the OCSP service in near real-time, within the SLA defined in Section 7.
-   **Full CRLs:** A new full CRL is published at least once every **24 hours**.
-   **Delta CRLs:** A new delta CRL, containing changes since the last full CRL, is published at least once every **1 hour**.

---

## 3. IDENTIFICATION AND AUTHENTICATION PROCEDURES

### 3.1. Identification of Natural Persons (for QES)
The identity of a natural person is verified using methods equivalent to physical presence, compliant with eIDAS Article 24 and ETSI EN 319 411-1.

#### 3.1.1. Method 1: In-Person at RA Office
1.  The applicant physically presents themselves at an authorized Registration Authority (RA) office.
2.  The applicant presents a valid, original government-issued photo identification document (e.g., Greek ID card, passport).
3.  The RA Operator verifies the authenticity of the document by checking its physical security features (e.g., holograms, watermarks, UV markings).
4.  The RA Operator verifies that the person present is the person pictured in the document.
5.  The RA Operator records the document type, number, and expiry date, and takes a copy for the archive.
6.  The applicant signs the application form, confirming the accuracy of their details.

#### 3.1.2. Method 2: Remote Video Identification
1.  The applicant initiates a secure, real-time video session through the Provider's portal.
2.  An RA Operator verifies the quality of the connection (lighting, video/audio clarity).
3.  The applicant is asked to hold their identification document up to the camera, tilting it to show security features like holograms.
4.  The RA Operator performs a liveness check by asking the applicant to perform a random action (e.g., turn their head, read a displayed number).
5.  The entire session is recorded, encrypted, and stored securely as evidence of identification.

### 3.2. Identification of Legal Persons (for QSeal)
1.  **Verify Legal Existence:** The RA Operator verifies the legal person's existence and status by checking the official General Commercial Registry (G.E.M.H.) or equivalent European Business Register. The company name, registration number, and address are recorded.
2.  **Verify Representative's Authority:** The applicant (a natural person) must provide evidence of their authority to act on behalf of the legal person (e.g., a recent extract from G.E.M.H. showing their role as legal representative, or a notarized power of attorney).
3.  **Identify the Representative:** The natural person representing the legal entity is identified using one of the methods described in Section 3.1.

---

## 4. CERTIFICATE APPLICATION, RENEWAL, AND RE-KEY

### 4.1. Certificate Application
1.  Applications are submitted through a secure online portal.
2.  The applicant provides all required information (name, address, email, etc.).
3.  For certificates where the key is generated by the Subscriber, a Certificate Signing Request (CSR) in PKCS#10 format must be provided. The CSR must contain the public key to be certified.
4.  The RA Operator reviews the application for completeness and initiates the identification process.

### 4.2. Certificate Renewal
-   Subscribers are notified **60, 30, and 7 days** before their certificate expires.
-   Renewal (extending the validity of an existing certificate with the same key) is permitted only if the Subscriber's identification data has not changed.
-   The Subscriber must re-authenticate to the portal to confirm the renewal request.

### 4.3. Certificate Re-key
-   Re-keying involves issuing a new certificate with a new key pair.
-   It is mandatory if the original certificate has expired or if a renewal is not permitted.
-   If more than **27 months** have passed since the last identification event, the Subscriber must be fully re-identified according to the procedures in Section 3.

---

## 5. CERTIFICATE ACCEPTANCE AND USAGE

### 5.1. Certificate Acceptance
A certificate is deemed accepted by the Subscriber under the first of the following conditions:
-   When the Subscriber uses the certificate for the first time (e.g., to create a signature).
-   **7 days** after the Subscriber has been notified of the certificate's issuance, if they have not raised any objections.

### 5.2. Subscriber Obligations
Upon acceptance, the Subscriber is contractually bound to:
-   Use the certificate only for legal and intended purposes.
-   Take all reasonable measures to protect their private key and any associated activation data (PINs, passwords).
-   Immediately request revocation if the private key is compromised or suspected to be compromised.

---

## 6. REVOCATION PROCEDURES

### 6.1. Reasons for Revocation
A certificate shall be revoked upon:
-   A valid request from the Subscriber or their authorized representative.
-   Confirmed compromise or loss of the Subscriber's private key.
-   The information within the certificate becoming inaccurate (e.g., name change).
-   The Subscriber's failure to comply with their obligations.
-   Cessation of the Provider's operations.

### 6.2. Revocation Request Channels
The Provider operates a **24x7x365** service for accepting revocation requests through the following channels:

-   **Telephone:** A dedicated, toll-free number **[REVOCATION_HOTLINE]**. The requester must authenticate by answering pre-registered security questions.

-   **Web Portal:** A secure portal at **[WEBSITE_URL]/revoke**. The Subscriber must authenticate with their account credentials.

-   **Email:** An email to **[REVOCATION_EMAIL]**. The request is only processed if it is digitally signed with another valid certificate from a trusted provider or is followed by a telephone callback to the number on file.

#### 🔍 6.2.1. Telephone Revocation Authentication Protocol (EETT Article 11)

When a subscriber calls **[REVOCATION_HOTLINE]**, the following protocol is applied:

**Step 1: Operator Greeting**
"[LEGAL_NAME_EN] Revocation Hotline, [operator name] speaking. To revoke your certificate, I need to verify your identity. Please provide:"

**Step 2: Authentication Methods**

*Option A (Standard Authentication):*
-   Full name (as on certificate)
-   Certificate serial number (from certificate file or enrollment email)
-   Answer to pre-registered security question (e.g., mother's maiden name, favorite city, or custom question)

*Option B (High-Value Certificates - legal persons, high coverage):*
-   Option A information **AND**
-   Callback to registered phone number (from enrollment record)
-   Revocation proceeds only after successful callback verification

*Option C (Cannot Provide Security Answer - lost device):*
-   Subscriber name + email on file
-   Send one-time code via email (if accessible)
-   If email also inaccessible: Escalate to RA Manager for identity re-verification (may require in-person or video call with ID document)

**Step 3: Fraud Detection - Red Flags**

The operator is trained to recognize:
-   Caller hesitates or guesses security answer
-   Background noise suggests call center (mass revocation attack)
-   Caller pressures operator to rush ("It's urgent, just revoke it!")
-   Caller's voice/language doesn't match subscriber profile (e.g., male voice for female name)

**If fraud suspected:**
"I need to verify this with my supervisor. Please hold."
→ Escalate to RA Manager, attempt callback to subscriber's registered number to confirm.

**Step 4: Successful Authentication → Revocation**
-   Operator logs: Ticket ID, timestamp, subscriber name, cert serial, reason code, call recording reference
-   Enter revocation in system (status → revoked, reason, timestamp)
-   Confirm to caller: "Your certificate [serial] is now revoked. You will receive email and SMS confirmation within 1 hour. The revocation will appear in OCSP immediately and in CRL within 1 hour."

**Step 5: Call Recording**
All revocation calls are recorded and retained for 7 years (audit trail, dispute resolution).

### 6.3. Revocation Processing Time
-   Upon receipt of a valid request, the certificate status is changed to "revoked" in the CA database immediately.
-   The updated status is published to the OCSP responders within **15 minutes**.
-   The certificate serial number is included in the next hourly Delta CRL and the next daily Full CRL.

---

## 7. STATUS CHECKING SERVICES (OCSP & CRL)

### 7.1. OCSP Service
-   **Availability:** The OCSP service is provided with a **99.9%** uptime SLA.
-   **Architecture:** It is operated in a high-availability, load-balanced configuration across two data centers.
-   **URLs:** [OCSP_URL_1], [OCSP_URL_2]
-   **Response Time:** The service is designed to provide responses in under **200ms** (95th percentile).
-   **Security:** OCSP responses are signed by a dedicated, short-lived OCSP signing certificate, which is delegated by the Issuing CA. The service supports the **Nonce** extension to prevent replay attacks.

### 7.2. CRL Service
-   **Full CRL:** Published every **24 hours**. The `nextUpdate` field is set to 25 hours after issuance to provide an overlap period.
-   **Delta CRL:** Published every **1 hour**. The `nextUpdate` field is set to 70 minutes after issuance.
-   **Distribution Points:** CRLs are available via HTTP at the URLs specified in the certificate's `CRL Distribution Points` extension.

---

## 8. SECURITY MEASURES AND CONTROLS

### 8.1. Cryptographic Key Management
-   **Key Generation:** All CA private keys are generated in a multi-person **Key Ceremony** within a FIPS 140-2 Level 3 certified HSM. The ceremony is scripted, witnessed, and video-recorded.
-   **Key Storage:** All CA and TSA private keys are stored and used exclusively within HSMs. Subscriber private keys (for server-side signing) are managed within a certified QSCD.
-   **Key Backup:** Encrypted backups of CA private keys are created using an **M-of-N (e.g., 3-of-5)** secret sharing scheme. The shares are stored on smart cards held by trusted personnel and kept in secure, geographically separate locations.
-   **Key Destruction:** At the end of their lifecycle, keys are cryptographically destroyed using the HSM's secure zeroization functions. The process is logged and witnessed.

### 8.2. Physical and Environmental Controls
-   **Data Centers:** The infrastructure is hosted in two geographically separate Tier III+ certified data centers within Greece, with a minimum distance of **[DISTANCE] km** between them.
-   **Physical Access:** Access to data center floors requires multi-factor authentication (e.g., key card + biometric scan). Access to the Provider's cages and racks is further restricted and logged.
-   **Environmental Controls:** N+1 redundancy for power (UPS, generators) and cooling (HVAC), along with automated fire detection and suppression systems.

### 8.3. Logical Controls
-   **Network Security:** The network is segregated into zones (e.g., public, DMZ, production, management) using VLANs and firewalls. An Intrusion Detection/Prevention System (IDS/IPS) monitors all network traffic.
-   **Access Control:** The principle of **least privilege** is enforced. Administrative access to all systems requires Multi-Factor Authentication (MFA).
-   **System Hardening:** All servers are hardened according to industry best practices (e.g., CIS Benchmarks), with unnecessary services and ports disabled.

---

## 9. PERSONNEL REQUIREMENTS

### 9.1. Trusted Roles
Personnel are assigned to trusted roles with specific security responsibilities. Key roles include:
-   **QTS Manager:** Overall operational responsibility.
-   **CISO:** Manages and enforces security policy.
-   **Crypto Officer:** Responsible for the key management lifecycle.
-   **RA Operator:** Responsible for subscriber identification.
-   **System Administrator:** Manages the IT infrastructure.

### 9.2. Vetting and Training
-   **Background Checks:** All personnel assigned to trusted roles must pass a background check, including criminal record and employment history verification, prior to being granted access.
-   **Training:** All personnel receive formal training upon hiring and at least annually thereafter. Training covers security procedures, data protection (GDPR), and their specific role-based responsibilities.

---

## 10. AUDIT LOGGING AND MONITORING

### 10.1. Events Logged
All security-relevant events are logged, including but not limited to:
-   All certificate lifecycle operations (issuance, revocation, etc.).
-   All administrative access and actions on CA systems.
-   All authentication attempts (successful and failed).
-   All actions related to cryptographic key management.
-   Changes to system configurations or firewall rules.

### 10.2. Log Protection and Retention
-   Logs are generated with synchronized time-stamps and are protected against tampering.
-   Logs are collected in a centralized Security Information and Event Management (SIEM) system for correlation and analysis.
-   All audit logs are retained for a minimum of **7 years**.

---

## 11. RECORDS ARCHIVAL AND RETENTION

### 11.1. Retention Policy
In accordance with EETT Regulation Article 12, all records related to the provision of qualified services are retained for a minimum of **7 years** following the expiration or revocation of a certificate. This includes application data, identity verification evidence, signed agreements, and certificate lifecycle history.

### 11.2. Archive Protection
-   Archived data is stored in an encrypted format.
-   The integrity of the archive is verified periodically.
-   Backups of the archive are stored in a secure, geographically separate off-site location.

### 11.3. Right of Data Access (GDPR Article 15)
Subscribers have the right to obtain a copy of all personal data held by the Provider about them. Requests are answered within **7 working days**.

**Pseudonymization in Data Access Requests:**

When providing records to data subjects, we must balance their access right with the privacy protection of other individuals mentioned in records (e.g., our employees).

**Example:**

**Original Enrollment Record (internal):**
"Application #12345 for certificate serial 0x3F2A1B9C submitted 2024-03-15 10:23 UTC. Identity verified by RA Operator Maria Papadopoulou (employee ID 42). Approved by RA Manager Nikos Georgiou (employee ID 7). Certificate issued 2024-03-15 11:05 UTC."

**Pseudonymized Version (provided to data subject):**
"Application #12345 for certificate serial 0x3F2A1B9C submitted 2024-03-15 10:23 UTC. Identity verified by RA Operator #003. Approved by RA Manager #002. Certificate issued 2024-03-15 11:05 UTC."

**Rationale:** RA operators' names are not relevant to the data subject's access right, and disclosing employee names could enable social engineering attacks ("I spoke with Maria last time, can she help me again?").

**Re-identification:** We maintain an internal mapping (RA Operator #003 = Maria Papadopoulou) so we can re-identify if required by competent authority (e.g., EETT investigation: "Who approved this certificate?").

### 11.4. Right to Erasure (GDPR Article 17) - Limitations and Explanation

Under GDPR, you normally have the right to request deletion of your personal data. However, this right has exceptions.

**Legal Obligation to Retain:**

Per GDPR Article 17(3)(b), we cannot erase your data when processing is necessary for compliance with a legal obligation.

The eIDAS Regulation (EU) 910/2014 and EETT Κανονισμός require us to retain all certificate records for **7 years after the certificate expires**, even if you request deletion. This retention is essential for:

-   **Validating signatures/seals** created during the certificate's lifetime (even years later)
-   **Regulatory audits and investigations**
-   **Legal disputes** (e.g., proving a signature was valid at the time it was created)

**After 7 years:** We will securely delete your data per NIST SP 800-88 standards (secure media sanitization).

**What you CAN do:**
-   Request a copy of your data (GDPR Art. 15) - we'll respond within 7 working days
-   Request correction of inaccurate data (GDPR Art. 16) - may require certificate re-issuance
-   Object to processing for direct marketing (GDPR Art. 21) - we don't do marketing, so not applicable

---

## 12. DISASTER RECOVERY AND BUSINESS CONTINUITY

### 12.1. Business Continuity Plan (BCP)
The Provider maintains a BCP to ensure the continuity of operations in the event of a major disruption (e.g., pandemic, natural disaster).

### 12.2. Disaster Recovery Plan (DRP)
-   **RTO (Recovery Time Objective):** **[RTO] hours** for critical services (revocation, OCSP).
-   **RPO (Recovery Point Objective):** **[RPO] minutes** for critical data.
-   **DR Site:** A fully redundant hot site is maintained at the secondary data center, with real-time data replication.
-   **Testing:** The DRP is tested in full at least once per year to ensure its effectiveness and to train personnel.

---

## 13. INCIDENT RESPONSE PROCEDURES

The Provider maintains and implements a Security Incident Response Plan that includes:
-   **Incident Classification:** Incidents are classified from Level 1 (minor) to Level 5 (critical) based on the criteria in **Annex 3 of the EETT Regulation**.
-   **Reporting to EETT:** Any incident classified as Level 3 or higher is reported to EETT within **24 hours** of its detection, with a follow-up final report.
-   **Response Team:** A pre-defined Computer Security Incident Response Team (CSIRT) is activated to contain, investigate, and remediate incidents.
-   **Root Cause Analysis:** A post-incident analysis is performed to identify the root cause and implement preventive measures.

---

## 14. TSP TERMINATION PROCEDURES
The Provider's Termination Plan ensures an orderly cessation of services. It includes procedures for notifying EETT and all subscribers at least 3 months in advance (for planned termination), continuing revocation and status services, and securely transferring all archived records to a successor TSP or to EETT for the remainder of the 7-year retention period.

---

## 15. COMPLIANCE AND LEGAL PROVISIONS

### 15.1. Compliance Audits
The Provider is subject to an annual audit by an accredited CAB against the eIDAS Regulation and all relevant ETSI standards. The resulting Conformity Assessment Report (CAR) is provided to EETT.

### 15.2. Legal Notices
All legal notices shall be sent to the Provider's registered address.

---

## 16. FEES AND PAYMENTS
-   **Issuance Fees:** Fees for certificate issuance, renewal, and re-key are published on the Provider's website at **[WEBSITE_URL]/pricing**.
-   **Revocation Fees:** There is no fee for revoking a certificate.
-   **Payment:** Payments are accepted via credit card and bank transfer.

---

## 17. PUBLICATION AND AMENDMENTS

### 17.1. Responsibility
The **QTS Manager** is responsible for the maintenance and accuracy of this TSPS.

### 17.2. Amendment Procedure
This document is reviewed at least annually. Any substantive changes that affect the services provided will result in a new version being issued.

### 17.3. Notification
A new version of this TSPS will be published in the repository. Subscribers will be notified of material changes via email at least 30 days before they take effect.

---
**End of Document**