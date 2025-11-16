# 07 – Incident Response, Risk & BCP

Doc 07 now unifies the artefacts that prove how the Trust Service Provider handles **risk management**, **incident response**, and **business continuity**. Previously, core content lived in `07_Risk_And_Incidents/` while the `07_Incident_and_BCP/` folder served as an empty placeholder. The two workstreams are inseparable: regulators expect to see the same contacts, playbooks, and risk registers referenced across readiness trackers, templates, and signed PDFs.

## Scope Snapshot
- **Risk Management:** Methodology, risk register narrative, bilingual PDF pack, annex references (asset inventory, heat maps, SoA mapping). Draft material sits under `Drafts/Risk/`, while the signed PDF belongs in `Final/Risk/` with matching hashes recorded in Annex B.
- **Incident Response:** IR plan, forms, first-hour checklist, RCA template, and contact book now live under `Drafts/Incident_Response/`. Their regulator-facing PDFs are stored under `Final/Incident/`.
- **Business Continuity & BCP:** Placeholder area (`Drafts/BCP/`) to capture the BCP/DR playbooks that the IR plan references (Doc 09 dependencies). Populate it with resilience runbooks, RTO/RPO matrices, and tabletop reports before submission.
- **Compliance & Evidence:** Readiness tracker, audit/overlap analysis, and signed artefacts or logs belong under `Compliance/` and `Evidence/*`. Keep the contact sync + hash manifests here so auditors can trace each statement.

## Structure
| Path | Purpose |
|------|---------|
| `Drafts/Risk/` | Working GR narrative of the risk assessment prior to signing/export. |
| `Drafts/Incident_Response/` | Working IRP, forms, RCA template, first-hour checklist, and contacts. |
| `Drafts/BCP/` | Business continuity & DRM runbooks (placeholder to be filled). |
| `Compliance/` | Submission readiness tracker (`07_Submission_Readiness.md`) plus the combined audit/overlap report (`Incident_Risk_Compliance_Audit.md`). |
| `Evidence/Risk/` & `Evidence/Incident/` | Hash manifests, signed samples, tabletop minutes, contact-sync outputs. Populate when artefacts are exported or executed. |
| `Final/Risk/` & `Final/Incident/` | Signed bilingual PDFs ready for Doc 02 packaging (currently risk assessment + IR plan/forms). |

Whenever you update contacts or templates, re-run the automation scripts (`scripts/sync_contacts_to_forms.py`) so `07_Contacts.md`, forms, and checklists stay aligned. Record hashes for all Final artefacts inside Annex B and update Doc 02 §H before shipping the dossier.
