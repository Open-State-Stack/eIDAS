# Change Notification Process Test Log

**Document ID:** 01_Change_Notification_Test_Log  
**Version:** 1.0  
**Date:** 2025-11-14  
**Prepared by:** Compliance Testing Team  
**Classification:** Internal/Confidential  

---

## Purpose
This log documents a simulated test of the change notification process for TSP registry updates, as required by eIDAS Art. 24(2)(f) and EETT Decision 878/2 (Art. 3.5). The test uses the `01b_Change_Notice_Template.md` to simulate notifying EETT of a change (e.g., address update). This verifies the process's correctness, timeliness (within 7 days), and documentation.

---

## Test Scenario
- **Change Type:** Simulated update to TSP registered address (e.g., from "123 Compliance Street" to "456 Trust Avenue").  
- **Trigger Date:** 2025-11-07 (simulated change occurrence).  
- **Notification Deadline:** 2025-11-14 (7 days from trigger).  
- **Template Used:** `01b_Change_Notice_Template.md` (customized with simulated data).  
- **Test Environment:** Internal simulation using email mockup and document generation tools. No production systems involved.  
- **Participants:**  
  - Tester: Compliance Officer (simulated role).  
  - Reviewer: Legal Team Lead.  

---

## Test Steps and Results

### Step 1: Identify Change and Prepare Notification
- **Description:** Detect change via internal monitoring. Customize the change notice template with details: TSP name, change description, effective date, and supporting evidence (e.g., mocked address proof).  
- **Executed On:** 2025-11-10  
- **Outcome:** Template populated successfully. Simulated content:  
  ```
  **Change Notice Template Excerpt (Simulated)**  
  To: EETT Supervisory Body  
  From: Open State Stack TSP Services Ltd.  
  Date: 2025-11-10  
  Subject: Notification of Change in Registered Address  
  Details: Effective 2025-11-07, address updated to 456 Trust Avenue, Athens, Greece.  
  Evidence: Attached mocked lease agreement.  
  ```  
- **Status:** Passed. No issues in template usage.

### Step 2: Internal Review and Approval
- **Description:** Route the drafted notice for legal and compliance review to ensure accuracy and completeness.  
- **Executed On:** 2025-11-11  
- **Outcome:** Reviewed and approved. Minor edit: Added reference to eIDAS Art. 24 for compliance.  
- **Status:** Passed.

### Step 3: Simulate Submission to EETT
- **Description:** Mock submission via email to a test EETT address (e.g., internal alias simulating eett-supervision@test.com). Include QES signature simulation and attachments.  
- **Executed On:** 2025-11-12  
- **Outcome:** Mock email sent successfully. Confirmation receipt simulated. Timestamp logged: 2025-11-12T14:30:00+02:00. Within 7-day window.  
- **Status:** Passed. Verified timeliness and format adherence.

### Step 4: Log and Archive
- **Description:** Record the notification in internal compliance register (cross-reference to Folder 19) and archive copies.  
- **Executed On:** 2025-11-13  
- **Outcome:** Entry added to simulated register. Archives updated in Folder 12 (Recordkeeping).  
- **Status:** Passed.

---

## Test Results Summary
- **Overall Status:** Passed. The process was completed within the required timeframe, and the template facilitated accurate notification.  
- **Issues Identified:** None. Suggestion: Automate template population with scripts for efficiency in real scenarios.  
- **Metrics:**  
  - Time to Complete: 5 days (from trigger to archive).  
  - Compliance Check: 100% alignment with EETT 7-day rule.  

---

## Attachments and References
- **Mock Notification Document:** Attached as `Simulated_Change_Notice_2025-11-10.pdf` (generated from template).  
- **Related Documents:**  
  - `01b_Change_Notice_Template.md` (source template).  
  - Cross-reference to `Registry_Application.md` for baseline registry details.  
  - Links to Folder 13_Communication_Templates for broader comms standards.  

---

## Verification and Sign-Off
- **Tested By:** Compliance Tester  
- **Reviewed By:** Legal Reviewer  
- **Date of Sign-Off:** 2025-11-14  
- **Next Test Schedule:** Quarterly, or upon process updates.  

This test ensures the change notification process is robust and ready for real-world application.