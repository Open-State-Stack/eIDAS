# Incident, Risk & BCP Compliance Audit (Folder 07)

## Document Inventory & Readiness
| Document | Scope | Regulatory Coverage | Readiness | Notes |
|----------|-------|---------------------|-----------|-------|
| `Drafts/Risk/07_Risk_Assessment_Report_GR.md` | Security risk methodology, register, supplier controls | eIDAS Art.24(2)(d), EETT Art.4, ETSI EN 319 401 §6.6 | ⚠️ Partial | SoA mapping & annex references embedded; placeholders/signatures still pending.
| `Final/Risk/07_Risk_Assessment_GR_EN.pdf` | Bilingual risk pack | eIDAS Art.24 | ⏳ Not Reviewed | Binary not assessed in this pass; ensure parity with GR source before submission.
| `Drafts/Incident_Response/07a_Incident_Response_Plan_GR.md` | Full IRP lifecycle | EETT Art.5, Annex 3; eIDAS Art.19; GDPR 33-34 | ✅ Ready (pending live data) | References now point to `07_Contacts.md`, folder 08 user notices, and folder 09 DR evidence.
| `Final/Incident/07a_Incident_Response_Plan_GR_EN.pdf` | Bilingual IRP | Same as above | ⏳ Not Reviewed | Verify translation parity and QSCD signatures.
| `Drafts/Incident_Response/07b_Incident_Forms_GR.md` | Templates for initial/final reports, logbook, metrics | EETT Art.5.3-5.4; ISO/IEC 27035 | ✅ Ready (pending live data) | Automation guidance + KPI targets documented; run scripts before submission.
| `Final/Incident/07b_Incident_Report_Forms.pdf` | Locked forms for regulator | Same as above | ⏳ Not Reviewed | Confirm PDF contains latest signature blocks and SOC contacts.
| `Drafts/Incident_Response/07c_Incident_First_Hour_Checklist_GR.md` | Tactical checklist | EETT Annex 3 | ✅ Ready | Quick-reference contact block and recordkeeping linkage included.
| `Drafts/Incident_Response/07d_RCA_Report_Template.md` | RCA/CAP template | ISO/IEC 27035, ETSI EN 319 401 §7 | ✅ Ready | Risk-register links, bilingual note, and archiving guidance captured.
| `Drafts/Incident_Response/07_Contacts.md` | Central SOC/DPO/CAB/regulator directory | Supports eIDAS Art.19 & Annex 3 escalations | ✅ Ready (living doc) | Single source consumed by RA/IR/Forms/Checklists.
| `Compliance/07_Submission_Readiness.md` | Status tracker | eIDAS/EETT summary | ⚠️ Requires final data | Contact/SoA actions closed; placeholders remain outstanding.
| `Drafts/BCP/` | Business Continuity playbooks | EETT Art.4 §1, ETSI EN 319 401 §7.7 | ❌ Missing | Populate with BCP narrative/tabletop outputs referenced by IR plan and Doc 09.

## Detailed Findings & Required Actions
### 1. Risk Assessment Artefacts (`Drafts/Risk/07_Risk_Assessment_Report_GR.md`)
- **Strengths:** ISO/IEC 31000/27005 lifecycle, asset (§2) and threat (§3) coverage remain robust, and §1.4 now maps each control to ISO/IEC 27001:2022 SoA entries with pointers to `Supporting_Docs/ISO27001/Statement_of_Applicability.md`. Annex references (asset inventory workbook, contact annex) are explicitly cited, aiding ETSI EN 319 401 §6.6 evidence.
- **Gaps:** Front matter/licence acceptance still use placeholders for legal data and signatures. `[ARCHIVE_CUSTODIAN_NAME]` must be replaced with the actual custodian. Submission pack must include the referenced Supporting_Docs attachments to avoid “annex missing” findings.
- **Actions:** Populate placeholders, export the signed PDF to `Final/Risk/` (with hash in `Evidence/Risk/`), and attach the referenced annexes (asset inventory, risk heat map, contacts) in the final dossier.

### 2. Incident Response Plan (`Drafts/Incident_Response/07a_Incident_Response_Plan_GR.md`)
- **Strengths:** Compliance matrix remains; §1.3 now defers all named contacts to `07_Contacts.md`, Sections 6.2–6.5 link directly to folder 08 user-notification plans/templates and regulator channels, and §7 references folder 09 DR/termination evidence plus Supporting_Docs runbooks. Exercise/test outputs have defined storage locations.
- **Gaps:** Corporate metadata placeholders persist and must be filled before filing. Need to ensure the Supporting_Docs artefacts cited (notification templates, DR drills, tabletop minutes) accompany the submission and that the EN PDF mirrors the GR content.
- **Actions:** Populate metadata, export signed GR/EN PDFs, and bundle the referenced artefacts when submitting to EETT/CAB.

### 3. Incident Forms (`Drafts/Incident_Response/07b_Incident_Forms_GR.md`)
- **Strengths:** All Art.5.4 fields remain plus new guidance on ITSM/SIEM automation, QSCD signature blocks, archiving locations, and KPI targets in the metrics dashboard. Contact info now syncs from `07_Contacts.md`.
- **Gaps:** Actual incident data/signatures still need capturing during operations, and automation scripts must run with evidence (e.g., change tickets). Need to confirm exported PDFs reflect the updated signature/KPI sections.
- **Actions:** Execute the sync/automation scripts before submissions, retain the generated hashes, and include at least one signed sample form for CAB review.

### 4. First-Hour Checklist (`Drafts/Incident_Response/07c_Incident_First_Hour_Checklist_GR.md`)
- **Strengths:** Phased approach preserved; newly added quick-contact table references `07_Contacts.md`, and retention guidance now points to `Supporting_Docs/IR/incident-log-template.md` plus `12_Recordkeeping`.
- **Gaps:** Need to keep the contact block synchronized with the annex and archive signed PDFs after each use/exercise.
- **Actions:** Integrate checklist exports into the contact-sync automation and include verification in quarterly readiness reviews.

### 5. RCA Template (`Drafts/Incident_Response/07d_RCA_Report_Template.md`)
- **Strengths:** Compliance checklist now mandates risk-register updates, EN translation references (`20_README_and_Placeholders/Translation_Pack.md`), and archiving via `12_Recordkeeping`. Sections 2 and 9 force linkage to risk IDs and residual ratings.
- **Gaps:** Execution discipline still required to populate actual risk IDs and attach the cited Supporting_Docs artefacts; bilingual exports yet to be validated.
- **Actions:** When completing an RCA, attach the EN translation (if requested), capture evidence hashes, and log archive paths in the Records register.

### 6. Submission Readiness Tracker (`Compliance/07_Submission_Readiness.md`)
- Tracker now records completion of the contact-annex and SoA-mapping actions; the only flagged task is populating legal placeholders and signatures immediately before submission.

### 7. Business Continuity Placeholder (`Drafts/BCP/`)
- **Current state:** Empty. The IR plan defers disaster-recovery specifics to Doc 09, yet Doc 07 must show at least a summary BCP linking contacts, RTO/RPO targets, and tabletop cadence to the same evidence set.
- **Risk:** CAB/EETT reviewers could determine that Doc 07 lacks continuity evidence even if Doc 09 is populated, because the Doc 07 numbering (Incident & BCP) explicitly requires coverage.
- **Actions:** Import the latest BCP or create a bridging summary that cites Doc 09 artefacts, add tabletop scripts, and plan to export/sign the bilingual BCP into `Final/Incident/` once approved.

## Overlap & Dependency Highlights
1. **Contacts as single source:** `07_Contacts.md` feeds the IR plan, incident forms, first-hour checklist, Doc 08 notification templates, RA escalation steps, and will also be referenced by the BCP. Automations must update all artefacts simultaneously; log each sync under `Evidence/Incident/`.
2. **Risk register ↔ RCA loop:** Every RCA completed with `07d_RCA_Report_Template.md` must cite risk IDs from the risk assessment. Closing an RCA should trigger updates to the risk register annex and Board reporting.
3. **Incident ↔ Continuity:** The incident plan calls the BCP for failovers (HSM/site outages). Populate `Drafts/BCP/` so the dependency is explicit and auditors see continuity controls next to response controls.
4. **Evidence packaging:** Hash manifests for `Final/Risk/*.pdf` and `Final/Incident/*.pdf` must be captured under `Evidence/*` and Annex B. When RA/Doc 08 deliverables reference the IRP or risk assessment, reuse the same hash IDs to avoid drift.

## Clean-up & Merge Actions
1. **Populate Placeholders Before Filing:** Replace every `[LEGAL_NAME_GR]`, `[SUBMISSION_DATE]`, `[ARCHIVE_CUSTODIAN_NAME]`, signer block, and contact placeholder with live data just ahead of submission.
2. **Bundle Referenced Annexes:** Ensure each Supporting_Docs artefact cited (asset inventory XLSX, notification templates, DR evidence, tabletop minutes, metrics targets, contact changelog) ships with the dossier or is hyperlinked per EETT guidance.
3. **Validate Automation Scripts:** Keep `scripts/sync_contacts_to_forms.py` and related tooling under change control, run them before exporting forms/checklists, and archive the execution evidence (ticket IDs, logs).
4. **Bilingual & Signature Consistency:** Confirm GR sources align with EN/PDF counterparts and apply QSCD signatures to every regulator-facing deliverable (risk assessment, IRP, incident forms, RCAs).
5. **Archive Proof:** Store signed PDFs and hash manifests in `Supporting_Docs/IR/...` per `12_Recordkeeping` and reference those IDs inside `15_Compliance_Master`.
6. **Fill the BCP Draft Area:** Import the latest DR/BCP material into `Drafts/BCP/` and plan its signed export so continuity evidence accompanies incident artefacts.

## Consolidated Readiness Verdict
- **Risk Assessment:** Partial — SoA mapping is complete but placeholders/signatures must be filled and annex files bundled before CAR review.
- **Incident Response & Reporting:** Ready pending insertion of live metadata and confirmation that referenced Supporting_Docs artefacts ship with the dossier (GR/EN parity outstanding).
- **Templates & Checklists:** Ready templates with automation guidance; they still require real operational data, signed samples, and archived proof at submission time.
- **BCP/Continuity:** Missing drafts — populate `Drafts/BCP/` to close the loop between Art.5 response and Art.4 continuity requirements.

Addressing the remaining clean-up actions keeps the pack regulator-ready while deferring placeholder population until the final submission window.
