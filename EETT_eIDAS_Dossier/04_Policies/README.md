# 04_Policies Structure

This directory now reflects the auditor-ready layout agreed for policy documentation.
Each subfolder must contain signed, bilingual PDFs together with change-control records
before dossier submission.

## Governance
- `TSP_Policy/` *(see nested README for status, drafts, and compliance logs)*
- `TSPS_GR_EN.pdf`
- `CP_RFC3647.pdf`
- `CPS_RFC3647.pdf`

## Security_and_Risk
- `Information_Security_Policy/` (draft + readiness log)
- `Risk_Assessment/Final/07_Risk_Assessment_GR_EN.pdf` (symlink)
- `Incident_Response/Final/07a_Incident_Response_Plan_GR_EN.pdf` (symlink)
- `Business_Continuity/` (draft BCP/DR plan)

## Service_Lifecycle
- `Service_Termination/Final/09_Service_Termination_Plan_GR_EN.pdf` (symlink)
- `Recordkeeping/Final/12_Recordkeeping_Policy_GR_EN.pdf` (symlink)
- `Key_Management/` (draft procedures for CAs/QSCD)

## Metadata
- `Policy_Register.xlsx`
- `Change_Log.md`

> NOTE: Populate each file with the final approved version and keep multilingual
alignment with ETSI EN 319 401/411 requirements. Supplemental working files moved
from `04_TSP_Policy` now reside under `Governance/TSP_Policy/` (drafts + compliance),
while the new Security/Risk and Service Lifecycle folders provide direct pointers
to their canonical artifacts for traceability.
