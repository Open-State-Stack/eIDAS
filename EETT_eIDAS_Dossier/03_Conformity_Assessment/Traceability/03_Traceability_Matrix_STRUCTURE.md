# TRACEABILITY MATRIX STRUCTURE
## Excel File Specification for 03_Traceability_Matrix.xlsx

<!--
**PURPOSE OF THIS DOCUMENT:**

This document is a **specification**, not the matrix itself. It defines the required structure, columns, sheets, and functionality for the `03_Traceability_Matrix.xlsx` file.

The CAB (Conformity Assessment Body) should use this specification to build the Excel file that will be used during the audit. The final Excel file, not this Markdown document, is the deliverable to be submitted to EETT alongside the CAR.

This structured approach ensures that all regulatory requirements are systematically tracked, mapped to evidence, and assessed for compliance, leaving no gaps in the audit trail.
-->

**File:** 03_Traceability_Matrix.xlsx  
**Purpose:** Comprehensive mapping of all eIDAS/EETT/ETSI requirements to TSP evidence  
**Usage:** CAB audit tool, EETT review reference, TSP compliance tracking  
**Format:** Microsoft Excel (.xlsx) or LibreOffice Calc (.ods)

---

## OVERVIEW

This document specifies the structure for the separate Excel file **03_Traceability_Matrix.xlsx** (referenced in CAR Template Annex A and required per GAP_ANALYSIS_AND_ENRICHMENT.md Section 1.6).

**Key Features:**
- 5 sheets covering eIDAS, EETT, ETSI, cross-references, and non-conformities
- 100+ requirements mapped to evidence
- Sortable/filterable columns for CAB audit efficiency
- Auto-calculated conformity percentage
- Links to evidence IDs in CAR Annex B (Evidence Register)

---

## SHEET 1: eIDAS Requirements (Primary Regulations)

**Sheet Name:** `eIDAS_Requirements`

**Purpose:** Map every applicable eIDAS Regulation (EU) 910/2014 article and paragraph to TSP evidence.

**Columns:**

| Column | Header | Data Type | Description | Example |
|--------|--------|-----------|-------------|---------|
| A | `Reg_ID` | Text | Unique identifier for this requirement | `eIDAS-24-2-a` |
| B | `Article` | Text | eIDAS article number | `24` |
| C | `Paragraph` | Text | Paragraph/subparagraph | `(2)(a)` |
| D | `Requirement_EN` | Text (500 char) | Requirement text in English (verbatim from regulation) | "Employ staff possessing the expert knowledge, experience and qualifications necessary for the services provided..." |
| E | `Requirement_EL` | Text (500 char) | Requirement text in Greek (official Greek translation) | "Να απασχολούν προσωπικό με τις απαραίτητες ειδικές γνώσεις..." |
| F | `Applicable_Services` | Text | Service types this requirement applies to | `ALL` or `QES, QSeal, QTS` or `QES only` |
| G | `Service_OID` | Text | Service type identifier(s) from ETSI TS 119 612 | `0.4.0.194112.1.0, 0.4.0.194112.1.3` |
| H | `Mandatory` | Dropdown | Is this requirement mandatory or optional? | `Mandatory` or `Optional` |
| I | `Evidence_ID` | Text | Reference to CAR Annex B (Evidence Register) | `EV-101, EV-201` (comma-separated if multiple) |
| J | `TSP_Document` | Text | TSP document where requirement is addressed | `TSPS Section 8`, `Risk Assessment`, `Org Chart` |
| K | `Section_Page` | Text | Specific section/page in TSP document | `Section 8.2, p. 45` |
| L | `CAR_Section` | Text | Where in CAR this is assessed | `Section 10.2` |
| M | `CAB_Finding` | Dropdown | CAB assessment result | `C` (Conformity), `NC-Critical`, `NC-Major`, `NC-Minor`, `N/A` (Not Applicable) |
| N | `CAB_Comments` | Text | CAB notes, observations, or justification | "Personnel qualifications verified. Training records current." |
| O | `NC_ID` | Text | If non-conformity, link to Section 17 NC ID | `NC-001` or empty |

**Rows:** 100+ rows (one per eIDAS requirement)

**Sample Data (first 10 rows):**

| Reg_ID | Article | Paragraph | Requirement_EN | Applicable_Services | Mandatory | Evidence_ID | TSP_Document | CAR_Section | CAB_Finding | CAB_Comments |
|--------|---------|-----------|----------------|---------------------|-----------|-------------|--------------|-------------|-------------|--------------|
| eIDAS-24-1 | 24 | (1) | Qualified trust service shall be provided by qualified TSP | ALL | Mandatory | This CAR | N/A | Section 10.1 | C | Assessed by this CAR |
| eIDAS-24-2-a | 24 | (2)(a) | Competent personnel | ALL | Mandatory | EV-101, EV-201 | TSPS Sec 8, Org Chart | Section 10.2 | C | Personnel verified |
| eIDAS-24-2-b | 24 | (2)(b) | Trustworthy systems & products | ALL | Mandatory | EV-301, EV-401 | TSPS Sec 7, HSM Specs | Section 10.3 | C | HSM FIPS 140-2 L3 confirmed |
| eIDAS-24-2-c | 24 | (2)(c) | Secure issuance environment | ALL | Mandatory | EV-405, EV-501 | TSPS Sec 6, RA Manual | Section 10.4 | C | RA operations secure |
| eIDAS-24-2-d | 24 | (2)(d) | Financial resources & liability | ALL | Mandatory | EV-105, EV-106 | Financials, Insurance | Section 10.5 | C | €2M insurance, audited balance sheet |
| eIDAS-24-2-e | 24 | (2)(e) | CAB assessment every 24 months | ALL | Mandatory | This CAR | N/A | Section 10.6 | C | This is initial CAR |
| eIDAS-24-2-f | 24 | (2)(f) | Supervision acceptance | ALL | Mandatory | EV-110 | Application Part H | Section 10.7 | C | TSP commits to EETT supervision |
| eIDAS-24-2-g | 24 | (2)(g) | Change notification | ALL | Mandatory | EV-112 | Change Mgmt Policy | Section 10.8 | C | 7-day notification process documented |
| eIDAS-24-2-h | 24 | (2)(h) | Termination plan | ALL | Mandatory | EV-108 | Termination Plan | Section 10.9 | C | Plan comprehensive, custodian agreement signed |
| eIDAS-28-1-a | 28 | (1)(a) | QES uniquely links to signatory | QES | Mandatory | EV-502 | Test Certs, TSPS Sec 2 | Section 11.1 | C | Subject DN includes unique ID |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

**Total Requirements:** ~100 rows covering eIDAS Articles 13, 19, 20, 24, 28, 38, 42, 33, 34, 44, 45, Annexes I-IV

**Formulas to Add:**
- Column P: `Conformity_Score` = `=COUNTIF(M:M,"C")/COUNTA(M:M)*100` (percentage of "C" findings)
- Summary row at bottom: Total Requirements, Total Conforming, Total Non-Conforming, Conformity %

---

## SHEET 2: EETT Requirements (National Regulations)

**Sheet Name:** `EETT_Requirements`

**Purpose:** Map all EETT Regulation articles and annexes to TSP evidence.

**Columns:** Same as Sheet 1 (A-O), but with EETT-specific content

| Column | Header | Description | Example |
|--------|--------|-------------|---------|
| A | `Reg_ID` | Unique identifier | `EETT-Art3-2` |
| B | `Article` | EETT article number | `3` |
| C | `Paragraph` | Paragraph/subparagraph | `3.2` |
| D | `Requirement_EL` | Requirement text in Greek (official language) | "Οι πάροχοι υπηρεσιών εμπιστοσύνης εγγράφονται..." |
| E | `Requirement_EN` | Requirement text in English (translation) | "Trust service providers shall register..." |
| F | `Applicable_Services` | Service types | `ALL` or specific |
| G | `Service_OID` | Service type OID | `0.4.0.194112.1.0` |
| H | `Mandatory` | Mandatory/Optional | `Mandatory` |
| I | `Evidence_ID` | CAR Annex B reference | `EV-107, EV-109` |
| J | `TSP_Document` | TSP document | `Risk Assessment, Incident Response Plan` |
| K | `Section_Page` | Location | `Section 5, p. 20` |
| L | `CAR_Section` | CAR assessment section | `Section 12, Section 13` |
| M | `CAB_Finding` | Finding | `C`, `NC-Major`, etc. |
| N | `CAB_Comments` | Comments | "Security measures adequate. ISO 27001 certified." |
| O | `NC_ID` | Non-conformity ID | `NC-005` or empty |

**Sample Data (first 10 rows):**

| Reg_ID | Article | Paragraph | Requirement_EL | Requirement_EN | Applicable_Services | Mandatory | Evidence_ID | TSP_Document | CAR_Section | CAB_Finding |
|--------|---------|-----------|----------------|----------------|---------------------|-----------|-------------|--------------|-------------|-------------|
| EETT-Art3-2 | 3 | 3.2 | Εγγραφή ΠΥΕ στο μητρώο ΕΕΤΤ | TSP registry registration | ALL | Mandatory | EV-110 | Registry Application (Doc 01) | Section 2 | C |
| EETT-Art3-5 | 3 | 3.5 | Ειδοποίηση αλλαγών (7 ημέρες) | 7-day change notification | ALL | Mandatory | EV-112 | Change Notice Template (Doc 01b) | Section 10.8 | C |
| EETT-Art4-1 | 4 | 4.1 | Μέτρα ασφαλείας | Security measures | ALL | Mandatory | EV-107, EV-400s | Risk Assessment, TSPS Sec 7 | Section 12 | C |
| EETT-Art5-3 | 5 | 5.3 | Ειδοποίηση συμβάντων (24h για Level 3+) | 24h incident notification | ALL | Mandatory | EV-109, EV-505 | Incident Response Plan (Doc 07a) | Section 13.1 | C |
| EETT-Art5-4 | 5 | 5.4 | Πεδία τελικής έκθεσης συμβάντος | Final incident report fields (23 fields) | ALL | Mandatory | EV-109 | Incident Forms (Doc 07b) | Section 13.1 | C |
| EETT-Art7-1 | 7 | 7.1 | Σχέδιο λήξης δραστηριοτήτων | Termination plan | ALL | Mandatory | EV-108 | Termination Plan (Doc 09) | Section 10.9 | C |
| EETT-Art8-4 | 8 | 8.4 | Διατήρηση αρχείων 7 ετών μετά τη λήξη | 7-year archive access after termination | ALL | Mandatory | EV-108 | Termination Plan Sec 5 | Section 10.9 | C |
| EETT-Art10-1 | 10 | 10.1 | ΕΑΣ περιέχει ταυτοποίηση ΦΟΣ | CAR contains CAB identification | ALL | Mandatory | This CAR | N/A | Section 1 | C |
| EETT-Art11-1 | 11 | 11.1 | Ανάκληση 24×7 | 24×7 revocation acceptance | QES, QSeal, QWAC | Mandatory | EV-111, EV-506 | Revocation SOP (Doc 11) | Section 7.6, 13 | C |
| EETT-Art12-1 | 12 | 12.1 | Τήρηση αρχείων 7 ετών | 7-year record retention | ALL | Mandatory | EV-113, EV-507 | Recordkeeping Policy (Doc 12) | Section 14.1 | C |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

**Total Requirements:** ~50 rows covering EETT Articles 3-12, Annexes 1-5

---

## SHEET 3: ETSI Standards (European Technical Standards)

**Sheet Name:** `ETSI_Standards`

**Purpose:** Map ETSI standards (voluntary but presumption of conformity) to TSP implementation.

**Columns:**

| Column | Header | Data Type | Description | Example |
|--------|--------|-----------|-------------|---------|
| A | `Standard_ID` | Text | ETSI standard identifier | `EN-319-411-2-6.3.2` |
| B | `Standard_Name` | Text | Full standard name | `ETSI EN 319 411-2` |
| C | `Section` | Text | Section number within standard | `6.3.2` |
| D | `Requirement_Summary` | Text | Summary of requirement | "Identity verification: Face-to-face or video ident per specified procedures" |
| E | `Binding` | Dropdown | Mandatory (via eIDAS reference) or Recommended | `Recommended` or `Mandatory` |
| F | `eIDAS_Reference` | Text | If mandatory, which eIDAS article requires it | `eIDAS Art. 28` or `N/A` |
| G | `Applicable_Services` | Text | Service types | `QES, QSeal` |
| H | `Evidence_ID` | Text | CAR Annex B reference | `EV-501, EV-115` |
| I | `TSP_Document` | Text | TSP document | `TSPS Section 2, RA Manual` |
| J | `CAR_Section` | Text | CAR assessment section | `Section 7.5, 11.1` |
| K | `CAB_Finding` | Dropdown | Finding | `C`, `NC-Minor` (if recommendation not followed), `N/A` |
| L | `CAB_Comments` | Text | Comments | "TSP follows ETSI best practice for video ident. Compliant." |

**Sample Data (first 10 rows):**

| Standard_ID | Standard_Name | Section | Requirement_Summary | Binding | eIDAS_Reference | Applicable_Services | Evidence_ID | CAB_Finding | CAB_Comments |
|-------------|---------------|---------|---------------------|---------|-----------------|---------------------|-------------|-------------|--------------|
| EN-319-401-5.2 | ETSI EN 319 401 | 5.2 | TSP organizational structure | Recommended | N/A | ALL | EV-101 | C | Org chart clear, roles defined |
| EN-319-411-2-6.3.2 | ETSI EN 319 411-2 | 6.3.2 | Identity verification (QES/QSeal) | Mandatory | eIDAS Art. 28 | QES, QSeal | EV-501 | C | Face-to-face and video ident compliant |
| EN-319-411-2-7.1 | ETSI EN 319 411-2 | 7.1 | Key management (QSCD, HSM) | Mandatory | eIDAS Art. 28, 38 | QES, QSeal | EV-302, EV-301 | C | HSM FIPS 140-2 L3, M-of-N quorum |
| EN-319-412-2-5 | ETSI EN 319 412-2 | 5 | QES certificate profile (natural persons) | Mandatory | eIDAS Annex I | QES | EV-502 | C | Sample certs reviewed, compliant |
| EN-319-421-5.3 | ETSI EN 319 421 | 5.3 | Time source accuracy (TSA) | Mandatory | eIDAS Art. 42 | QTS | EV-305, EV-504 | C | ±0.45s accuracy, UTC-traceable |
| EN-319-401-6.2 | ETSI EN 319 401 | 6.2 | Information security management | Recommended | eIDAS Art. 24(2)(b) | ALL | EV-107 | C | ISO 27001 certified, risk assessment |
| EN-319-411-1-6.2 | ETSI EN 319 411-1 | 6.2 | Operational procedures | Recommended | N/A | ALL | EV-102 | C | TSPS comprehensive, procedures documented |
| TS-119-312-5 | ETSI TS 119 312 | 5 | Cryptographic suites (algorithms) | Mandatory | eIDAS Art. 24(2)(b) | ALL | EV-502, EV-504 | C | RSA-2048+, SHA-256+, no weak algos |
| TS-119-612-5.5 | ETSI TS 119 612 | 5.5 | Trusted List service type OIDs | Mandatory | eIDAS Art. 22 | ALL | EV-503 | C | OIDs correctly assigned per TS 119 612 |
| EN-319-403-6 | ETSI EN 319 403 | 6 | Security controls for TSPs | Recommended | N/A | ALL | EV-107, EV-400s | C | Physical security, logical security adequate |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

**Total Requirements:** ~50 rows covering key ETSI standards (EN 319 401, 403, 411-1, 411-2, 412-2/3/4/5, 421, 422, TS 119 312, TS 119 612)

---

## SHEET 4: Cross-Reference Index (Lookup & Filter Tool)

**Sheet Name:** `Cross_Reference`

**Purpose:** Provide filterable view for CAB auditors to quickly find requirements by various criteria.

**Columns:**

| Column | Header | Data Type | Description |
|--------|--------|-----------|-------------|
| A | `Requirement_ID` | Text | Combined ID from Sheets 1-3 | `eIDAS-24-2-a` or `EETT-Art11-1` or `EN-319-411-2-6.3.2` |
| B | `Regulation_Type` | Dropdown | Source regulation type | `eIDAS`, `EETT`, `ETSI` |
| C | `Article_Section` | Text | Article or section number | `24(2)(a)` or `Art. 11.1` or `6.3.2` |
| D | `Requirement_Short` | Text | Brief description (50 char) | "Competent personnel" or "24×7 revocation" |
| E | `Service_Type` | Dropdown | Service type (multi-select filter) | `ALL`, `QES`, `QSeal`, `QTS`, `Validation`, `Preservation`, `REM`, `QWAC` |
| F | `Priority` | Dropdown | CAB audit priority | `Critical Path`, `High Priority`, `Medium Priority`, `Low Priority` |
| G | `CAR_Section` | Text | Where assessed in CAR | `Section 10.2` or `Section 11.1` |
| H | `TSP_Document` | Dropdown | Primary TSP document | `TSP Policy`, `TSPS`, `Risk Assessment`, `Incident Response`, `Termination Plan`, `End-User Agreement`, `Revocation SOP`, `Recordkeeping Policy`, `Application Form`, `Test Certificates` |
| I | `Evidence_ID` | Text | CAR Annex B reference | `EV-101, EV-201` |
| J | `CAB_Finding` | Dropdown | Assessment result | `C`, `NC-Critical`, `NC-Major`, `NC-Minor`, `N/A` |
| K | `Audit_Status` | Dropdown | Audit progress | `Not Started`, `In Progress`, `Completed`, `Evidence Pending` |
| L | `Auditor_Assigned` | Dropdown | Team member assigned | `Lead Auditor`, `Technical Specialist (PKI)`, `Security Specialist`, `Legal Reviewer` |

**Purpose:**
- CAB can filter by `Service_Type` to see all QES requirements
- CAB can filter by `Priority = Critical Path` to focus audit on high-risk areas first
- CAB can filter by `Audit_Status = Not Started` to track audit progress
- CAB can filter by `TSP_Document = TSPS` to review all requirements related to TSPS document

**Data Source:** Auto-populated from Sheets 1-3 using Excel formulas (`=Sheet1!A2` references) or manual consolidation

**Total Rows:** ~200 (all requirements from Sheets 1-3 combined)

---

## SHEET 5: Non-Conformities Register

**Sheet Name:** `NC_Register`

**Purpose:** Track all non-conformities identified during audit, link to specific requirements, monitor remediation.

**Columns:**

| Column | Header | Data Type | Description | Example |
|--------|--------|-----------|-------------|---------|
| A | `NC_ID` | Text | Unique non-conformity identifier | `NC-001`, `NC-002`, `NC-101` (critical=00x, major=10x, minor=20x) |
| B | `Severity` | Dropdown | Severity level | `Critical`, `Major`, `Minor`, `Observation` |
| C | `Related_Requirement` | Text | Requirement ID from Sheets 1-3 | `eIDAS-24-2-b`, `EETT-Art11-1` |
| D | `Regulation_Violated` | Text | Which regulation/standard | `eIDAS Art. 24(2)(b)`, `EETT Art. 11.1` |
| E | `Description` | Text (500 char) | What is the non-conformity | "Backup HSM at DR datacenter is offline and not operational. Primary HSM functional, but DR capability compromised." |
| F | `Risk_Level` | Dropdown | Risk assessment | `High`, `Medium`, `Low` |
| G | `Discovery_Date` | Date | When CAB identified NC | `2025-11-08` |
| H | `Discovery_Method` | Dropdown | How NC was found | `Site Inspection`, `Document Review`, `Interview`, `Technical Test`, `Witness Enrollment` |
| I | `CAR_Section` | Text | Where NC is documented in CAR | `Section 17.2, NC-101` |
| J | `TSP_Response_Required` | Dropdown | Does TSP need to respond? | `Yes - Immediate`, `Yes - 30 days`, `Yes - 90 days`, `No - Recommendation only` |
| K | `Corrective_Action_Plan` | Text (500 char) | TSP's proposed remediation | "TSP will repair backup HSM and bring it online by 2025-12-15. Will provide test report demonstrating functionality." |
| L | `Deadline` | Date | TSP deadline for remediation | `2025-12-15` |
| M | `Evidence_Submitted` | Text | What evidence TSP will provide | "DR test report, HSM status log, CAB re-audit of DR facility" |
| N | `Verification_Method` | Dropdown | How CAB will verify remediation | `Surveillance Audit (On-Site)`, `Surveillance Audit (Remote)`, `Document Review Only`, `No Verification (Recommendation)` |
| O | `Verification_Date` | Date | When CAB verified remediation | `2026-01-20` |
| P | `Status` | Dropdown | Current status | `Open`, `TSP Action Pending`, `Evidence Submitted`, `CAB Verifying`, `Closed - Resolved`, `Closed - Accepted Risk` |
| Q | `Final_Outcome` | Text | Resolution summary | "Backup HSM repaired and tested. DR failover successful on 2025-12-18. NC closed." |

**Sample Data (3 examples):**

| NC_ID | Severity | Related_Requirement | Description | Risk_Level | Deadline | Status |
|-------|----------|---------------------|-------------|------------|----------|--------|
| NC-101 | Major | eIDAS-24-2-b | Backup HSM at DR datacenter offline. Primary functional. DR capability at risk. | Medium | 2025-12-15 | TSP Action Pending |
| NC-102 | Major | EETT-Art5-3 | Incident Response Plan missing ENISA notification procedure for cross-border incidents (Level 4+). | Low | 2026-01-30 | Open |
| NC-201 | Minor | EN-319-401-6.2 | Risk Assessment could include quantitative risk scoring matrix (currently qualitative only). Meets requirements but enhancement recommended. | Low | N/A (Recommendation) | Open |

**Usage:**
- CAB updates this sheet during audit as NCs are discovered
- TSP receives copy after CAR issuance, fills in `Corrective_Action_Plan` column
- CAB tracks remediation progress via `Status` column
- Links to CAR Section 17 for detailed NC descriptions

**Total Rows:** Variable (depends on audit findings; typically 0-20 NCs)

---

## EXCEL FILE FEATURES & FORMATTING

### Conditional Formatting (apply to all sheets)

**CAB_Finding Column:**
- `C` (Conformity): **Green fill**, black text
- `NC-Critical`: **Red fill**, white text, **bold**
- `NC-Major`: **Orange fill**, black text, **bold**
- `NC-Minor`: **Yellow fill**, black text
- `N/A`: **Gray fill**, gray text

**Status Column (Sheet 5):**
- `Open`: **Red fill**
- `TSP Action Pending`: **Orange fill**
- `Closed - Resolved`: **Green fill**

### Data Validation (Dropdowns)

Configure dropdowns for these columns:
- `CAB_Finding`: `C`, `NC-Critical`, `NC-Major`, `NC-Minor`, `N/A`
- `Mandatory`: `Mandatory`, `Optional`, `Conditional`
- `Severity`: `Critical`, `Major`, `Minor`, `Observation`
- `Binding` (Sheet 3): `Mandatory`, `Recommended`
- `Service_Type`: `ALL`, `QES`, `QSeal`, `QTS`, `Validation`, `Preservation`, `REM`, `QWAC`
- `Priority`: `Critical Path`, `High Priority`, `Medium Priority`, `Low Priority`
- `Audit_Status`: `Not Started`, `In Progress`, `Completed`, `Evidence Pending`
- `TSP_Response_Required`: `Yes - Immediate`, `Yes - 30 days`, `Yes - 90 days`, `No`
- `Verification_Method`: `Surveillance Audit (On-Site)`, `Surveillance Audit (Remote)`, `Document Review Only`, `No Verification`
- `Status`: `Open`, `TSP Action Pending`, `Evidence Submitted`, `CAB Verifying`, `Closed - Resolved`, `Closed - Accepted Risk`

### Freeze Panes

- All sheets: Freeze first row (header row) for scrolling

### Auto-Filter

- Enable auto-filter on all header rows for easy sorting/filtering

### Formulas & Summary Statistics

**Sheet 1 (eIDAS) - Add summary row at bottom:**
- Total Requirements: `=COUNTA(A:A)-1` (subtract header)
- Total Conforming: `=COUNTIF(M:M,"C")`
- Total Critical NCs: `=COUNTIF(M:M,"NC-Critical")`
- Total Major NCs: `=COUNTIF(M:M,"NC-Major")`
- Total Minor NCs: `=COUNTIF(M:M,"NC-Minor")`
- Total N/A: `=COUNTIF(M:M,"N/A")`
- **Conformity Percentage:** `=COUNTIF(M:M,"C")/(COUNTA(M:M)-COUNTIF(M:M,"N/A"))*100` (exclude N/A from denominator)

**Repeat for Sheets 2 and 3**

**Sheet 4 (Cross-Reference) - Add dashboard:**
- Overall Conformity %: `=AVERAGE(Sheet1_Conformity%, Sheet2_Conformity%, Sheet3_Conformity%)`
- Total NCs: `=SUM(Sheet1_Critical+Sheet1_Major+Sheet1_Minor, Sheet2_..., Sheet3_...)`
- Critical Path Items: `=COUNTIF(F:F,"Critical Path")`
- Critical Path Conformity: `=COUNTIFS(F:F,"Critical Path",J:J,"C")/COUNTIF(F:F,"Critical Path")*100`

**Sheet 5 (NC Register) - Add summary:**
- Total NCs: `=COUNTA(A:A)-1`
- Critical: `=COUNTIF(B:B,"Critical")`
- Major: `=COUNTIF(B:B,"Major")`
- Minor: `=COUNTIF(B:B,"Minor")`
- Open: `=COUNTIF(P:P,"Open")`
- Closed: `=COUNTIF(P:P,"Closed - Resolved")`

---

## FILE METADATA & PROTECTION

**File Properties:**
- **Title:** EETT/eIDAS Conformity Assessment - Traceability Matrix
- **Author:** [CAB_NAME]
- **Subject:** Requirement-to-Evidence Mapping for [LEGAL_NAME_GR]
- **Keywords:** eIDAS, EETT, Traceability, Conformity Assessment, CAR, Qualified Trust Services
- **Company:** [CAB_LEGAL_NAME]
- **Version:** 1.0 (increment for each audit cycle)
- **Date Created:** [AUDIT_START_DATE]
- **Last Modified:** [CAR_ISSUE_DATE]

**Worksheet Protection:**
- **Sheets 1-3:** Protect with password (CAB only can edit during audit)
- **Sheet 4:** Read-only (auto-calculated from Sheets 1-3)
- **Sheet 5:** Editable by CAB (for adding NCs during audit), then protect after CAR issuance

**File Protection:**
- **Recommended:** Protect workbook structure (prevent sheet deletion/reordering)
- **Password:** Set by CAB, shared with EETT if required

---

## USAGE WORKFLOW

### Phase 1: Pre-Audit (CAB Preparation)
1. CAB creates empty Traceability Matrix file using this structure
2. CAB populates Sheets 1-3 with all applicable requirements from eIDAS/EETT/ETSI regulations
3. CAB assigns `Auditor_Assigned` in Sheet 4 for workload distribution
4. CAB marks `Priority` levels based on risk assessment

### Phase 2: During Audit
1. As CAB reviews each requirement, they fill:
   - `Evidence_ID` (reference to CAR Annex B)
   - `TSP_Document` (which TSP doc addresses this)
   - `CAR_Section` (where CAB will assess this in CAR)
2. As CAB conducts tests/inspections, they update `Audit_Status` in Sheet 4
3. When NC identified, CAB adds row to Sheet 5 (NC Register)
4. CAB marks `CAB_Finding` in Sheets 1-3 (C, NC-X, N/A)

### Phase 3: Post-Audit (CAR Preparation)
1. CAB reviews all `CAB_Finding` columns to ensure no unfilled cells
2. CAB calculates conformity percentages (should auto-calculate via formulas)
3. CAB exports summary statistics to CAR Section 17 (Non-Conformities) and Executive Summary
4. CAB includes this Excel file as **Annex A** to CAR (or separate attachment)

### Phase 4: TSP Remediation (if NCs exist)
1. TSP receives copy of Traceability Matrix
2. TSP focuses on Sheet 5 (NC Register) - `Status = Open`
3. TSP fills `Corrective_Action_Plan` and `Evidence_Submitted` columns
4. TSP submits updated matrix to CAB with remediation evidence
5. CAB updates `Status` as evidence is reviewed

### Phase 5: Surveillance Audit
1. CAB uses same file for next audit (create v2.0)
2. Re-assess all previous NCs (verify closed)
3. Update `CAB_Finding` for any changes since last audit
4. Add new NCs (if any) to Sheet 5

---

## INTEGRATION WITH CAR TEMPLATE

This Excel file is referenced in:
- **CAR Section 1 (Introduction):** "This CAR is supported by a comprehensive Traceability Matrix (Annex A or separate file 03_Traceability_Matrix.xlsx) mapping all requirements to evidence."
- **CAR Executive Summary:** "Overall Conformity Score: [X]% (calculated from Traceability Matrix)"
- **CAR Section 17 (Non-Conformities):** "All non-conformities are tracked in the Traceability Matrix, Sheet 5 (NC Register)"
- **CAR Annex A:** "See separate file 03_Traceability_Matrix.xlsx for detailed requirement-to-evidence mapping. If submitting as part of CAR PDF, the matrix is included as Annex A (Excel embedded or printed sheets)."

---

## DELIVERY FORMATS

**Option 1: Separate Excel File** (Recommended)
- File: `03_Traceability_Matrix.xlsx` (or `.ods` for LibreOffice)
- Submitted alongside CAR PDF
- Allows EETT/TSP to filter and sort dynamically

**Option 2: Embedded in CAR PDF**
- Excel sheets printed and inserted as CAR Annex A
- Less flexible (cannot filter), but single-file delivery

**Option 3: Both**
- CAR PDF includes summary tables (first 10-20 rows of each sheet for illustration)
- Full Excel file provided separately for detailed review

---

## SAMPLE FILL INSTRUCTIONS (For CAB Auditors)

When filling the Traceability Matrix during audit:

**Step 1:** For each requirement in Sheets 1-3, ask:
- Does this requirement apply to the TSP's services? → If yes, proceed. If no, mark `CAB_Finding = N/A` and note reason.

**Step 2:** Identify evidence:
- Which TSP document addresses this requirement? → Fill `TSP_Document`
- Where in the document? → Fill `Section_Page`
- What audit evidence did CAB collect? → Fill `Evidence_ID` (link to CAR Annex B)

**Step 3:** Assess conformity:
- Does TSP meet the requirement? → Mark `CAB_Finding = C`
- If not, what severity? → Mark `CAB_Finding = NC-Critical/Major/Minor`
- Add detailed NC description to Sheet 5 (NC Register)

**Step 4:** Add comments:
- In `CAB_Comments`, briefly explain the finding (1-2 sentences)
- For conformity: "Verified via [method]. Meets requirement."
- For NC: "See NC-XXX in Section 17. TSP must [corrective action]."

**Step 5:** Quality check:
- Before finalizing, sort by `CAB_Finding` column → All rows should have a value (no blanks)
- Check formulas at bottom → Conformity % should calculate correctly
- Cross-check NC IDs → Every NC in Sheet 5 should link to a `CAB_Finding = NC-X` in Sheets 1-3

---

## VERSION CONTROL

**Version Numbering:**
- **v1.0** – Initial audit (before CAR issuance)
- **v1.1** – Post-audit corrections (minor updates after CAB internal review)
- **v1.2** – Updated with TSP corrective actions (during remediation phase)
- **v1.3** – Final after surveillance audit verifies remediation
- **v2.0** – Next audit cycle (24 months later)

**File Naming Convention:**
- `03_Traceability_Matrix_v1.0_[TSP_NAME]_[AUDIT_DATE].xlsx`
- Example: `03_Traceability_Matrix_v1.0_HellenicTrust_2025-11-10.xlsx`

---

## APPENDIX: Sample Row Templates

### Sheet 1: eIDAS Requirement (Template Row)

```
Reg_ID: eIDAS-[ARTICLE]-[PARAGRAPH]-[SUBPARAGRAPH]
Article: [ARTICLE_NUMBER]
Paragraph: ([PARAGRAPH_NUMBER])([SUBPARAGRAPH])
Requirement_EN: [COPY VERBATIM FROM REGULATION]
Requirement_EL: [OFFICIAL GREEK TRANSLATION]
Applicable_Services: [ALL or QES, QSeal, QTS, etc.]
Service_OID: [OID or N/A]
Mandatory: [Mandatory or Optional]
Evidence_ID: [EV-XXX, EV-YYY]
TSP_Document: [Document name and section]
Section_Page: [Section X.Y, p. ZZ]
CAR_Section: [Section XX.X]
CAB_Finding: [C or NC-Critical or NC-Major or NC-Minor or N/A]
CAB_Comments: [CAB notes, 1-2 sentences]
NC_ID: [NC-XXX if non-conformity, else blank]
```

### Sheet 5: Non-Conformity (Template Row)

```
NC_ID: NC-[SEQUENCE] (e.g., NC-001 for first NC)
Severity: [Critical or Major or Minor or Observation]
Related_Requirement: [Reg_ID from Sheet 1, 2, or 3]
Regulation_Violated: [eIDAS Art. XX or EETT Art. YY]
Description: [What is non-conforming, observed facts, 2-3 sentences]
Risk_Level: [High or Medium or Low]
Discovery_Date: [YYYY-MM-DD]
Discovery_Method: [Site Inspection or Document Review or Interview or Technical Test]
CAR_Section: [Section 17.X, NC-ID]
TSP_Response_Required: [Yes - Immediate or Yes - 30 days or Yes - 90 days or No]
Corrective_Action_Plan: [TSP fills this: What will be done, by when]
Deadline: [YYYY-MM-DD]
Evidence_Submitted: [TSP fills this: What proof will be provided]
Verification_Method: [How CAB will verify: Surveillance Audit, Document Review, etc.]
Verification_Date: [YYYY-MM-DD, after remediation verified]
Status: [Open initially, update as remediation progresses]
Final_Outcome: [CAB fills after verification: Summary of resolution]
```

---

## CONCLUSION

This Traceability Matrix structure provides:
✅ **Comprehensive Coverage:** All eIDAS, EETT, ETSI requirements mapped  
✅ **Auditability:** Clear evidence trail for every requirement  
✅ **Efficiency:** Sortable/filterable for CAB workflow optimization  
✅ **Transparency:** EETT and TSP can review exactly what was assessed  
✅ **Remediation Tracking:** NC Register enables systematic closure of issues  
✅ **Reusability:** Same file structure for future surveillance audits (version-controlled)

**Next Step:** CAB creates this Excel file and populates it during the audit. The completed file becomes a critical component of the CAR deliverable and serves as the audit's "proof of work" demonstrating that every requirement was systematically reviewed.

---

**Document Control:**
- **Version:** 1.0
- **Date:** 2025-11-11
- **Author:** Senior eIDAS Specialist Consultant
- **Purpose:** Specification for 03_Traceability_Matrix.xlsx structure
- **Status:** Ready for CAB Implementation

**File to Create:** `03_Traceability_Matrix.xlsx` (using this structure as blueprint)

---

**END OF TRACEABILITY MATRIX STRUCTURE SPECIFICATION**
