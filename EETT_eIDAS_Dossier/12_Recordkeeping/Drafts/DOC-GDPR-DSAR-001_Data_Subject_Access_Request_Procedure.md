# Data Subject Access Request (DSAR) Procedure

| | |
|---|---|
| **Document ID** | `DOC-GDPR-DSAR-001` |
| **Version** | `1.0` |
| **Status** | `Final` |
| **Author** | Data Protection Officer (DPO) |
| **Approval Authority** | Trust Service Governance Committee (TSGC) |
| **Approval Date** | `[CURRENT_DATE]` |
| **Next Review Date** | `[CURRENT_DATE + 1 Year]` |

---

## 1. Purpose

This document outlines the step-by-step procedure for handling Data Subject Access Requests (DSARs) in a timely, secure, and compliant manner, in accordance with Article 15 of the General Data Protection Regulation (GDPR) and the commitments made in the Trust Service Policy (`04_TSP_Policy_EN.md`).

The primary objective is to ensure all DSARs are logged, verified, processed, and fulfilled within the internal Service Level Agreement (SLA) of **7 working days**.

## 2. Scope

This procedure applies to all employees and contractors who may be involved in the receipt, verification, processing, or fulfillment of a DSAR. The Data Protection Officer (DPO) is the ultimate owner of this process.

## 3. Procedure Workflow

### Step 1: Request Receipt
-   **Official Channel:** All DSARs must be submitted to the dedicated email address: `dpo@[COMPANY_WEBSITE_URL]`. This address is published in the main Privacy Policy.
-   **Action:** If a request is received via another channel (e.g., general support, phone call), the employee receiving it must not attempt to process it. They must immediately forward the request to `dpo@[COMPANY_WEBSITE_URL]` and inform the sender of the correct channel.

### Step 2: Logging and Acknowledgment
-   **Action:** Within **24 hours** of receipt in the DPO inbox, the DPO or a designated delegate will:
    1.  Create a new entry in the `DSAR_LOG.md` file.
    2.  Assign a unique case number (e.g., `DSAR-YYYY-NNN`).
    3.  Send an acknowledgment email to the data subject using **Template A: Acknowledgment**.

### Step 3: Identity Verification
-   **Rationale:** To prevent unauthorized disclosure of personal data, the identity of the requestor must be rigorously verified.
-   **Action:** The DPO will request sufficient information to confirm the identity of the data subject. This may include, but is not limited to:
    -   A copy of the certificate serial number in question.
    -   The transaction ID from the original certificate application.
    -   A copy of a valid government-issued ID (which will be securely deleted immediately after verification).
-   **Communication:** **Template B: Identity Verification Request** will be used.
-   **Failure to Verify:** If identity cannot be satisfactorily verified after two attempts, the request will be denied, and the reason will be logged in the `DSAR_LOG.md`.

### Step 4: Data Gathering
-   **Action:** Once identity is verified, the DPO will instruct the relevant teams to gather all personal data associated with the data subject.
-   **Data Sources:**
    -   **PKI Operations Team:** Extract data from the Certificate Authority database (Subscriber name, email, certificate details, serial numbers, issuance/revocation dates).
    -   **Customer Support Team:** Extract data from the CRM and support ticket system (contact history, billing information).
    -   **IT/Infrastructure Team:** Extract relevant log data (IP addresses from application, user portal access logs).

### Step 5: Data Compilation and Review
-   **Action:** All gathered data is securely transferred to the DPO.
-   **DPO Review:** The DPO will personally review the complete data package to:
    1.  Ensure all requested data is present.
    2.  Redact any personal data belonging to third parties.
    3.  Confirm the data is accurate and consistent.

### Step 6: Data Packaging
-   **Format:** The data will be compiled into a single, structured JSON file as specified in **Appendix A**.
-   **File Naming:** The file will be named `[CASE_NUMBER]_DSAR_PACKAGE.json`.
-   **Encryption:** The JSON file will be placed in a password-protected ZIP archive. The password will be strong (12+ characters, mixed type).

### Step 7: Fulfillment and Delivery
-   **Action:** The DPO will deliver the data package to the data subject.
-   **Method:**
    1.  An email will be sent to the data subject using **Template C: Fulfillment**. This email contains the encrypted ZIP file as an attachment.
    2.  A separate communication channel (e.g., SMS, separate email) will be used to deliver the password for the ZIP file. This two-channel delivery mitigates the risk of interception.

### Step 8: Log Closure
-   **Action:** The DPO will update the `DSAR_LOG.md` entry with:
    -   Date of fulfillment.
    -   Method of delivery.
    -   A hash of the delivered file to ensure integrity.
    -   The final status (`Fulfilled` or `Denied`).

## 4. Service Level Agreement (SLA)

| Stage | SLA |
|---|---|
| **Acknowledge Receipt** | < 24 Hours |
| **Complete Identity Verification** | < 48 Hours from acknowledgment |
| **Fulfill Request** | **<= 7 working days** from verified identity |

## 5. Roles and Responsibilities

-   **Data Protection Officer (DPO):** Overall owner of the process, responsible for review, approval, and fulfillment.
-   **PKI Operations Team:** Responsible for extracting data from the CA systems upon DPO request.
-   **Customer Support Team:** Responsible for initial request forwarding and extracting data from CRM/support systems.

---
## Appendix A: Sample JSON Data Format

```json
{
  "dsarCaseNumber": "DSAR-2024-001",
  "requestDate": "2024-10-27T10:00:00Z",
  "fulfillmentDate": "2024-10-30T15:30:00Z",
  "dataSubject": {
    "verifiedIdentity": "John Doe",
    "contactEmail": "john.doe@example.com"
  },
  "data": {
    "accountDetails": {
      "creationDate": "2023-01-15T12:00:00Z",
      "status": "Active"
    },
    "issuedCertificates": [
      {
        "subjectDN": "CN=John Doe,O=Example Corp,C=GR",
        "serialNumber": "1A:2B:3C:4D:5E:6F",
        "issuanceDate": "2023-01-20T10:00:00Z",
        "expiryDate": "2024-01-19T10:00:00Z",
        "status": "Expired"
      }
    ],
    "supportHistory": [
      {
        "ticketId": "TICK-12345",
        "subject": "Password Reset",
        "creationDate": "2023-05-10T09:00:00Z"
      }
    ],
    "accessLogs": [
      {
        "timestamp": "2024-10-27T09:59:00Z",
        "sourceIp": "198.51.100.1",
        "event": "DSAR Submitted"
      }
    ]
  },
  "legalNotes": {
    "rightToErasureLimitation": "As per eIDAS Regulation (EU) 910/2014, Article 12, all data related to issued certificates must be retained for a minimum of 7 years post-certificate expiry for legal and audit purposes."
  }
}
```

---
## Appendix B: Communication Templates

### Template A: Acknowledgment
**Subject:** DSAR Received [Case #DSAR-YYYY-NNN]

Dear [Data Subject Name],

We acknowledge receipt of your Data Subject Access Request, which we received on [Date].

Your request has been logged under case number **DSAR-YYYY-NNN**. We will begin processing your request and may contact you shortly to verify your identity.

As per our policy, we aim to fulfill all verified requests within 7 working days.

Sincerely,
The [Company Name] Data Protection Officer

### Template B: Identity Verification Request
**Subject:** Action Required: Please Verify Your Identity [Case #DSAR-YYYY-NNN]

Dear [Data Subject Name],

To proceed with your request (DSAR-YYYY-NNN) and to protect your personal data, we must first verify your identity.

Please reply to this email with [Select one or more: a copy of your certificate serial number / the transaction ID from your application / a scan of your government-issued ID].

This information will be used solely for identity verification and will be permanently deleted upon completion of this request.

Sincerely,
The [Company Name] Data Protection Officer

### Template C: Fulfillment
**Subject:** Your Data Subject Access Request is Complete [Case #DSAR-YYYY-NNN]

Dear [Data Subject Name],

We have now completed your Data Subject Access Request (DSAR-YYYY-NNN).

Attached to this email is a password-protected ZIP file containing your personal data in a machine-readable JSON format.

For your security, the password for this file will be sent to you via a separate communication channel (SMS/email).

If you have any further questions, please contact us.

Sincerely,
The [Company Name] Data Protection Officer