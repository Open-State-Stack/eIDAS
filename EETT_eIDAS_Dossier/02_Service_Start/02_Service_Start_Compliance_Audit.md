# 02 Service Start Dossier – Compliance Audit
**Reviewer:** Senior Compliance (Regulator delegate)  
**Date:** 2025-11-11  
**Scope:** Folder `02_Service_Start` (Docs 02 & 02a) – EETT Regulation Art. 6 & Annex 4, eIDAS Art. 20/24

---

## Document Inventory
| File | Purpose | Regulatory hook | Review status |
|------|---------|-----------------|---------------|
| `Service_Start.md` | Master content for Annex 4 application (Doc 02) | EETT Art. 6 & Annex 4; eIDAS Art. 20, 24 | Draft with placeholders, evidence missing |
| `02_EETT_Qualified_Service_Start_Application_SIGNED.pdf` | Signed outward-facing application | Same as above | Not verifiable (PDF text extraction unavailable); needs manual check |
| `02a_Cover_Letter_Electronic_System_Access_SIGNED.pdf` | System-access administrator declaration | EETT Art. 6.4 | Not reviewed (PDF only, placeholders `[SYSTEM_ADMIN_*]` flagged in tracker) |
| `02_Submission_Readiness.md` | Status tracker | Internal control | Marks pack “✅” despite unresolved blockers |

---

## Detailed Findings & Readiness Gaps

1. **Compliance checklist lacks traceability** – Table still cites `Page [X]` across all references and keeps the “Placeholder Status” flag unchecked (`Service_Start.md:24-60`). Without real page numbers or a confirmation that placeholders are cleared, the Annex 4 minimum format is not met.
2. **Core provider data not populated** – Section A retains `[LEGAL_NAME_*]`, `[AFM_NUMBER]`, `[EETT_REG_NUMBER]`, contact details, and legal-representative IDs (`Service_Start.md:142-180`). Art. 6.1 requires these to mirror the registry; Art. 24(2)(a) fails until factual data is inserted and cross-checked with Dossier 01.
3. **Service descriptions are generic** – Part B lists every qualified service with `[VOLUME_*]`, `[QSCD_PROVIDER_NAME]`, `[TSA_URL]`, `[VALIDATION_API_URL]`, etc. (`Service_Start.md:191-260`). The regulator needs concrete operational metrics (capacity, algorithms in use, QSCD certificate references) before assessing Art. 20 scope. Currently this reads as a template, not an application.
4. **Financial & insurance evidence absent** – Part Γ (Financial Resources) references `[CAPITAL_AMOUNT]`, `[INSURANCE_*]`, ratio tables filled with `[CURRENT_RATIO]`, `[PASS/FAIL]`, etc. (`Service_Start.md:400-460`). No proof of insurance or capital adequacy is attached, violating Annex 4 §Γ and eIDAS Art. 24(2)(e)/(f).
5. **Conformity assessment body info incomplete** – CAB section leaves `[CAB_NAME]`, accreditation number, audit dates, and results as placeholders (`Service_Start.md:760-776`). Art. 6.2 expects an actual CAR and CAB certificate; absence will block processing.
6. **Attachment register unchecked** – Section 3.x of the attachment list (Doc references 03–16) shows `☐` for every artefact and provides no hyperlinks or evidence (`Service_Start.md:888-940`). Until real annexes are bundled, EETT Art. 6.3 is unmet.
7. **Submission & signature data missing** – Signature block cites `[QES_CERT_SERIAL]`, `[QSEAL_PROVIDER_NAME]`, `[SUBMISSION_DATE]`, `[EETT_SUBMISSION_PORTAL_URL]`, etc. (`Service_Start.md:1080-1174`). EETT rejects unsigned or placeholder-bearing PDFs.
8. **Readiness tracker overstates completion** – `02_Submission_Readiness.md:5-12` marks requirements as ✅ despite acknowledging outstanding placeholders, attachment renaming, and missing insurance policy number. This can mislead governance reviews; status should stay ⚠️ until resolved.
9. **PDF artefacts not validated** – Due to unavailable `pdftotext`, neither the signed Annex 4 PDF nor the system-access cover letter were reviewed. They must be checked offline to confirm bilingual content, signature validity, and placeholder removal.

---

## Cross-Document / Regulatory Risks
1. **Data consistency with Dossier 01** – All `[LEGAL_*]`, contact, and ID fields must match the registry application to satisfy Art. 6.1 ("same provider data") and avoid discrepancies in the National Trust List.
2. **Evidence chain for technical & financial capability** – Annex 4 demands verifiable attachments (CP/CPS, CAR, insurance certificates, business plan). Referencing folders 03–14 without embedding or linking enforceable documents leaves the regulator without auditable proof.
3. **QSCD and remote-service specifics** – eIDAS Art. 29/30 require QSCD approval references; placeholders such as `[QSCD_CERT_NUMBER]` mean no evidence of device certification or remote signing controls is provided.
4. **Operational metrics missing** – Capacity numbers `[TPS_QTS_PEAK]`, `[VOLUME_REMOTE_SIG_YEAR]`, etc., are needed for feasibility analysis and SLA commitments under Art. 24(2)(d)/(g).
5. **Attachment control** – Section 3.x implies numerous annexes pulled from other folders; without a merged submission or checksum list, there is high risk of version drift and of EETT rejecting the application as incomplete under Art. 6.5.

---

## Cleanup & Merge Recommendations
1. **Populate a single source of truth for placeholders** – Pull identity, contact, infrastructure, insurance, CAB, and QSCD data from authoritative records (Folders 01, 05, 07, 09). Run scripted replacements in `Service_Start.md`, re-export the PDF, and lock the values before signing.
2. **Attach mandatory evidence inline** – Embed or hyperlink (with fixed paths) the CAR, ISO certificates, insurance documents, financial statements, CP/CPS, TSPS, incident/termination plans, and business plan within Part Ζ so that the Annex 4 submission is self-contained.
3. **Produce verifiable metrics** – Replace `[VOLUME_*]`, `[TPS_*]`, `[VALIDITY_PERIOD]`, `[QSCD_PROVIDER_NAME]`, `[TSA_URL]`, etc., with actual numbers, OIDs, URLs, and device details. Reference corresponding ETSI documents (e.g., EN 319 411-2 clause mappings).
4. **Finalize CAB section** – Insert the CAB name, accreditation IDs, audit window, and explicit statement that non-conformities have been closed. Attach the CAR and CAB accreditation certificate.
5. **Update readiness tracker** – Keep requirement rows at ⚠️ until the populated Annex 4, signed PDFs, and attachments are verified. Document owners should be assigned for each outstanding placeholder cluster.
6. **Validate signed PDFs** – After updating the MD, regenerate and digitally sign the Annex 4 and cover-letter PDFs. Verify signatures (PAdES/XAdES) offline, archive the validation log, and ensure no `[PLACEHOLDER]` strings remain.

---

## Immediate Next Steps
1. Populate all placeholders in `Service_Start.md` (identity, service metrics, financials, CAB, submission metadata) and regenerate the signed PDF.
2. Gather and link every supporting annex listed in Part Ζ, ensuring filenames and references align with the restructured dossier folders.
3. Review `02_Submission_Readiness.md` to reflect true status, including confirmation that the cover letter’s `[SYSTEM_ADMIN_*]` fields and insurance policy numbers are filled.
