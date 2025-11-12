# TRUST SERVICE POLICY (TSP POLICY)

**Company:** [LEGAL_NAME_EN]  
**Version:** 1.0  
**Issue Date:** [SUBMISSION_DATE]  
**Policy OID:** [POLICY_OID]  
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
**Last Reviewed:** [SUBMISSION_DATE]  
**Approved By:** [Legal Representative Name], [Title]

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

## 1. INTRODUCTION

### 1.1. Purpose
This Trust Service Policy (hereinafter "Policy" or "TSP Policy") constitutes the primary governance document of **[LEGAL_NAME_EN]** (hereinafter "the Provider" or "TSP"). It defines the high-level rules, commitments, and legal framework for the provision of Qualified and non-Qualified Trust Services. This Policy is intended for Subscribers, Relying Parties, Conformity Assessment Bodies (CABs), and the National Supervisory Body (EETT), providing a clear statement of the Provider's operational integrity and compliance.

### 1.2. Regulatory Compliance
This Policy is designed to be in full compliance with the following legal and standardization framework:
-   **Regulation (EU) No 910/2014 (eIDAS):** The primary European regulation governing trust services.
-   **Hellenic Telecommunications and Post Commission (EETT) Regulation:** Specific national requirements for trust service providers in Greece.
-   **ETSI EN 319 401:** General Policy Requirements for Trust Service Providers.
-   **ETSI EN 319 411-1 & 319 411-2:** Policy and security requirements for the issuance of certificates, including qualified certificates.
-   **ETSI EN 319 421:** Policy and security requirements for Trust Service Providers issuing timestamps.
-   **Regulation (EU) 2016/679 (GDPR):** General Data Protection Regulation.

**ETSI Standards Alignment Note:**  
This policy is structured to align with ETSI EN 319 401/411/421 standards to facilitate interoperability with other EU Trust Service Providers and meet common industry expectations. However, **ETSI standards are not legally mandatory** under eIDAS; all mandatory requirements are derived from Regulation (EU) 910/2014 (eIDAS) and the EETT Κανονισμός. Where this policy exceeds legal minimums by following ETSI best practices, such provisions are marked as **[ETSI Recommended]** vs. **[eIDAS/EETT Mandatory]**. This ensures transparency regarding which requirements are legally binding versus voluntary industry best practices adopted by the Provider for enhanced security and interoperability.

### 1.3. Document Hierarchy
This TSP Policy is the highest-level document describing the Provider's services. It is supported by the **Trust Service Practice Statement (TSPS)**, which details the specific procedures and mechanisms used to implement the commitments made in this Policy. In case of any conflict, this Policy shall take precedence over the TSPS.

### 1.4. Publication and Repository
This Policy and other relevant public documents are published on the Provider's official website at: **[WEBSITE_URL]/repository**. The repository is available 24x7 and serves as the central point for accessing public information.

---

## 2. DEFINITIONS AND ABBREVIATIONS

-   **CA (Certification Authority):** An entity that issues digital certificates.
-   **CAB (Conformity Assessment Body):** An accredited body that performs conformity assessments of the TSP.
-   **CAR (Conformity Assessment Report):** The report issued by the CAB.
-   **eIDAS:** Regulation (EU) No 910/2014.
-   **EETT:** Hellenic Telecommunications and Post Commission, the Greek Supervisory Body.
-   **GDPR:** Regulation (EU) 2016/679 on data protection.
-   **HSM (Hardware Security Module):** A secure cryptographic device used to generate, store, and protect cryptographic keys.
-   **Provider (TSP):** The company [LEGAL_NAME_EN].
-   **QES:** Qualified Electronic Signature.
-   **QSeal:** Qualified Electronic Seal.
-   **QTS:** Qualified Electronic Time-Stamp.
-   **QSCD (Qualified Signature/Seal Creation Device):** A device certified to create qualified electronic signatures or seals.
-   **Relying Party:** A natural or legal person that relies upon a trust service (e.g., verifies a signature's validity).
-   **Subscriber:** The natural or legal person to whom a certificate is issued and who is bound by the terms of use.
-   **TSPS (Trust Service Practice Statement):** The document detailing the operational procedures for implementing this Policy.

---

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
-   **Perform Verification:** Properly verify the validity and revocation status of a certificate and the associated signature/seal chain before placing reliance on it.
-   **Use Status Services:** Utilize the OCSP and/or CRL services provided by the TSP for every verification.
-   **Understand Limitations:** Acknowledge any liability limits or usage constraints specified in this Policy and the associated certificate. Failure to perform adequate verification may void any claim against the Provider.

---

## 5. CERTIFICATE LIFECYCLE OVERVIEW

### 5.1. Registration and Identification
🔍 **CAB Review Required**  
The Provider performs identity verification using methods that are equivalent to physical presence, as mandated by eIDAS Article 24 and detailed in ETSI EN 319 411-1/2. The specific procedures (e.g., in-person at RA offices, remote video identification) are described in the TSPS.

**[eIDAS/EETT Mandatory]** Identity verification must meet eIDAS Article 24(1)(c) requirements for qualified services.

### 5.2. Certificate Issuance
Following successful identity verification and validation of the application, the Provider issues the certificate. The process is automated to ensure compliance with the certificate profiles defined in the ETSI EN 319 412 series.

### 5.3. Certificate Acceptance
A certificate is considered accepted by the Subscriber upon its first use or after a predefined period following its delivery, as specified in the End-User Agreement.

### 5.4. Renewal and Re-key
Certificate renewal (extending validity with the same key) and re-key (issuing a new certificate with a new key) are supported. Both processes require re-affirmation of the Subscriber's identity under conditions specified in the TSPS.

### 5.5. Revocation
The Provider operates a 24x7 revocation service, accessible via telephone, email, and a secure web portal. Revocation requests are processed immediately upon verification, and the status is published via OCSP and CRL within the timeframes committed to in the TSPS.

---

## 6. SECURITY COMMITMENTS

### 6.1. Technical Security
🔍 **CAB Review Required**  
-   **Cryptographic Controls:** All CA and TSA private keys are generated, stored, and managed exclusively within FIPS 140-2 Level 3 certified HSMs. Cryptographic algorithms and key lengths comply with ETSI TS 119 312.  
    **[eIDAS/EETT Mandatory]** Key management must meet eIDAS Article 24(2)(c) requirements for secure, reliable systems.
-   **Infrastructure Security:** The PKI architecture is based on a physically isolated, offline Root CA and multiple, redundant online Issuing CAs. The network is protected by firewalls, IDS/IPS, and DDoS mitigation services.  
    **[ETSI Recommended]** Offline Root CA architecture follows ETSI EN 319 411-2 best practices.

### 6.2. Physical Security
The Provider's core infrastructure is hosted in geographically separate, Tier III+ certified data centers within the EU. These facilities feature multi-layered physical access controls, 24x7 surveillance, and robust environmental protections.

### 6.3. Organizational Security
-   **Risk Management:** A formal risk management framework aligned with ISO 31000 is maintained and reviewed annually.
-   **Incident Management:** A comprehensive Incident Response Plan, compliant with EETT Regulation Article 5 and Annex 3, is in place and tested regularly.
-   **Personnel Security:** All personnel in trusted roles undergo rigorous background checks, sign confidentiality agreements, and receive role-specific training on security and data protection.
-   **Audits:** The Provider is subject to annual, independent audits by an accredited CAB to ensure ongoing compliance with all regulatory requirements.

---

## 7. LIABILITY FRAMEWORK

### 7.1. Provider's Liability
In accordance with **Regulation (EU) 910/2014 (eIDAS), Article 13, paragraph 1**, the Provider is liable for damages caused intentionally or negligently to any natural or legal person due to a failure to comply with its obligations for qualified trust services.

**Key Legal Implications:**
-   **Reversed Burden of Proof:** Unlike standard contracts where the claimant must prove the service provider's fault, under eIDAS Article 13, the **Provider bears the burden of proving it acted without negligence**. This reversed burden of proof provides strong protection for Relying Parties who trust our qualified certificates.
-   **Strict Liability Standard:** The Provider is held to a high standard of care expected of qualified trust service providers under EU law.
-   **Scope:** This liability applies to all qualified trust services covered by this Policy (QES, QSeal, QTS, etc.).

**[eIDAS/EETT Mandatory]** Liability framework per eIDAS Article 13 and Article 24(2)(d).

### 7.2. Liability Limitations
The Provider's financial liability for damages arising from a single incident or certificate is limited to the amount specified in the End-User Agreement. This limit is backed by a professional liability insurance policy that meets or exceeds the requirements of eIDAS and EETT.

### 7.3. Disclaimer of Liability
The Provider shall not be held liable for damages arising from:
-   The Subscriber's failure to protect their private key or QSCD.
-   The Relying Party's failure to perform proper and timely verification of a certificate's status.
-   Use of a certificate beyond the scope or limitations defined within it.
-   Events of force majeure.

---

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

**Contact Our DPO:**
For any data protection questions or to exercise your rights, contact our Data Protection Officer:
-   Email: [DPO_Email]
-   Phone: [DPO_Phone]

**[eIDAS/EETT Mandatory]** 7-year retention per EETT Article 12 and eIDAS Article 24(2)(g).

### 8.5. Privacy Policy
For a detailed description of data processing activities, retention periods, and security measures, please refer to the Provider's full Privacy Policy, available at: **[WEBSITE_URL]/privacy**

---

## 9. COMPLAINTS, DISPUTES, AND AUDITS

### 9.1. Complaints Procedure
Subscribers, Relying Parties, or other stakeholders may submit complaints regarding the Provider's services via:
-   **Email:** [COMPLAINTS_EMAIL]
-   **Web Form:** [WEBSITE_URL]/complaints

The Provider will acknowledge receipt within 2 business days and provide a formal response within 10 business days. An escalation path to management is available if the initial response is unsatisfactory.

### 9.2. Audits
The Provider's operations, policies, and procedures are subject to annual audits by an independent, accredited Conformity Assessment Body (CAB). The Conformity Assessment Report (CAR) is submitted to EETT and made available as required.

---

## 10. TERMINATION AND SUCCESSION PLAN

In accordance with **eIDAS Article 24(2)(h)** and **EETT Articles 7-8**, the Provider maintains a comprehensive **Termination Plan**. This plan ensures the continuity of trust and protection of user information in the event the Provider ceases its operations. Key provisions include:
-   **Notification:** A minimum of 3 months' advance notification to EETT, Subscribers, and Relying Parties for planned terminations.
-   **Service Continuity:** Continued operation of revocation and status services (OCSP/CRL) until the last issued certificate has expired.
-   **Archive Handover:** Secure transfer of all legally required records to another qualified TSP or to EETT, ensuring their integrity and accessibility for the mandatory 7-year retention period.
-   **Financial Provisions:** An escrow fund or insurance policy is in place to cover the costs of executing the termination plan.

---

## 11. GOVERNING LAW AND DISPUTE RESOLUTION

-   **Governing Law:** This Policy and all services provided hereunder are governed by the laws of the Hellenic Republic (Greece) and applicable European Union law.
-   **Jurisdiction:** Any disputes shall be subject to the exclusive jurisdiction of the Courts of Athens, Greece.
-   **Alternative Dispute Resolution:** The parties are encouraged to seek resolution through mediation before initiating litigation.

---

## 12. POLICY ADMINISTRATION

### 12.1. Responsibility
The Provider's **Qualified Trust Services (QTS) Manager** is responsible for the maintenance, review, and enforcement of this Policy.

### 12.2. Review and Approval
This Policy is reviewed at least annually, or upon significant changes to the legal framework, technology, or business operations. All modifications are subject to a formal change management process and must be approved by the Provider's executive management.

### 12.3. Publication and Notification
The current version of this Policy will always be available in the public repository. Subscribers will be notified of any material changes at least 30 days prior to their effective date.

---
**End of Document**