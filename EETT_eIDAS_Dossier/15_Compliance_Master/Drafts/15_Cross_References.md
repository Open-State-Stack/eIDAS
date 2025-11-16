# Compliance Master Cross-References

**Document ID:** 15_Cross_References  
**Version:** 1.0  
**Date:** 2025-11-14  
**Prepared by:** Compliance Team  
**Classification:** Internal/Confidential  

---

## Purpose
This document provides detailed cross-references between key artifacts in the EETT/eIDAS dossier to enhance traceability and ensure comprehensive compliance mapping. It links requirements, evidence, and dependencies across folders, focusing on eIDAS, EETT, and ETSI standards. This supplements the `15_Master_Compliance_Register.xlsx` and addresses gaps in linkages (e.g., between conformity assessments and tests).

References are structured by main artifact, with related folders, specific mappings, and rationale for the connection.

---

## Cross-Reference Table

| Main Artifact/Folder | Related Artifacts/Folders | Specific Mapping | Rationale/Traceability Notes | Requirements Alignment |
|----------------------|---------------------------|------------------|-----------------------------|-------------------------|
| **03_Conformity_Assessment** (CAR Report) | 06_Test_Certificates | CAR Section 4 (Certificate Validation) → 06 Test Logs (Issuance/Revocation Tests) | Assessments in 03 rely on test evidence from 06 to verify certificate lifecycle compliance. Ensures audit findings trace back to empirical data. | eIDAS Art. 20, ETSI EN 319 411 Clause 6.9 (Revocation) |
| **03_Conformity_Assessment** | 05_TSPS_Services | CAR Section 3 (Service Scope) → 05 TSPS Descriptions (e.g., eSignature Specs) | Conformity results must align with service definitions; e.g., QES requirements tested against TSPS details. | eIDAS Art. 28, ETSI EN 319 412 (Certificate Profiles) |
| **06_Test_Certificates** | 11_Revocation_Procedures | Test Cert Revocation Logs → 11 SOP Sections 3-5 (Revocation Workflows) | Test results validate revocation processes; ensures procedures are testable and evidence-based. | eIDAS Art. 24(2)(g), ETSI EN 319 411 Clause 6.9 |
| **06_Test_Certificates** | 03_Conformity_Assessment | Validation Test Outputs → CAR Remediation Actions | Feedback loop: Test failures in 06 inform corrective actions in 03 assessments. | ETSI EN 319 401 Clause 7.1 (Service Initiation) |
| **04_TSP_Policy** | 07_Risk_And_Incidents | Policy §6 (Security Commitments) → 07 Risk Assessment Report | Policies define risk controls; assessments provide evidence of implementation. | eIDAS Art. 24(2)(d), ETSI EN 319 401 Clause 7.4 |
| **07_Risk_And_Incidents** | 08_User_Notifications | Incident Response Plan §6 → 08 Notification Templates | Risk incidents trigger user notifications; ensures alignment in escalation procedures. | eIDAS Art. 19(2), ETSI EN 319 401 Clause 7.10 |
| **09_Service_Termination** | 12_Recordkeeping | Termination Plan §4 (Data Handover) → 12 Retention Policy | Termination requires record archiving; links ensure 7-year retention compliance. | eIDAS Art. 24(2)(h), ETSI EN 319 401 Clause 7.9 |
| **10_End_User_Agreement** | 04_TSP_Policy | EULA §6 (Liability) → Policy §7 (Liability Framework) | Agreements must reflect high-level policies for legal consistency. | eIDAS Art. 13, ETSI EN 319 411 Clause 6.3 |
| **14_NTL_Publication** | 01_Registry | NTL Datasheet → 01 Registry Application | Post-registry inclusion in NTL; verifies TSP details match initial registration. | eIDAS Art. 22, ETSI TS 119 612 Clause 5.5.3 |
| **15_Compliance_Master** (This Folder) | All Folders | Master Register → Individual Submission Readiness Files | Aggregates cross-references for overall traceability; e.g., links to 19_Compliance_Register for detailed mappings. | Overall eIDAS/ETSI Compliance |

---

## Usage Guidelines
- **Traceability Process:** Use this table to navigate dependencies during audits. For example, to verify a conformity assessment in Folder 03, check linked tests in Folder 06.
- **Update Protocol:** Review and update this document quarterly or after major changes (e.g., post-CAB audit). Log changes in the section below.
- **Dependencies:** This file integrates with `19_Master_Compliance_Register.md` (Sheet 4: Document Cross-Reference) for extended mappings.

## Change Log
- **v1.0 (2025-11-14):** Initial creation with focus on 03-06 mappings and additional key links for traceability.

---

**End of Document**