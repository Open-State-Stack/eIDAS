# 01 Registry Dossier – Compliance Audit
**Reviewer:** Senior Compliance (acting for regulator)  
**Date:** 2025-11-11  
**Scope:** Folder `01_Registry` (Docs 01, 01a, 01b) – eIDAS (Reg. 910/2014) & EETT Regulation Articles 3.2–3.7

---

## Document Inventory
| File | Purpose | Regulatory hook | Review status |
|------|---------|-----------------|---------------|
| `Registry_Application.md` | Bilingual master content for Doc 01 | EETT Art. 3.2–3.7, eIDAS Art. 24 | Draft, placeholders unresolved |
| `01_Registry_Application_GreekTrustCo_SIGNED.pdf` | Signed outward-facing version of Doc 01 | Same as above | Not machine-readable here; verify externally |
| `01a_Fee_Proof.md` | Narrative + checklist supporting €300 payment | EETT Art. 3.4, 3.7 | Partially complete; pending evidence |
| `01a_Registry_Fee_Proof_300EUR.pdf` | Bank receipt | EETT Art. 3.4 | Review blocked (pdf text extraction unavailable); confirm manually |
| `01b_Change_Notice_Template.md` | Template for change notices | EETT Art. 3.5, Art. 3.3 (NTL updates) | Template only; requires per-change populate |
| `01b_Change_Notification_Template_SIGNED.pdf` | Executable form for change notices | EETT Art. 3.5 | Not reviewed (same reason as above) |
| `01_REGISTRY_PLACEHOLDERS.md` | Master placeholder table for Docs 01/01a/01b | Cross-cutting | Complete list but values missing |
| `01_Submission_Readiness.md` | Readiness tracker | Internal control | Highlights pending work |

---

## Detailed Assessment & Findings

### 1. Registry Application (Doc 01)
- **Placeholder data outstanding:** All core identity, infrastructure, insurance, and attachment fields remain as `[PLACEHOLDER]`, leaving Art. 3.2 submission incomplete (`Registry_Application.md:6-124`).
- **Compliance checklist unchecked:** Table at the top remains empty/unchecked (`Registry_Application.md:13-22`), which signals no internal validation has been done against the cited clauses.
- **Attachment register blank:** Section G lists required annexes but every item is `☐ Attached`; this fails Art. 3.4 (fee proof), Art. 3.2 corporate docs, and Art. 24(2)(h) (liability cover) until evidence is linked (`Registry_Application.md:129-139`).
- **eIDAS Article 24 coverage is high-level:** Section H only states generic commitments without mapping to Art. 24(a–m) elements such as RA vetting, handover processes, and liability limits. Provide explicit statements or annex references (i.e., ETSI EN 319 401/411 citations) to avoid regulator queries (`Registry_Application.md:143-160`).
- **Submission metadata missing:** Protocol, EETT register number, and submission date placeholders persist (`Registry_Application.md:6-7`, `Registry_Application.md:166-174`). Ensure final PDF mirrors completed MD before signing.

### 2. Application PDF (`01_Registry_Application_GreekTrustCo_SIGNED.pdf`)
- PDF could not be inspected because `pdftotext` is unavailable in the sandbox. Confirm the signed PDF mirrors the updated MD, includes bilingual text, bears wet/digital signatures of both legal representatives, and redacts placeholder text. Retain evidence of signature validation.

### 3. Fee Proof (Doc 01a)
- **Compliance matrix still “Pending”:** No evidence that transaction ID/payment date have been verified by Finance (`01a_Fee_Proof.md:16-28`).
- **Bank references static placeholders:** IBAN notice warns to confirm with EETT, but there is no logged confirmation email or help-desk ticket proving that validation occurred (Art. 3.4 control expectation).
- **Attachment checklist unchecked:** Items at lines `55-58` remain unmarked, so the regulator cannot rely on the MD alone for proof. Cross-check that `01a_Registry_Fee_Proof_300EUR.pdf` is legible and stamped by the bank.
- **Annual €100 fee planning captured (`01a_Fee_Proof.md:83-108`)**—good practice, but add task owner & reminder evidence.

### 4. Change Notification Template (Doc 01b)
- **Template vs. actual change:** Current file is an empty template; readiness requires a completed pro-forma example or instructions for first-time use. Populate at least one worked example to demonstrate capability (EETT Art. 3.5).
- **EETT contact placeholder unresolved:** `Email: [EETT_TRUST_SERVICES_EMAIL]` at `01b_Change_Notice_Template.md:71-77` must be replaced with the current official address before distribution.
- **Registration number placeholder:** Field at `01b_Change_Notice_Template.md:65-68` must auto-populate from the register once assigned.
- **NTL alignment:** Section 4.B (lines `170-178`) requires confirmation that public contact info matches Doc 02 (NTL submission); create a link to the authoritative contact master to avoid divergence (EETT Art. 3.3).

### 5. Placeholder Register
- Comprehensive list exists, but no definitive column with actual production values is provided (`01_REGISTRY_PLACEHOLDERS.md:1-120`). Introduce a fourth column “Final Value” or convert the table into a CSV merged source to prevent stale data.
- Some placeholder names contain characters (`[Owned/Colocation]`, line 61) that complicate automated replacement; consider renaming to `[DC1_OWNERSHIP]` for consistent patterning.

### 6. Submission Readiness Tracker
- Lines `5-13` confirm three blocking items: populate submission dates/IDs, attach the banking confirmation, and align contact info with Folders 07 & 11. Maintain this list in the master audit log until evidence is attached.

### 7. PDFs (01a, 01b) – verification pending
- As with Doc 01 PDF, manual validation is required to confirm signatures, dates, and that no placeholders survived the conversion.

---

## Cross-Document Gaps vs. Regulation
1. **Identity & contact consistency (EETT Art. 3.2–3.3):** Same placeholders appear in Docs 01, 01a, 01b, yet there is no master truth source. A single mis-entry will misalign the National Trust List, revocation contact, and change notices.
2. **Financial/insurance evidence (eIDAS Art. 24(2)(e) & (h)):** No uploads proving minimum capital, liability insurance, or coverage periods despite being referenced in Doc 01.
3. **Change-management readiness (EETT Art. 3.5):** Template exists, but there is no SOP proving changes are logged, approved, and submitted within seven days.
4. **Fee proof traceability (EETT Art. 3.4):** MD indicates payment but lacks attachments and bookkeeping reference; auditors will request bank confirmation and ledger entry.
5. **Document control (eIDAS Art. 24(2)(k)):** Dates, versions, owners are inconsistent (Doc 01 uses `[DATE]`, placeholder table claims version 1.0 dated 2025-11-11, while Fee Proof is dated 2024-10-30).

---

## Cleanup & Merge Plan
1. **Establish a single data-source file:** Extend `01_REGISTRY_PLACEHOLDERS.md` with a “Final Value” column, mark data owners, and export as CSV for automated replacement. Lock edits through change control.
2. **Auto-populate Docs 01/01a/01b:** Use a scripted find/replace from the master CSV to regenerate MDs, then export PDFs. Ensure `[SUBMISSION_DATE]`, `[EETT_REG_NUMBER]`, protocol numbers, and contact info are injected last to avoid stale data.
3. **Merge supporting evidence:** Create a combined Annex section within Doc 01 (Section G) that embeds or hyperlinks the fee proof, GEMI certificate, board resolution, insurance certificate, and CAB attestation. This turns Doc 01 into the single authoritative dossier per Art. 3.2.
4. **Attach worked example for Doc 01b:** Clone the template, populate with a recent governance change, sign, and store as `01b_Example_<YYYYMMDD>.pdf`. This demonstrates operational readiness and doubles as training.
5. **Synchronize with other folders:** Align revocation/DPO contact data with Folders 07 (Trust Service Operations) and 11 (Revocation SOP). Add cross-links or shared variables to prevent drift.
6. **Update signed PDFs:** Once MDs are final, regenerate PDFs and have both legal representatives sign digitally. Verify signatures with ETSI EN 319 102-1 conformant tool, log evidence in the readiness tracker.

---

## Immediate Next Actions for Submission Readiness
1. Populate and freeze all placeholders (identity, contacts, infra, insurance) across Docs 01/01a/01b.
2. Attach verifiable banking proof and ledger entry for the €300 fee; reference it in both Doc 01 §G.1 and Doc 01a checklist.
3. Provide evidence of insurance and minimum capital (scanned certificates) per eIDAS Art. 24.
4. Validate signed PDFs against the final MD text and archive the validation logs.
5. Update the readiness tracker (`01_Submission_Readiness.md`) to ✅ status once artifacts are attached.
