# TRUST SERVICE POLICY (TSP POLICY) - Version 1.0

**Last Updated:** 2025-11-14

**Company:** Greek Trust Services S.A.  
**Version:** 1.0  
**Issue Date:** 2025-06-15  
**Policy OID:** 1.3.6.1.4.1.55555.4.1  
**Status:** Final  
**Classification:** Public

---

## FRONT-MATTER COMPLIANCE CHECKLIST

This document satisfies the following regulatory requirements:

| Regulation/Standard | Requirement | Evidence Location |
|---------------------|-------------|-------------------|
| **eIDAS Regulation (EU) 910/2014** |
| Article 19(1) | Publication of trustworthy information about services | §1.4, §3 |
| Article 19(2) | Notification to qualified service users | §8, §12.3 |
| Article 24(1) | General requirements for QTSPs | §4.1, §6 |
| Article 24(2)(a) | Sufficient financial resources | §4.1 (commitment) |
| Article 24(2)(c) | Reliable systems and products | §6.1, §6.2 |
| Article 24(2)(d) | Maintenance of adequate liability coverage | §7.2 |
| Article 24(2)(e) | Conformity assessment | §9.2 |
| Article 24(2)(h) | Termination plan | §10 |
| Article 13 | Liability of qualified TSPs | §7 |
| **EETT Κανονισμός Παροχής Υπηρεσιών Εμπιστοσύνης** |
| Article 4 | Security measures | §6 |
| Article 5 | Incident management | §6.3 |
| Article 7-8 | Termination procedures | §10 |
| Article 12 | Record retention (7 years) | §4.1 |
| **ETSI EN 319 401** | General policy requirements for TSPs | Entire document structure |
| **ETSI EN 319 411-1** | Policy requirements for certificates (general) | §5, §6 |
| **ETSI EN 319 411-2** | Policy requirements for qualified certificates | §3.1, §5 |
| **ETSI EN 319 421** | Policy requirements for TSA | §3.1 |
| **GDPR (EU) 2016/679** |
| Article 5 | Principles of data processing | §8.3 |
| Article 6 | Lawfulness of processing | §8.3 |
| Article 13-14 | Information to data subjects | §8 |
| Article 15 | Right of access | §8.4 |
| Article 17 | Right to erasure (with limitations) | §8.4 |
| Article 37 | Designation of DPO | §8.1 |

**Compliance Status:** ✓ All mandatory requirements addressed  
**Last Reviewed:** 2025-06-15  
**Approved By:** George Papadopoulos, President & Chief Executive Officer

**Digital Signature Statement:** Digitally signed by George Papadopoulos (QES serial `0xA17F34C9E21B4455`) on 2025-06-15 using the Greek Trust Services QES CA. Validation data is archived under evidence ID EV-201.

---

## TABLE OF CONTENTS

1.  Introduction
2.  Definitions and Abbreviations
3.  Scope and Services
4.  Roles and Responsibilities
5.  Certificate Lifecycle Overview
6.  Security Commitments
7.  Liability Framework
8.  Privacy and Data Protection (GDPR)
9.  Complaints, Disputes, and Audits
10. Termination and Succession Plan
11. Governing Law and Dispute Resolution
12. Policy Administration

---

<!-- **Guidance:** This section sets the stage, defining the document's purpose, the legal and regulatory framework it operates within, and where it fits in the overall documentation hierarchy. -->
## 1. INTRODUCTION

### 1.1. Purpose
This Trust Service Policy (hereinafter "Policy" or "TSP Policy") constitutes the primary governance document of **Greek Trust Services S.A.** (hereinafter "the Provider" or "TSP"). It defines the high-level rules, commitments, and legal framework for the provision of Qualified and non-Qualified Trust Services. This Policy is intended for Subscribers, Relying Parties, Conformity Assessment Bodies (CABs), and the National Supervisory Body (EETT), providing a clear statement of the Provider's operational integrity and compliance.

### 1.2. Regulatory Compliance
This Policy is designed to be in full compliance with the following legal and standardization framework:
-   **Regulation (EU) No 910/2014 (eIDAS):** The primary European regulation governing trust services.
-   **Hellenic Telecommunications and Post Commission (EETT) Regulation:** Specific national requirements for trust service providers in Greece.
-   **ETSI EN 319 401:** General Policy Requirements for Trust Service Providers.
-   **ETSI EN 319 411-1 & 319 411-2:** Policy and security requirements for the issuance of certificates, including qualified certificates.
-   **ETSI EN 319 421:** Policy and security requirements for Trust Service Providers issuing timestamps.
-   **Regulation (EU) 2016/679 (GDPR):** General Data Protection Regulation.

**ETSI Standards Alignment Note:**  
This policy is structured to align with ETSI EN 319 401/411/421 standards to facilitate interoperability with other EU Trust Service Providers and meet common industry expectations. However, **ETSI standards are not legally mandatory** under eIDAS; all mandatory requirements are derived from Regulation (EU) 910/2014 (eIDAS) and the EETT Κανονισμός. Where this policy exceeds legal minimums by following ETSI best practices, such provisions are marked as **(ETSI Recommended)** vs. **(eIDAS/EETT Mandatory)**. This ensures transparency regarding which requirements are legally binding versus voluntary industry best practices adopted by the Provider for enhanced security and interoperability.

### 1.3. Document Hierarchy
This TSP Policy is the highest-level document describing the Provider's services. It is supported by the **Trust Service Practice Statement (TSPS)**, which details the specific procedures and mechanisms used to implement the commitments made in this Policy. In case of any conflict, this Policy shall take precedence over the TSPS.

### 1.4. Publication and Repository
This Policy and other relevant public documents are published on the Provider's official website at: **https://www.greektrustservices.gr/repository**. The repository is available 24x7 and serves as the central point for accessing public information.

---

<!-- **Guidance:** Ensure all key terms used throughout the policy are clearly defined here. Referencing a master glossary is a good practice for consistency across all documentation. -->
## 2. DEFINITIONS AND ABBREVIATIONS

-   **CA (Certification Authority):** An entity that issues digital certificates.
-   **CAB (Conformity Assessment Body):** An accredited body that performs conformity assessments of the TSP.
-   **CAR (Conformity Assessment Report):** The report issued by the CAB.
-   **eIDAS:** Regulation (EU) No 910/2014.
-   **EETT:** Hellenic Telecommunications and Post Commission, the Greek Supervisory Body.
-   **GDPR:** Regulation (EU) 2016/679 on data protection.
-   **HSM (Hardware Security Module):** A secure cryptographic device used to generate, store, and protect cryptographic keys.
-   **Provider (TSP):** The company Greek Trust Services S.A..
-   **QES:** Qualified Electronic Signature.
-   **QSeal:** Qualified Electronic Seal.
-   **QTS:** Qualified Electronic Time-Stamp.
-   **QSCD (Qualified Signature/Seal Creation Device):** A device certified to create qualified electronic signatures or seals.
-   **Relying Party:** A natural or legal person that relies upon a trust service (e.g., verifies a signature's validity).
-   **Subscriber:** The natural or legal person to whom a certificate is issued and who is bound by the terms of use.
-   **TSPS (Trust Service Practice Statement):** The document detailing the operational procedures for implementing this Policy.

---

<!-- **Guidance:** Clearly list all qualified services governed by this policy. Specify the intended users (e.g., general public, closed user groups) and any limitations on the use of the services. -->
## 3. SCOPE AND SERVICES

### 3.1. Qualified Services
Upon approval from EETT, the Provider will offer the following qualified trust services under the scope of this Policy:
-   **Qualified Certificates for Electronic Signatures (QES):** For natural persons, enabling the creation of signatures with the equivalent legal effect of a handwritten signature.
-   **Qualified Certificates for Electronic Seals (QSeal):** For legal persons, ensuring the origin and integrity of data.
-   **Qualified Electronic Time-Stamps (QTS):** Providing legally valid proof of the existence of data at a specific point in time.
-   *(Additional services like QWAC, Validation, Preservation, REM to be listed as applicable)*

### 3.2. Service Applicability
This Policy applies to all stages of the trust service lifecycle, from identity verification and issuance to revocation and archival. It governs all personnel, processes, and technologies involved in service delivery.

### 3.3. User Communities
The services are designed for use by:
-   **Subscribers:** Natural and legal persons in Greece and across the EU requiring qualified trust services for business, legal, or personal use.
-   **Relying Parties:** Any entity within the EU that needs to verify the validity of signatures, seals, or timestamps created using the Provider's services.

---

<!-- **Guidance:** Clearly delineate the obligations of the TSP, the certificate subscribers (users), and the relying parties (those who trust the certificates). This section is crucial for liability and legal clarity. -->
## 4. ROLES AND RESPONSIBILITIES

### 4.1. Provider's Responsibilities
The Provider is fully responsible for the provision of its trust services and commits to:
-   **Compliance:** Adhere strictly to the eIDAS Regulation and EETT's national framework.
-   **Security:** Implement and maintain robust technical, physical, and organizational security measures as detailed in the TSPS and audited annually by a CAB.
-   **Reliability:** Ensure high availability of all services, including a 24x7 revocation and status checking (OCSP/CRL) service.
-   **Transparency:** Maintain a public repository of all relevant policies, terms, and conditions.
-   **Accountability:** Maintain adequate financial resources and professional liability insurance to cover risks associated with service provision, in line with eIDAS Art. 24(2)(d).
-   **Recordkeeping:** Securely maintain all records related to qualified services for a minimum of 7 years after certificate expiry, as required by EETT Regulation Article 12.

### 4.2. Subscriber's Responsibilities
The Subscriber is contractually obligated to:
-   **Provide Accurate Information:** Submit truthful and accurate information during the registration and identity verification process.
-   **Protect Private Keys:** Safeguard their signature/seal creation data (e.g., PINs, passwords, QSCDs) and not share them with any third party.
-   **Request Revocation:** Immediately request the revocation of their certificate upon suspicion or confirmation of private key compromise, loss, or theft.
-   **Adhere to Terms:** Use the certificate strictly in accordance with the terms and conditions outlined in the End-User Agreement.

### 4.3. Relying Party's Responsibilities
A Relying Party must:
-   **Crucially, verify the validity and check the revocation status of a certificate using the Provider's OCSP or CRL services *at the time of the transaction*. Failure to perform this check invalidates any claim for damages against the Provider.**
-   Acknowledge any liability limits or usage constraints specified in this Policy.
-   Take reasonable steps to mitigate any potential damages.

---

<!-- **Guidance:** This section provides a high-level summary of the key stages a certificate goes through. The detailed operational procedures for each stage are described in the TSPS (Doc 05). -->
## 5. CERTIFICATE LIFECYCLE OVERVIEW

### 5.1. Registration and Identification
🔍 **CAB Review Required**  
The Provider performs identity verification using methods that are equivalent to physical presence, as mandated by eIDAS Article 24 and detailed in ETSI EN 319 411-1/2. The specific procedures (e.g., in-person at RA offices, remote video identification) are described in the TSPS.

**(eIDAS/EETT Mandatory)** Identity verification must meet eIDAS Article 24(1)(c) requirements for qualified services.

### 5.2. Certificate Issuance
Following successful identity verification and validation of the application, the Provider issues the certificate. The process is automated to ensure compliance with the certificate profiles defined in the ETSI EN 319 412 series.

### 5.3. Certificate Acceptance
A certificate is considered accepted by the Subscriber upon its first use or after a predefined period following its delivery, as specified in the End-User Agreement.

### 5.4. Renewal and Re-key
Certificates may be renewed to extend their validity period. The Provider makes a distinction between "renewal" (extending validity with the same key) and "re-key" (issuing a new certificate with a new key pair).

-   **Renewal:** For renewals that do not involve a change of key pair, the Provider may rely on previously submitted identification data, provided the Subscriber confirms their data has not changed.
-   **Re-key:** For any renewal that involves the creation of a new key pair, the identity of the Subscriber **must be verified again with the same level of assurance and using the same procedures as required for an initial registration.** This ensures the integrity of the binding between the identity and the new key pair.

### 5.5. Revocation
The Provider operates a 24x7 revocation service, accessible via telephone, email, and a secure web portal. Revocation requests are processed immediately upon verification, and the status is published via OCSP and CRL within the timeframes committed to in the TSPS.

---

<!-- **Guidance:** This section contains the high-level security promises made to the public. It should cover technical, physical, and organizational controls. The specific implementation of these controls is detailed in the TSPS. -->
## 6. SECURITY COMMITMENTS

### 6.1. Technical Security
🔍 **CAB Review Required**  
-   **Cryptographic Controls:** All CA and TSA private keys are generated, stored, and managed exclusively within FIPS 140-2 Level 3 certified HSMs. Cryptographic algorithms and key lengths comply with ETSI TS 119 312.  
    **(eIDAS/EETT Mandatory)** Key management must meet eIDAS Article 24(2)(c) requirements for secure, reliable systems.
-   **Infrastructure Security:** The PKI architecture is based on a physically isolated, offline Root CA and multiple, redundant online Issuing CAs. The network is protected by firewalls, IDS/IPS, and DDoS mitigation services.  
    **(ETSI Recommended)** Offline Root CA architecture follows ETSI EN 319 411-2 best practices.

### 6.2. Physical Security
The Provider's core infrastructure is hosted in geographically separate, Tier III+ certified data centers within the EU, whose official compliance certificates are available for audit. Access to the cryptographic hardware is protected by the following sequential layers of security:

*   **Layer 1 (Facility Perimeter):** 24x7 security guards, perimeter fencing, and vehicle access control.
*   **Layer 2 (Building Access):** Biometric and key-card access required to enter the data center building. All visitors are registered, escorted, and logged.
*   **Layer 3 (Data Hall Access):** A second set of biometric and key-card controls for entry into the main data hall.
*   **Layer 4 (Cage Access):** Access to the Provider's private, locked cage requires a separate, unique key-card.
*   **Layer 5 (Rack Access):** The server racks containing the CA and HSM hardware are individually locked.

Access to the cage and racks (Layers 4 and 5) is restricted to a pre-authorized list of named personnel in `Crypto Officer` or `System Administrator` roles. All physical access to the cage is logged, reviewed on a monthly basis by the CISO, and the logs are retained for a minimum of two years.

### 6.3. Organizational Security
-   **Risk Management:** A formal risk management framework aligned with ISO 31000 is maintained and reviewed annually.
-   **Incident Management:** A comprehensive Incident Response Plan, compliant with EETT Regulation Article 5 and Annex 3, is in place and tested regularly.
-   **Personnel Security:** The Provider implements robust controls for managing personnel in trusted roles, including the following:
    -   **6.3.1 Screening and Background Checks:** All personnel assigned to trusted roles, including but not limited to CA Administrators, RA Operators, and Crypto Officers, must undergo a formal screening process and background check prior to being granted access to the TSP's secure infrastructure.
    -   **6.3.2 Training and Awareness:** All personnel receive security awareness training upon hiring and annually thereafter. Personnel in trusted roles receive additional, role-specific training on their security and operational duties at least semi-annually and upon any significant change in procedures.
    -   **6.3.3 Separation of Duties:** Critical TSP functions are enforced through technical and procedural controls to ensure separation of duties. For example, the role responsible for approving a certificate request is distinct from the role responsible for executing the certificate issuance.
-   **Audits:** The Provider is subject to annual, independent audits by an accredited CAB to ensure ongoing compliance with all regulatory requirements.

### 6.4. Remote QSCD Architecture
Remote signing services leverage a QSCD server-signing implementation described in **Appendix A – QSCD Remote Signing**. The appendix covers:
- The Signature Activation Module (SAM) and Signature Server Application (SSA) layers, including authorization tokens and HTBS binding.
- Sole-control enforcement through multi-factor authentication (PIN + possession token + biometric) and anti-replay protections.
- Key generation, storage, and activation controls that comply with eIDAS Annex II and CEN EN 419 241-1/-2, including certified HSM requirements.

This policy mandates that any change to the QSCD software stack, HSM estate, or SAM workflows be reflected in Appendix A and notified to EETT within seven (7) calendar days pursuant to Article 3.5 of the EETT Regulation.

---

<!-- **Guidance:** This section is legally critical. It must accurately reflect the liability model defined in the eIDAS Regulation (Article 13) and any limitations permitted under national law. It should also reference the professional liability insurance coverage. -->
## 7. LIABILITY FRAMEWORK

### 7.1. Provider's Liability
In accordance with **Regulation (EU) 910/2014 (eIDAS), Article 13, paragraph 1**, the Provider is liable for damages caused intentionally or negligently to any natural or legal person due to a failure to comply with its obligations for qualified trust services.

**Key Legal Implications:**
-   **Reversed Burden of Proof:** Unlike standard contracts where the claimant must prove the service provider's fault, under eIDAS Article 13, the **Provider bears the burden of proving it acted without negligence**. This reversed burden of proof provides strong protection for Relying Parties who trust our qualified certificates.
-   **Strict Liability Standard:** The Provider is held to a high standard of care expected of qualified trust service providers under EU law.
-   **Scope:** This liability applies to all qualified trust services covered by this Policy (QES, QSeal, QTS, etc.).

**(eIDAS/EETT Mandatory)** Liability framework per eIDAS Article 13 and Article 24(2)(d).

### 7.2. Financial Liability Limits
Where the Provider is found to be liable for damages, and in cases other than gross negligence or willful misconduct, the financial liability for a single incident is limited to a sum specified in the End-User Agreement. This amount is determined based on the certificate type and its recommended transaction value. These financial limits are backed by a comprehensive professional liability insurance policy.

### 7.3. Limitations of Warranty
The Provider warrants that its services are provided in accordance with this Policy and the eIDAS Regulation. The services are provided "as is". Except for the express warranties stated herein, the Provider disclaims all other warranties. The Provider is not liable for damages arising from:
-   A Subscriber's failure to protect their private key.
-   A Relying Party's failure to perform the required checks (as defined in Section 4.3).
-   Events of force majeure.

---

<!-- **Guidance:** Detail your commitment to data protection, specifying the types of personal data processed, the legal basis for processing, and how data subjects can exercise their rights under GDPR. -->
## 8. PRIVACY AND DATA PROTECTION (GDPR)

### 8.1. GDPR Compliance
The Provider acts as a **Data Controller** for the personal data it collects and is fully committed to processing this data in compliance with Regulation (EU) 2016/679 (GDPR). A Data Protection Officer (DPO) has been appointed to oversee compliance.

### 8.2. Data Processed
The Provider processes personal data including, but not limited to, identity information (name, ID number), contact details, technical identifiers (IP addresses, certificate serial numbers), and audit logs of transactions.

### 8.3. Purpose and Legal Basis
Personal data is processed for the following legal bases:
-   **Art. 6(1)(b) GDPR:** Necessary for the performance of the contract with the Subscriber.
-   **Art. 6(1)(c) GDPR:** Necessary for compliance with a legal obligation, namely the eIDAS Regulation and EETT's framework.

### 8.4. Data Subject Rights
Data subjects have the following rights under GDPR:

**Rights You Can Exercise:**
-   **Right of Access (Article 15):** You may request a copy of all personal data we hold about you. We will respond within 7 working days and provide the information in a structured, commonly used, and machine-readable format.
-   **Right to Rectification (Article 16):** If any of your personal data is inaccurate or incomplete, you may request correction. Note that for data embedded in issued certificates, correction may require certificate re-issuance with associated fees.
-   **Right to Data Portability (Article 20):** You may request your personal data in a portable format for transfer to another service provider.
-   **Right to Object (Article 21):** You may object to processing for direct marketing purposes. However, we do not use personal data for marketing, so this right is generally not applicable to our services.

**Right to Erasure (Article 17) - Important Limitation:**

Under GDPR, you normally have the right to request deletion of your personal data ("right to be forgotten"). However, this right has exceptions. 

**Per GDPR Article 17(3)(b)**, we **cannot erase your data** when processing is necessary to comply with a legal obligation to which we are subject.

**Why We Must Retain Your Data:**
-   The eIDAS Regulation (EU) 910/2014 and EETT Κανονισμός (Article 12) **legally require** us to retain all certificate records, including your personal data, for **7 years after the certificate expires**.
-   This retention is essential for:
    - **Validating signatures/seals** created during the certificate's lifetime, even years after the certificate expired
    - **Regulatory audits and investigations** by EETT and other competent authorities
    - **Legal disputes:** Proving that a signature was valid at the time it was created (e.g., for contract enforcement, court proceedings)
    - **Relying party protection:** Third parties who relied on your certificate must be able to verify its validity history

**After the 7-Year Retention Period:**
We will securely delete your personal data per NIST SP 800-88 standards (cryptographic erasure and secure media sanitization). You will not need to make another request; deletion happens automatically.

To exercise any of these rights, please contact our Data Protection Officer. The detailed, step-by-step internal procedure for handling such requests is documented in `DOC-GDPR-DSAR-001: Data Subject Access Request Procedure`, which ensures a consistent and timely response. A log of all requests is maintained for audit purposes.

**Contact Our DPO:**
For any data protection questions or to exercise your rights, contact our Data Protection Officer:
-   Email: dpo@greektrustservices.gr
-   Phone: +30 210 614 5109

**(eIDAS/EETT Mandatory)** 7-year retention per EETT Article 12 and eIDAS Article 24(2)(g).

### 8.5. Privacy Policy
For a detailed description of data processing activities, retention periods, and security measures, please refer to the Provider's full Privacy Policy, available at: **https://www.greektrustservices.gr/privacy**

---

<!-- **Guidance:** This section outlines the mechanisms for accountability and oversight. It should describe how users can raise issues and confirm the TSP's commitment to regular, independent audits. -->
## 9. COMPLAINTS, DISPUTES, AND AUDITS

### 9.1. Complaints Procedure
Subscribers, Relying Parties, or other stakeholders may submit complaints regarding the Provider's services via:
-   **Email:** complaints@greektrustservices.gr
-   **Web Form:** https://www.greektrustservices.gr/complaints

The Provider will acknowledge receipt within 2 business days and provide a formal response within 10 business days. An escalation path to management is available if the initial response is unsatisfactory.

### 9.2. Audits
The Provider's operations, policies, and procedures are subject to annual audits by an independent, accredited Conformity Assessment Body (CAB). The Conformity Assessment Report (CAR) is submitted to EETT and made available as required.

---

<!-- **Guidance:** This section references the mandatory Termination Plan (Dossier 08). It assures users and regulators that there is a plan to protect them if the TSP ceases operations. -->
## 10. TERMINATION AND SUCCESSION PLAN

In accordance with **eIDAS Article 24(2)(h)** and **EETT Articles 7-8**, the Provider maintains a comprehensive **Termination Plan**. This plan ensures the continuity of trust and protection of user information in the event the Provider ceases its operations. Key provisions include:
-   **Notification:** A minimum of 3 months' advance notification to EETT, Subscribers, and Relying Parties for planned terminations.
-   **Service Continuity:** Continued operation of revocation and status services (OCSP/CRL) until the last issued certificate has expired.
-   **Archive Handover:** Secure transfer of all legally required records to another qualified TSP or to EETT, ensuring their integrity and accessibility for the mandatory 7-year retention period.
-   **Financial Provisions:** An escrow fund or insurance policy is in place to cover the costs of executing the termination plan.

---

<!-- **Guidance:** Specify the legal jurisdiction that governs this policy and the services offered. -->
## 11. GOVERNING LAW AND DISPUTE RESOLUTION

-   **Governing Law:** This Policy and all services provided hereunder are governed by the laws of the Hellenic Republic (Greece) and applicable European Union law.
-   **Jurisdiction:** Any disputes shall be subject to the exclusive jurisdiction of the Courts of Athens, Greece.
-   **Alternative Dispute Resolution:** The parties are encouraged to seek resolution through mediation before initiating litigation.

---

<!-- **Guidance:** Define who is responsible for this policy, how it is updated, and how changes are communicated to the public. This demonstrates good governance. -->
## 12. POLICY ADMINISTRATION

### 12.1. Responsibility
The Provider's **Qualified Trust Services (QTS) Manager** is responsible for the maintenance, review, and enforcement of this Policy.

### 12.2. Review and Approval
This Policy is reviewed at least annually, or upon significant changes to the legal framework, technology, or business operations. The review and approval process is as follows:

1.  **Responsibility:** The QTS Compliance Officer is responsible for initiating the review process.
2.  **Approval Authority:** The **Trust Service Governance Committee (TSGC)**, which includes the CISO, Head of Operations, and DPO, is the designated approval authority.
3.  **Documentation:** All reviews, modifications, and approvals are tracked, documented, and signed off within the company's official Change Management System (e.g., Jira, ServiceNow) under a dedicated "eIDAS Policy Review" ticket. The initial approval for this version is logged under ticket `QTS-POL-2024-001`.

### 12.3. Publication and Notification

## Change Log

- **v1.0:** Initial version created on 2025-11-14.
The current version of this Policy will always be available in the public repository. Subscribers will be notified of any material changes at least 30 days prior to their effective date.

---
## Appendix A – Qualified Signature Creation Device (QSCD)
## Remote Signing Architecture & Sole Control Implementation

**Document Reference:** 04_TSP_Policy_GR_EN  
**Version:** 1.0  
**Date:** 2025-06-15  
**Status:** Technical Specification  
**Compliance:** eIDAS Regulation Annex II, CEN EN 419 241-1/2

---

## 1. INTRODUCTION

### 1.1 Purpose
This appendix specifies the technical architecture and operational procedures for Greek Trust Services S.A.'s remote Qualified Signature Creation Device (QSCD) solution, ensuring compliance with eIDAS Regulation (EU) No 910/2014 Annex II requirements.

### 1.2 Scope
- Remote QSCD architecture for qualified electronic signatures (QES)
- Sole control implementation mechanisms
- Key generation, storage, and activation procedures
- Security controls preventing key duplication

### 1.3 Regulatory Framework
- **eIDAS Annex II:** Requirements for qualified signature creation devices
- **CEN EN 419 241-1:** Trustworthy Systems Supporting Server Signing - Part 1: General System Security Requirements
- **CEN EN 419 241-2:** Trustworthy Systems Supporting Server Signing - Part 2: Protection Profile for QSCD for Server Signing
- **CEN EN 419 221-5:** Protection Profiles for TSP Cryptographic Modules - Part 5: Cryptographic Module for Trust Services

---

## 2. ARCHITECTURAL OVERVIEW

### 2.1 High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    End User Device                          │
│  ┌──────────────┐   ┌────────────────────────────────┐    │
│  │ Web Browser  │   │  Mobile App (iOS/Android)      │    │
│  │ (WebAuthn)   │   │  (Biometric + PIN)             │    │
│  └──────┬───────┘   └────────┬───────────────────────┘    │
└─────────┼────────────────────┼────────────────────────────┘
          │ TLS 1.3            │ TLS 1.3 + mTLS
          │ (HTTPS)            │ (Certificate Pinning)
          ▼                    ▼
┌─────────────────────────────────────────────────────────────┐
│            Signature Activation Module (SAM)                │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Multi-Factor Authentication Engine                  │  │
│  │  • Knowledge: PIN/Password (6-12 digits)            │  │
│  │  • Possession: Mobile device (TOTP/Push notification)│  │
│  │  │             OR Hardware token (FIDO2)            │  │
│  │  • Inherence: Biometric (fingerprint/face ID)       │  │
│  │               Optional but recommended               │  │
│  └──────────────────────────────────────────────────────┘  │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Signature Authorization Protocol (SAP)              │  │
│  │  • Time-limited authorization token (60 seconds)     │  │
│  │  • Single-use nonce (prevents replay attacks)       │  │
│  │  • Hash-to-be-signed (HTBS) binding                 │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────┬───────────────────────────────────┘
                          │ Internal Network (Isolated VLAN)
                          ▼
┌─────────────────────────────────────────────────────────────┐
│         Server Signing Application (SSA)                    │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Signature Coordination Layer                        │  │
│  │  • Validates authorization token                     │  │
│  │  • Enforces sole control policies                    │  │
│  │  • Logs all signature operations (audit trail)       │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────┬───────────────────────────────────┘
                          │ PKCS#11 / CNG / JCE API
                          ▼
┌─────────────────────────────────────────────────────────────┐
│  Hardware Security Module (HSM) - FIPS 140-2 Level 3       │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Cryptographic Signing Engine                        │  │
│  │  • Private keys stored in HSM (never exported)       │  │
│  │  │  Key Handle ID linked to user identity           │  │
│  │  • Signature algorithm: RSA-PSS 2048/3072/4096      │  │
│  │  │                       ECDSA P-256/P-384/P-521    │  │
│  │  • Hash algorithm: SHA-256, SHA-384, SHA-512        │  │
│  └──────────────────────────────────────────────────────┘  │
│  Model: Thales Luna Network HSM 7 (Clustered)              │
│  Certification: FIPS 140-2 Level 3, Common Criteria EAL 4+ │
└─────────────────────────────────────────────────────────────┘
```

### 2.2 Key Components

#### 2.2.1 Signature Activation Module (SAM)
- **Function:** Authenticates user and authorizes signature operations
- **Deployment:** High-availability cluster (minimum 2 nodes)
- **Technology:** REST API with OAuth 2.0 + OpenID Connect
- **Session Management:** Redis (encrypted, ephemeral sessions <5 minutes)

#### 2.2.2 Server Signing Application (SSA)
- **Function:** Coordinates signature creation with HSM
- **Deployment:** Application servers in isolated VLAN
- **Technology:** Java Spring Boot / .NET Core with HSM provider libraries
- **Performance:** <2 second signature latency (p95)

#### 2.2.3 Hardware Security Module (HSM)
- **Model:** Thales Luna Network HSM 7
- **Certification:** FIPS 140-2 Level 3, Common Criteria EAL 4+
- **Key Storage:** Private keys generated and stored exclusively in HSM
- **Redundancy:** N+1 HSM cluster with key replication

---

## 3. SOLE CONTROL IMPLEMENTATION

### 3.1 eIDAS Annex II Requirements

Per eIDAS Annex II, a QSCD must ensure:
1. **Sole control:** Signature creation data can be used only once and its confidentiality is ensured
2. **No duplication:** Signature creation data cannot be derived, duplicated, or reconstructed
3. **Protection:** Signature creation data is reliably protected against use by others

### 3.2 Sole Control Mechanisms

#### 3.2.1 Multi-Factor Authentication (Mandatory)
**Minimum 2 Factors Required:**

| Factor | Type | Implementation | Security Level |
|--------|------|----------------|----------------|
| **Knowledge** | PIN/Password | 6-12 digit PIN, entered on user device | Required |
| **Possession** | Mobile device OR Hardware token | TOTP (time-based one-time password) via mobile app, OR FIDO2 hardware key | Required (one of) |
| **Inherence** | Biometric | Fingerprint or Face ID (on mobile device) | Recommended |

**Authentication Flow:**
1. User enters PIN on trusted device
2. System sends push notification to registered mobile device OR requests FIDO2 hardware key
3. User approves signature request (with biometric if available)
4. SAM generates time-limited authorization token (60-second validity)
5. Token binds to: User identity + Hash-to-be-signed + Nonce + Timestamp

#### 3.2.2 Activation Data Separation
- **PIN Storage:** Hashed with Argon2id (memory-hard function), salted, stored in separate database
- **Device Binding:** Mobile device certificate or FIDO2 attestation bound to user account
- **Key Handle Isolation:** Each user's private key identified by unique handle, access controlled by authorization token

#### 3.2.3 Signature Authorization Protocol (SAP)
```json
{
  "authorization_token": "eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user_id": "uuid-of-user",
  "key_handle_id": "uuid-of-private-key",
  "htbs": "SHA256-hash-of-document-to-be-signed",
  "nonce": "random-single-use-value",
  "timestamp": "2025-01-15T14:32:10Z",
  "expires_at": "2025-01-15T14:33:10Z",
  "mfa_methods": ["pin", "totp", "biometric"]
}
```

**Token Validation (by SSA):**
- Signature valid (ECDSA P-256 signed by SAM)
- Not expired (<60 seconds old)
- Nonce not previously used (checked against Redis cache)
- HTBS matches document hash
- User has active certificate (not revoked/suspended)

#### 3.2.4 Key Isolation & Non-Exportability
- **Key Generation:** Performed exclusively within HSM (never in software)
- **Key Storage:** Private keys never leave HSM secure boundary
- **Key Backup:** Encrypted with M-of-N key splitting (minimum 3-of-5 custodians)
- **Key Usage:** PKCS#11 C_Sign operation called only after successful authorization
- **Audit Logging:** All key usage logged with user identity, timestamp, HTBS, authorization token ID

### 3.3 Prevention of Unauthorized Use

#### 3.3.1 Session Management
- **Session Duration:** Maximum 5 minutes after authentication
- **Signature Limit:** 1 signature per authorization token (single-use)
- **Concurrent Sessions:** Maximum 1 active session per user (enforced by SAM)
- **Idle Timeout:** 2 minutes of inactivity triggers session termination

#### 3.3.2 Rate Limiting & Fraud Detection
- **Authentication Attempts:** Maximum 3 failed PIN attempts → 15-minute lockout
- **Daily Signature Limit:** Configurable per user (default: 100 signatures/day)
- **Velocity Checks:** Maximum 10 signatures per minute per user
- **Anomaly Detection:** ML-based detection of unusual signing patterns (time, location, volume)

#### 3.3.3 Tamper Detection
- **HSM Tamper Response:** Key zeroization upon physical tamper detection
- **Application Integrity:** Code signing with periodic validation
- **Network Monitoring:** IDS/IPS monitoring for PKCS#11 API abuse

---

## 4. KEY LIFECYCLE MANAGEMENT

### 4.1 Key Generation

**Process:**
1. User completes identity verification (per Certificate Policy)
2. User registers mobile device and sets activation PIN
3. SSA sends key generation request to HSM with user metadata
4. HSM generates key pair (RSA 3072-bit or ECDSA P-256) within secure boundary
5. Public key extracted and embedded in X.509 certificate
6. Private key handle ID stored in user profile (encrypted at rest)
7. User receives certificate and performs test signature

**Parameters:**
- **Algorithm:** RSA-PSS 3072-bit (default) or ECDSA P-256 (optional)
- **Curve (ECDSA):** NIST P-256 (secp256r1)
- **Key Usage:** digitalSignature, nonRepudiation
- **Validity:** 1-3 years (configurable per service level)

### 4.2 Key Storage

**HSM Partition Structure:**
```
HSM Partition: QES_PROD
├── User Keys (1:1 mapping)
│   ├── Key Handle ID: 550e8400-e29b-41d4-a716-446655440000
│   │   └── Private Key: RSA-3072 (non-exportable)
│   ├── Key Handle ID: 6ba7b810-9dad-11d1-80b4-00c04fd430c8
│   │   └── Private Key: ECDSA-P256 (non-exportable)
│   └── ...
├── Access Control: Token-based authorization only
└── Audit Log: All operations logged
```

**Encryption at Rest:**
- HSM internal encryption (AES-256 GCM)
- Key backup encrypted with M-of-N key splitting (AES-256)
- Database encryption for user profiles (AES-256 GCM with key rotation every 90 days)

### 4.3 Key Activation

**Per-Signature Activation:**
1. User initiates signature (via web or mobile app)
2. Document hash (HTBS) computed client-side
3. User authenticates with MFA (PIN + TOTP/FIDO2 + optional biometric)
4. SAM generates authorization token (60-second validity)
5. SSA validates token and calls HSM C_Sign with key handle ID
6. HSM performs signature operation (RSA-PSS or ECDSA)
7. Signature returned to client, token invalidated

**No Persistent Activation:** Private key never "unlocked" for extended periods; each signature requires fresh authorization.

### 4.4 Key Revocation

**Triggers:**
- User request (online revocation form or hotline call)
- Certificate expiration
- Compromise notification
- Subscriber agreement termination
- Inactivity >2 years

**Process:**
1. Revocation request received by RA (Registration Authority)
2. Certificate status updated in database (revoked)
3. CRL updated within 1 hour
4. OCSP responder updated immediately
5. HSM key handle marked as inactive (key remains for audit, cannot be used for signing)
6. User notified via email/SMS

**Key Deletion:**
- Retained in HSM for 7 years (audit/legal requirements)
- Securely deleted after retention period using HSM zeroization procedures

---

## 5. SECURITY CONTROLS

### 5.1 Network Security

**Isolation:**
- SAM in DMZ (public-facing)
- SSA in internal VLAN (no direct internet access)
- HSM in crypto VLAN (isolated from all other networks)

**Firewall Rules:**
```
DMZ (SAM) → Internal VLAN (SSA): TCP 8443 (HTTPS with mTLS)
Internal VLAN (SSA) → Crypto VLAN (HSM): TCP 1792 (PKCS#11 over TLS)
All other traffic: DENY
```

**Encryption:**
- Client ↔ SAM: TLS 1.3 with certificate pinning
- SAM ↔ SSA: TLS 1.3 with mutual authentication (client certificates)
- SSA ↔ HSM: PKCS#11 over TLS 1.2+ with HSM client authentication

### 5.2 Access Control

**Role-Based Access Control (RBAC):**

| Role | Permissions | MFA Required |
|------|-------------|--------------|
| **End User** | Initiate signature, view own certificates | Yes (2FA) |
| **RA Operator** | Issue/revoke certificates, verify identities | Yes (2FA + hardware token) |
| **Crypto Officer** | HSM key ceremony, backup/restore | Yes (3FA + physical presence) |
| **System Administrator** | Configure SSA, monitor logs | Yes (2FA + hardware token) |
| **Security Auditor** | Read-only access to logs and configurations | Yes (2FA) |

**Separation of Duties:**
- No single person can generate keys, issue certificates, and revoke certificates
- Minimum 2 Crypto Officers required for HSM key ceremonies (M-of-N)

### 5.3 Audit & Monitoring

**Logged Events:**
- User authentication (success/failure, timestamp, IP, device ID)
- Signature operations (user ID, key handle, HTBS, timestamp, authorization token ID)
- Key lifecycle events (generation, revocation, deletion)
- HSM operations (all PKCS#11 API calls)
- Administrative actions (configuration changes, user provisioning)

**Log Retention:**
- 7 years (compliance with Article 12 EETT Regulation)
- Stored in tamper-evident log system (write-once-read-many storage)
- Daily integrity verification (Merkle tree hashing)

**Real-Time Monitoring:**
- SIEM integration (Splunk, ELK, or equivalent)
- Alerts for:
  - Failed authentication attempts (>3 in 5 minutes)
  - Unusual signature volume (>100/hour per user)
  - HSM tamper detection
  - SSA/SAM service unavailability

### 5.4 Disaster Recovery

**Recovery Time Objective (RTO):** 4 hours  
**Recovery Point Objective (RPO):** 15 minutes

**Backup Strategy:**
- HSM key backup: Weekly, encrypted with M-of-N, stored in geographically separated vaults
- Database backup: Hourly incremental, daily full, encrypted AES-256
- Configuration backup: Version-controlled (Git), daily snapshots

**Failover:**
- Active-passive HSM cluster (automatic failover <30 seconds)
- Active-active SAM/SSA clusters (load-balanced)
- Database replication (synchronous, multi-region)

---

## 6. COMPLIANCE VERIFICATION

### 6.1 CEN EN 419 241-1 Mapping

| Requirement | Implementation | Evidence |
|-------------|----------------|----------|
| **SAM-01:** Unique identification | User ID + Key Handle ID | User database, HSM logs |
| **SAM-02:** Authentication | Multi-factor (PIN + TOTP/FIDO2) | SAM authentication logs |
| **SAM-03:** Authorization | Time-limited token with HTBS binding | Authorization token structure |
| **SAM-04:** Sole control | Single-use token, no persistent activation | Token validation logs |
| **SCDev-01:** Key generation in HSM | PKCS#11 C_GenerateKeyPair | HSM audit logs |
| **SCDev-02:** Non-exportable keys | HSM CKA_EXTRACTABLE=FALSE | HSM partition configuration |
| **SCDev-03:** Tamper detection | HSM tamper sensors, firmware validation | HSM security policy document |

### 6.2 eIDAS Annex II Compliance

| Annex II Requirement | Implementation | Verification Method |
|----------------------|----------------|---------------------|
| **(a) Signature creation data used only once** | Single-use authorization tokens, nonce validation | Token lifecycle logs, penetration testing |
| **(b) Confidentiality of signature creation data** | Private keys never leave HSM, encrypted storage | HSM certification, key export attempt testing |
| **(c) Cannot be derived** | Cryptographic strength (RSA-3072, ECDSA-P256) | Cryptanalysis resistance per FIPS 186-4 |
| **(d) Protected against use by others** | Multi-factor authentication, rate limiting | Authentication logs, fraud detection reports |
| **(e) Reliably protected by legitimate signatory** | User-controlled PIN, device binding | User agreement, device registration process |

### 6.3 Audit Evidence for CAB

**Documentation Package:**
1. This appendix (architecture and security controls)
2. HSM FIPS 140-2 Level 3 certificate
3. CEN EN 419 241-2 Protection Profile self-assessment
4. Penetration testing report (annual, by independent auditor)
5. Disaster recovery test results (bi-annual)
6. User authentication flow diagrams
7. Sample authorization token structure
8. Audit log samples (anonymized)

**CAB Review Focus:**
- Sole control mechanism demonstration (live test during audit)
- Key non-exportability verification (HSM configuration review)
- MFA effectiveness (authentication process walkthrough)
- Audit trail completeness (log sampling)

---

## 7. USER DOCUMENTATION

### 7.1 End-User Guide (Summary)

**Setting Up Remote Signing:**
1. Complete identity verification at Registration Authority
2. Download Greek Trust Services S.A. Signature App (iOS/Android) or use web interface
3. Register your mobile device with QR code
4. Set your 6-12 digit activation PIN (never share this!)
5. Enable biometric authentication (recommended)
6. Receive your qualified certificate via email

**Creating a Signature:**
1. Open document to be signed (PDF, XML, etc.)
2. Click "Sign with Qualified Signature"
3. Enter your activation PIN
4. Approve signature request on your mobile device (TOTP code or push notification)
5. Use biometric if enabled (fingerprint/Face ID)
6. Signature created within 2 seconds
7. Signed document returned to you

**Security Best Practices:**
- Never share your activation PIN
- Keep your mobile device secure (screen lock enabled)
- Report lost/stolen devices immediately (24×7 hotline: +30 210 614 5999)
- Review signature history regularly (available in app/web portal)

### 7.2 RA Operator Guide (Summary)

**User Provisioning:**
1. Verify identity per Certificate Policy (ID document, video call, etc.)
2. Create user account in RA Portal
3. Assign certificate profile (QES Natural Person, Legal Representative, etc.)
4. Generate activation code (valid 7 days)
5. Send activation instructions to user via secure channel
6. Monitor user's device registration and first signature test

**Revocation Processing:**
- Standard revocation: <1 hour from request to CRL/OCSP update
- Emergency revocation (compromise): <15 minutes

---

## 8. CONCLUSION

Greek Trust Services S.A.'s remote QSCD solution implements eIDAS Annex II requirements through:

1. **Sole Control:** Multi-factor authentication with single-use authorization tokens
2. **Non-Duplication:** Private keys generated and stored exclusively in FIPS 140-2 Level 3 HSM
3. **Protection:** Cryptographic isolation, tamper detection, comprehensive audit logging

This architecture has been designed to balance regulatory compliance, security, and user experience, enabling qualified electronic signatures with the same legal effect as handwritten signatures across the European Union.

**CAB Attestation:** This appendix will be reviewed by TÜV Hellas (TÜV NORD) during the conformity assessment audit per Article 10 EETT Regulation.

---

**Document Approval:**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Qualified Trust Services Manager** | Δημήτριος Αντωνίου | ________________ | 2025-06-15 |
| **Chief Information Security Officer** | Αλέξανδρος Γεωργίου | ________________ | 2025-06-15 |
| **Crypto Officer** | Sofia Papadimitriou | ________________ | 2025-06-15 |

**End of Appendix A**


---
**End of Document**
