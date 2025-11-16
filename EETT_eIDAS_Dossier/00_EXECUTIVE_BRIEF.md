# EETT/eIDAS DOSSIER TEMPLATE
## Step-by-Step Guide to Using This Accreditation Package

**Version:** 2.0  
**Date:** 2025-01-16  
**Purpose:** Complete usage instructions for EETT Qualified Trust Service Provider submission

---

## 📖 WHAT IS THIS DOCUMENT?

This is your **master guide** to using the EETT/eIDAS accreditation dossier template. Whether you're a project manager, compliance officer, technical lead, or executive sponsor, this document will guide you through the entire process from template customization to EETT submission.

**What this template provides:**
- ✓ 20+ pre-drafted, submission-ready documents covering 100% of EETT & eIDAS requirements
- ✓ Bilingual content (Greek/English) where required
- ✓ Complete compliance traceability to every regulatory article
- ✓ Automated validation and packaging scripts
- ✓ Quality assurance checklists and audit readiness tools

---

## 🎯 WHO SHOULD USE THIS GUIDE?

**Primary Users:**
- **Project Managers** – Overall timeline, milestones, team coordination
- **Compliance Officers** – Regulatory mapping, audit preparation, EETT liaison
- **Technical Leads** – Infrastructure requirements, test certificates, security architecture
- **Legal Counsel** – Contract review, liability assessment, GDPR compliance
- **Executive Sponsors** – Budget approval, strategic decisions, go-live authorization

**Reading Time:** 15-20 minutes  
**Implementation Time:** 4-6 weeks (parallel workstreams)

---

## 📂 UNDERSTANDING THE DOSSIER STRUCTURE

### Folder Organization

The dossier contains **20 numbered folders** (01-20) plus supporting directories:

```
EETT_eIDAS_Dossier/
├── 00_EXECUTIVE_BRIEF.md          ← YOU ARE HERE
├── 01_Registry/                    Registry application & fees
├── 02_Service_Start/               Qualified service application
├── 03_Conformity_Assessment/       CAB audit templates & traceability
├── 04_Policies/                    TSP Policy documents
├── 05_Key_Management/              TSPS & crypto procedures
├── 06_RA_Operations/               Registration Authority procedures
├── 07_Incident_and_BCP/            Risk & incident management
├── 08_User_Notifications/          User notification plans
├── 09_Service_Termination/         Termination & archive plans
├── 10_End_User_Agreement/          Subscriber agreements
├── 11_Revocation_Procedures/       24×7 revocation SOPs
├── 12_Recordkeeping/               7-year retention policies
├── 13_Communication_Templates/     EETT correspondence
├── 14_NTL_Publication/             National Trust List datasheet
├── 15_Compliance_Master/           Master compliance register
├── 16_Submission_Packaging/        ASiC-E packaging guide
├── 17_Executive_Brief/             Stakeholder summaries
├── 18_Project_Timeline/            Gantt charts & milestones
├── 19_Compliance_Register/         Regulatory controls matrix
├── 20_README_and_Placeholders/     Template documentation
├── _PMO/                           Project management tracking
├── _Shared/                        Contact lists & shared resources
├── scripts/                        Automation tools
└── Supporting_Docs/                Reference materials
```

### Document Lifecycle Pattern

Most folders follow a **5-stage workflow**:

```
Drafts/          → Working templates with [PLACEHOLDERS]
Compliance/      → Audit logs, readiness trackers
Evidence/        → Supporting proof, test reports, hashes
Final/           → Signed PDFs ready for submission
Archive/         → Historical versions (read-only)
```

**Key Concept:** Documents flow through stages as they mature. You'll work primarily in `Drafts/`, then move finalized content to `Final/`.

---

## 🚀 STEP-BY-STEP IMPLEMENTATION GUIDE

### PHASE 1: PREPARATION & SETUP (Week 1)

#### Step 1.1: Assess Your Readiness

**Before starting, confirm you have:**

☐ **Legal Entity:** Greek company registered in ΓΕΜΗ (General Commercial Registry)  
☐ **Financial Resources:**
  - Minimum €25,000 capital (for basic services)
  - €1M+ professional liability insurance
  - Budget for infrastructure & audits (€500K+ Year 1)  
☐ **Technical Infrastructure (planned or existing):**
  - FIPS 140-2 Level 2+ HSMs
  - Tier III data center(s)
  - 24×7 NOC capability  
☐ **Key Personnel (appointed or to be hired):**
  - TSP/QTS Manager
  - CISO (Chief Information Security Officer)
  - Crypto Officer
  - Data Protection Officer (DPO)
  - RA Operators  
☐ **Timeline Commitment:** 6 months from start to service launch

**If any critical items are missing, address them BEFORE proceeding.**

---

#### Step 1.2: Assemble Your Project Team

Create a cross-functional team with clear ownership:

| Role | Responsibilities | Time Commitment |
|------|------------------|-----------------|
| **Project Manager** | Timeline, coordination, EETT liaison | 100% (dedicated) |
| **Compliance Officer** | Document review, regulatory mapping, CAB coordination | 75% |
| **Technical Lead** | Infrastructure, test certificates, security architecture | 75% |
| **Legal Counsel** | Contract review, liability, GDPR | 25% (advisory) |
| **Finance Lead** | Budgets, insurance, fee payments | 15% (support) |
| **HR Lead** | Personnel recruitment, background checks, training | 20% (support) |

**Action:** Schedule a kickoff meeting with all stakeholders. Share this document in advance.

---

#### Step 1.3: Gather Company Information

You'll need ~150 data points to replace placeholders. Start collecting:

**Corporate Information:**
- Legal name (Greek & English)
- ΓΕΜΗ registration number
- Tax ID (ΑΦΜ)
- VAT number
- Business address (headquarters)
- Website URL
- Contact phone/email
- Board of Directors (names, titles, IDs)

**Technical Information:**
- HSM vendor & model numbers
- Data center locations & providers
- Public service URLs (OCSP, CRL, TSA, website)
- Network architecture diagrams
- Certificate OIDs (if already assigned)

**Personnel Information:**
- QTS Manager CV & certifications
- CISO CV & certifications
- Crypto Officer qualifications
- DPO contact details
- RA Operator training records

**Financial Information:**
- Latest audited balance sheet
- Professional liability insurance policy
- Insurance coverage amounts & policy numbers
- Budget allocation for TSP operations

**Use the template:** `20_README_and_Placeholders/PLACEHOLDER_REPLACEMENT_GUIDE.md` for the complete checklist.

---

### PHASE 2: TEMPLATE CUSTOMIZATION (Weeks 1-2)

#### Step 2.1: Understand the Placeholder System

The template uses **~150 unique placeholders** in this format: `[PLACEHOLDER_NAME]`

**Common placeholders:**
- `[LEGAL_NAME_GR]` – Company name in Greek
- `[LEGAL_NAME_EN]` – Company name in English
- `[AFM]` – Tax ID
- `[GEMI]` – ΓΕΜΗ registration number
- `[SUBMISSION_DATE]` – Target submission date
- `[OCSP_URL]` – OCSP responder URL
- `[CRL_URL]` – CRL distribution point URL
- `[REVOCATION_HOTLINE]` – 24×7 phone number

**Where to find them:** Every document with placeholders lists them in the header or a dedicated section.

---

#### Step 2.2: Choose Your Customization Method

**Option A: Automated (Recommended)**

Use the Python rendering script:

```bash
cd scripts/

# 1. Copy and edit the provider metadata file
cp templates/provider.yml.template provider.yml
nano provider.yml  # Fill in all company data

# 2. Run the rendering engine
python render.py

# 3. Check the output
ls -la ../rendered/
```

**Advantages:**
- ✓ Batch replaces all 150+ placeholders instantly
- ✓ Validates required fields
- ✓ Generates clean output in `/rendered` directory
- ✓ Reduces human error

**Disadvantages:**
- Requires Python 3.8+ and dependencies (`pip install -r requirements.txt`)
- Initial `provider.yml` setup takes 1-2 hours

---

**Option B: Manual (For small edits)**

Use find-replace in your text editor or Word:

```bash
# Example using sed (macOS/Linux)
cd EETT_eIDAS_Dossier/

find . -name "*.md" -exec sed -i '' \
  's/\[LEGAL_NAME_GR\]/Ελληνικές Υπηρεσίες Εμπιστοσύνης Α.Ε./g' {} \;
```

**Advantages:**
- ✓ No scripting knowledge required
- ✓ Fine-grained control

**Disadvantages:**
- Time-consuming for 150+ placeholders
- High risk of missing placeholders or typos
- No validation

---

#### Step 2.3: Validate Placeholder Completion

After customization, verify no placeholders remain:

```bash
cd scripts/
bash validate_submission.sh
```

**This script checks:**
- ☐ All `[PLACEHOLDER]` tags replaced
- ☐ No "TBD" or "TODO" markers in final documents
- ☐ Required files exist in all folders
- ☐ File sizes are reasonable (not 0 bytes)
- ☐ PDF metadata is populated (for Final/ PDFs)

**Expected output:**
```
✓ Placeholder check: PASS (0 unresolved placeholders)
✓ File completeness: PASS (20/20 folders validated)
⚠ WARNING: 5 PDFs in Final/ folders are 0 bytes (awaiting conversion)
```

**Action:** Resolve all errors before proceeding. Warnings are acceptable at this stage.

---

### PHASE 3: FOLDER-BY-FOLDER REVIEW (Weeks 2-3)

#### Step 3.1: Work Through Each Folder Systematically

**For each numbered folder (01-20):**

1. **Read the folder README:**  
   `XX_Folder_Name/README.md` explains the folder's purpose, required deliverables, and outstanding actions.

2. **Review Draft documents:**  
   Open files in `Drafts/` folder. Ensure:
   - Placeholders are replaced
   - Technical details match your infrastructure
   - Policies align with your organization's practices

3. **Check Compliance status:**  
   Open `Compliance/XX_Submission_Readiness.md` to see:
   - Which EETT/eIDAS articles are covered
   - Outstanding evidence or actions
   - Readiness status (Green/Yellow/Red)

4. **Collect Evidence:**  
   Gather supporting documentation listed in `Evidence/` folder requirements:
   - Test reports
   - Certificates
   - Audit logs
   - External attestations

5. **Update tracking:**  
   Mark completed items in `_PMO/SUBMISSION_ALIGNMENT_SUMMARY.md`

---

#### Step 3.2: Priority Folders (Critical Path)

**Focus on these folders first (they have external dependencies):**

**01_Registry** – Pay €300 fee ASAP (requires bank receipt)  
**02_Service_Start** – Longest document, requires signatures  
**03_Conformity_Assessment** – CAB engagement must start early (4-6 week lead time)  
**06_RA_Operations** – Generate test certificates (requires functioning CA infrastructure)  
**10_End_User_Agreement** – Legal review takes 2+ weeks

---

#### Step 3.3: Folder-Specific Guidance

**01_Registry (EETT Articles 3.2-3.7)**

**What it does:** Registers your company as a Trust Service Provider (non-qualified initially).

**Key files:**
- `Registry_Application.md` – Company details, contact info
- `01a_Fee_Proof.pdf` – Bank receipt for €300 payment
- `01b_Change_Notice_Template.md` – Template for future changes (7-day deadline)

**Actions:**
1. Fill company details in Registry Application
2. Pay €300 to EETT account (details in document)
3. Attach bank receipt
4. Review annual €100 fee requirement (set calendar reminder)

**Common mistakes:**
- ✗ Inconsistent company name across documents
- ✗ Using P.O. Box instead of physical address
- ✗ Missing authorized signatory details

---

**02_Service_Start (Article 6, Annex 4)**

**What it does:** Formal application to start qualified services.

**Key file:** `02_Service_Start_Application.md`

**Structure:**
- Part A: Provider identification (ΓΕΜΗ, ΑΦΜ, directors)
- Part B: Services applied for (QES, QSeal, QTS, QWAC, etc.)
- Part C: Financial resources (capital, insurance, budget)
- Part D: Infrastructure (HSMs, data centers, network)
- Part E: Personnel (QTS Manager, CISO, Crypto Officer, DPO)
- Part F: Policies (references to Docs 04-12)

**Actions:**
1. Select which services to apply for (checkbox in Part B)
2. Obtain and attach insurance policy documents
3. Prepare board resolution approving application
4. Collect CVs for all key personnel
5. Get signatures from legal representatives

**Dependencies:**
- Finance: Insurance policies must be active
- HR: Personnel must be appointed before application
- Engineering: Infrastructure must be planned/deployed

---

**03_Conformity_Assessment (Article 10)**

**What it does:** Contains templates for CAB (Conformity Assessment Body) audit.

**Key files:**
- `CAR_Template.md` – 19-item checklist per EETT Article 10
- `SUBMISSION_READINESS_CHECKLIST.md` – Self-assessment
- `03_Traceability_Matrix_STRUCTURE.md` – Regulatory mapping

**Actions:**
1. **Select CAB:** Must be accredited by ESYD (Hellenic Accreditation System) or EA (European co-operation for Accreditation)
   - Recommended: TÜV HELLAS, Eurocert, LRQA, Bureau Veritas, BSI Group
2. **Engage CAB:** Request quote, schedule audit (allow 4-6 weeks lead time)
3. **Prepare document package:**
   - All policies (Folders 04-05)
   - Infrastructure documentation (Folder 06)
   - Risk assessments (Folder 07)
   - Test certificates (Folder 06)
4. **Conduct audit:**
   - Pre-audit: Document review (remote, 1-2 weeks)
   - On-site audit: Infrastructure inspection, interviews (3-5 days)
   - Post-audit: Non-conformity resolution (1-2 weeks)
5. **Receive CAR:** Signed Conformity Assessment Report with CAB accreditation number

**Timeline:** 4-6 weeks total  
**Cost:** €15,000-€30,000 (initial audit)

**Critical:** You CANNOT submit to EETT without a valid CAR.

---

**04_Policies & 05_Key_Management (Articles 6.3.2-6.3.3)**

**What they do:** Define governance, security, and operational procedures.

**Key files:**
- `04_TSP_Policy_GR.docx` / `04_TSP_Policy_EN.docx` – Overarching governance
- `05_TSPS_GR.docx` / `05_TSPS_EN.docx` – Service-specific procedures

**Actions:**
1. Tailor templates to your organization's:
   - Security controls (physical, logical, personnel)
   - Key ceremony procedures
   - Organizational structure
2. Review for ETSI EN 319 401/411 compliance
3. Legal review for liability and warranty sections
4. Publish on your website (EETT requires public access)

**Dependencies:**
- Engineering: Infrastructure details (HSM models, DC locations)
- Legal: Liability limits, indemnification clauses
- HR: Personnel roles & training requirements

---

**06_RA_Operations (Article 6.3.4, 10.6)**

**What it does:** Provides test certificates and RA procedures.

**Key files:**
- `Test_Certificates.md` – Documentation for sample certificates
- `06_Test_Certificates_Content.md` – Detailed certificate profiles
- Sample certificates (PEM/DER format)

**Actions:**
1. Set up pre-production CA environment
2. Generate test certificates for:
   - QES (natural person)
   - QES (legal person / legal representative)
   - QSeal
   - QWAC (website authentication)
   - TSA (if offering time-stamping)
3. Generate corresponding OCSP responses and CRLs
4. Validate against ETSI standards (EN 319 412 series)
5. Package into ZIP archive

**Critical fields in certificates:**
- QCStatements (eIDAS compliance indicators)
- Service type OIDs (per Decision EU 2015/1505)
- CRL/OCSP distribution points (must be real URLs)
- Key usage & extended key usage

**Dependencies:**
- Engineering: Functioning CA infrastructure
- Operations: OCSP/CRL services operational

---

**07_Incident_and_BCP (Annex 3, Articles 4-5)**

**What it does:** Risk assessment and incident response procedures.

**Key files:**
- `07_Risk_Assessment_Report_GR.docx` – ISO 27005-aligned risk analysis
- `07a_Incident_Response_Plan_GR.docx` – 24-hour EETT reporting procedure
- `07b_Incident_Forms_GR.xlsx` – Initial & Final report templates

**Actions:**
1. Complete risk assessment:
   - Asset inventory (HSMs, CAs, personnel, facilities)
   - Threat modeling (insider threats, cyberattacks, natural disasters)
   - Control effectiveness evaluation
2. Define incident severity levels (1-5 per Annex 3)
3. Document 24-hour reporting workflow for Level ≥3 incidents
4. Test incident response with tabletop exercise

**EETT requirement:** Level 3+ incidents must be reported within 24 hours (initial notification) + final report with all Annex 3 fields.

---

**08_User_Notifications (eIDAS 19(2), Article 6.3.7)**

**What it does:** How you'll notify users of incidents, breaches, or service changes.

**Key file:** `08_User_Notification_Plan_GR_EN.docx`

**Actions:**
1. Define notification triggers:
   - Security breaches affecting certificate integrity
   - Service termination
   - Policy changes
   - Compromised private keys
2. Define notification methods:
   - Email (primary)
   - SMS (critical alerts)
   - Website banner
   - Press release (major incidents)
3. Prepare templates for each scenario
4. Test notification workflows (integrate with Folder 07 incident plan)

---

**09_Service_Termination (Articles 7-8, Annex 5)**

**What it does:** Plans for service discontinuation scenarios.

**Key file:** `09_Service_Termination_Plan_GR_EN.docx`

**Actions:**
1. Define termination scenarios:
   - Planned (business decision, merger)
   - Unplanned (bankruptcy, license revocation)
   - Partial (end-of-life for specific certificate types)
2. Document notification timelines:
   - 3 months advance notice (planned)
   - Immediate (unplanned Level ≥4)
3. Arrange archive custodian (another qualified TSP or EETT)
4. Ensure 7-year accessibility of records post-termination
5. Conduct annual termination drill

**Critical:** EETT will NOT approve without credible termination/archive plan.

---

**10_End_User_Agreement (Article 6.3.9, eIDAS 13)**

**What it does:** Contract between your TSP and certificate subscribers.

**Key file:** `10_End_User_Agreement_GR_EN.docx`

**Actions:**
1. **Legal review (mandatory):**
   - Liability limits vs. insurance coverage
   - GDPR compliance (Articles 13-14 transparency)
   - Indemnification clauses
   - Warranty disclaimers
2. Ensure 24×7 revocation terms are clear
3. Publish bilingual version on website
4. Integrate into enrollment workflow (e.g., require acceptance before certificate issuance)

**Common legal issues:**
- Overly broad liability exclusions (may violate eIDAS Art. 13)
- Missing data subject rights (GDPR violation)
- Unclear revocation procedures

---

**11_Revocation_Procedures (Article 11)**

**What it does:** 24×7 revocation service documentation.

**Key files:**
- `11_Revocation_SOP_GR.docx` – Internal procedures
- `11a_Web_Disclosure_Text_GR.md` – Public-facing instructions

**Actions:**
1. Set up 24×7 revocation hotline (phone + web + email)
2. Document telephone acceptance procedures (Article 11.2 requirement)
3. Define revocation processing deadlines (immediate best practice)
4. Publish revocation procedures on website (Article 11.3)
5. Configure OCSP/CRL auto-update workflows

**EETT critical requirement:** 24×7 availability with telephone acceptance (not just web form).

---

**12_Recordkeeping (Article 12)**

**What it does:** 7-year data retention policies.

**Key file:** `12_Recordkeeping_Policy_GR.docx`

**Actions:**
1. Define records scope:
   - Certificate lifecycle events (issuance, renewal, revocation)
   - RA transactions
   - Validation logs
   - Audit trails
2. Implement integrity controls (digital signatures, write-once storage)
3. Document data subject access procedures (GDPR Art. 15, 7-day response)
4. Plan backup & disaster recovery for archives
5. Define disclosure rules (only to competent authorities)

---

**13_Communication_Templates (Articles 3.5, 5, 8)**

**What it does:** Pre-drafted letters to EETT.

**Key file:** `13_EETT_Communication_Templates_GR.docx`

**Includes templates for:**
- Change notifications (7-day deadline)
- Initial incident reports (24-hour deadline)
- Final incident reports (all Annex 3 fields)
- Termination notifications
- Service status updates

**Actions:**
1. Customize with your company letterhead
2. Assign EETT liaison officer
3. Configure automated alerts (e.g., trigger email to EETT when Level 3 incident detected)

---

**14_NTL_Publication (Article 3.3)**

**What it does:** Data for Greek National Trust List.

**Key file:** `14_NTL_Publication_Datasheet.xlsx`

**Actions:**
1. **WAIT until EETT approval** (do not complete prematurely)
2. After approval:
   - Populate service type OIDs (per ETSI TS 119 612)
   - Add service names (Greek & English)
   - Include public keys / X.509 certificates (PEM format)
   - List service URLs (OCSP, CRL, TSA)
3. Submit to EETT for NTL publication
4. Verify publication at EETT website and EU Trusted List Browser

**Critical:** Services CANNOT go live until listed in NTL with status "granted".

---

**15_Compliance_Master**

**What it does:** Master traceability matrix.

**Key file:** `Master_Compliance_Register.xlsx`

**Tabs:**
- Tab 1: eIDAS Articles → Evidence mapping
- Tab 2: EETT Articles → Evidence mapping
- Tab 3: ETSI Standards → Implementation evidence
- Tab 4: Document cross-references
- Tab 5: Red-team review checklist

**Actions:**
1. Use for final QA review
2. Provide to CAB auditor as navigation tool
3. Include in submission package as Annex

---

**16_Submission_Packaging (Decision EU 2015/1506)**

**What it does:** Instructions for final packaging.

**Key file:** `Submission_Packaging.md`

**Actions (Week 4, just before submission):**
1. Apply qualified e-signatures/seals to all documents:
   - Use external qualified TSP (you can't self-sign yet)
   - Apply PAdES (PDF with embedded signature)
   - Include qualified timestamp
2. Generate final PDFs from markdown/Word documents:
   ```bash
   cd scripts/
   bash generate_pdfs.sh
   ```
3. Create ASiC-E container (ZIP with manifest):
   ```bash
   bash create_package.sh
   ```
4. Validate package integrity:
   ```bash
   bash validate_submission.sh
   ```

---

**17-20 (Supporting Folders)**

- **17_Executive_Brief** – Stakeholder summaries (this document)
- **18_Project_Timeline** – Gantt charts, milestone tracking
- **19_Compliance_Register** – Duplicate of 15 (legacy structure)
- **20_README_and_Placeholders** – Template documentation

**Actions:** Review for completeness; update timelines and status trackers.

---

### PHASE 4: EXTERNAL DEPENDENCIES (Weeks 2-4)

#### Step 4.1: CAB Audit Coordination

**Timeline:** Start by Week 2, complete by Week 4

1. **Select CAB** (Week 2):
   - Request quotes from 2-3 accredited CABs
   - Verify ESYD/EA accreditation
   - Check experience with eIDAS (ask for references)

2. **Kick off audit** (Week 2):
   - Share document package (Folders 04-12)
   - Provide infrastructure details
   - Schedule on-site visit

3. **Pre-audit preparation** (Week 3):
   - CAB reviews documents remotely
   - You respond to preliminary questions
   - Fix any obvious gaps

4. **On-site audit** (Week 3-4):
   - CAB inspects data centers, HSMs
   - Interviews with QTS Manager, CISO, Crypto Officer
   - Walkthrough of procedures (key ceremony, incident response, revocation)

5. **Receive CAR** (Week 4):
   - CAB issues signed Conformity Assessment Report
   - Resolve any non-conformities
   - Obtain CAB accreditation number

**Deliverable:** Signed CAR (Doc 03) with CAB seal/signature

---

#### Step 4.2: Financial Actions

**Week 1:**
☐ Pay €300 EETT registration fee → Attach receipt to Doc 01a

**Week 2:**
☐ Obtain professional liability insurance (€1M+ coverage)  
☐ Attach policy to Doc 02 Part C

**Ongoing:**
☐ Budget approval for infrastructure (€500K+ Year 1)

---

#### Step 4.3: Legal Review

**Week 2-3:**
☐ Legal counsel reviews Doc 10 (End-User Agreement):
  - Liability limits
  - GDPR compliance
  - Indemnification clauses  
☐ Legal approves termination plan (Doc 09)  
☐ DPO reviews recordkeeping policy (Doc 12)

**Deliverable:** Legal sign-off memo attached to `_PMO/Legal_Approval.pdf`

---

#### Step 4.4: Infrastructure Deployment

**Week 2-4 (if not already complete):**
☐ Procure/configure HSMs (FIPS 140-2 Level 2+)  
☐ Set up CA hierarchy (Root offline, Issuing online)  
☐ Deploy OCSP/CRL infrastructure  
☐ Configure 24×7 NOC/SOC  
☐ Set up revocation hotline  
☐ Generate test certificates (Doc 06)

**Deliverable:** Pre-production environment operational

---

### PHASE 5: QUALITY ASSURANCE (Week 4)

#### Step 5.1: Run Pre-Submission Validation

```bash
cd scripts/
bash validate_submission.sh > validation_report.txt
```

**This checks:**
☐ No unresolved placeholders  
☐ All required files present  
☐ File sizes reasonable (not 0 bytes)  
☐ PDF metadata populated  
☐ Cross-references valid  
☐ Dates consistent  
☐ Signatures present

**Fix all errors before proceeding.**

---

#### Step 5.2: Executive Red-Team Review

Assemble a review panel (Legal, Technical, Compliance) to check:

**Document Quality:**
☐ Placeholders replaced  
☐ Technical details accurate  
☐ Contact information current  
☐ Financial figures audited  
☐ Cross-references valid  
☐ Bilingual content aligned

**Regulatory Compliance:**
☐ eIDAS Article 24 fully covered  
☐ EETT Articles 3-12 fully covered  
☐ CAR has all 19 items (Article 10)  
☐ Incident levels match Annex 3  
☐ Termination plan matches Annex 5

**Technical Security:**
☐ HSM certifications valid  
☐ Root CA offline & protected  
☐ OCSP/CRL highly available  
☐ Crypto algorithms approved (ETSI TS 119 312)  
☐ Penetration testing scheduled  
☐ DR plan tested

**Operational Readiness:**
☐ 24×7 NOC operational  
☐ Revocation hotline tested  
☐ Personnel trained  
☐ Insurance active

**Legal:**
☐ End-user agreement reviewed  
☐ Liability limits vs. insurance aligned  
☐ GDPR compliance verified

---

#### Step 5.3: Apply Qualified Signatures

**Week 4, final step before submission:**

1. **Export all documents to PDF:**
   ```bash
   cd scripts/
   bash generate_pdfs.sh
   ```

2. **Apply qualified e-signature or e-seal:**
   - Use external qualified TSP (e.g., existing Greek QTS provider)
   - Sign with PAdES format (PDF Advanced Electronic Signature)
   - Include qualified timestamp
   - Sign each document individually OR sign the entire package

3. **Verify signatures:**
   - Validate against EU Trusted List
   - Confirm qualified status (not advanced or simple)

**Critical:** EETT requires qualified signatures on submission package.

---

### PHASE 6: SUBMISSION (Week 4-5)

#### Step 6.1: Package the Dossier

```bash
cd scripts/
bash create_package.sh
```

**This creates:**
- `EETT_Submission_Package_[DATE].zip` containing:
  - All signed PDFs (Docs 01-15)
  - Manifest.xml (file inventory)
  - Checksums (SHA-256 hashes)
  - Digital signature over entire package

**Format:** ASiC-E (Associated Signature Container Extended) per Decision EU 2015/1506

---

#### Step 6.2: Submit to EETT

**Method:** EETT Electronic Submission System (details in Doc 02)

**Steps:**
1. Log in to EETT portal (credentials obtained after registry application, Doc 01)
2. Navigate to "Qualified Service Application"
3. Upload `EETT_Submission_Package.zip`
4. Complete online form (cross-check with Doc 02)
5. Confirm submission

**Receive:**
- Submission protocol number (e.g., ΑΠ/2025/5000)
- Automated acknowledgment email

**Timeline:**
- EETT completeness check: ≤5 working days
- EETT substantive review: Target 3 months (extendable with justification)

---

#### Step 6.3: Update Tracking

1. Record protocol number in:
   - `_PMO/SUBMISSION_ALIGNMENT_SUMMARY.md`
   - Doc 13 (EETT Communication Templates)
   - Doc 17 (Executive Brief)

2. Update timeline:
   - Milestone "EETT Submission" → ✓ Complete
   - Milestone "EETT Completeness Check" → In Progress

3. Notify stakeholders:
   - Board of Directors
   - CAB auditor
   - Insurance provider

---

### PHASE 7: POST-SUBMISSION (Weeks 5-24+)

#### Step 7.1: EETT Completeness Check (Week 5)

**Timeline:** ≤5 working days from submission

**Possible outcomes:**

**✓ Complete:**
- EETT confirms all required documents present
- Review proceeds to substantive phase
- **Action:** Monitor for information requests

**✗ Incomplete:**
- EETT requests missing documents/information
- You have 5-25 working days to respond (EETT specifies deadline)
- **Action:** Respond promptly with Doc 13 templates

---

#### Step 7.2: EETT Substantive Review (Weeks 6-24)

**Timeline:** Target 3 months; may extend with justification

**What EETT reviews:**
- CAR validity & CAB accreditation
- Technical compliance (infrastructure, crypto)
- Organizational compliance (policies, personnel)
- Financial stability
- Legal agreements

**Possible EETT actions:**
- Information requests (respond using Doc 13 templates)
- Site inspection (prepare NOC/DC access)
- Technical demonstrations (test revocation, OCSP, CRL)
- Clarifications on policies

**Your responsibilities:**
- Assign EETT liaison officer (check _Shared/MASTER_CONTACT_LIST.md)
- Respond within EETT deadlines (typically 5-25 working days)
- Maintain infrastructure (EETT may test live)
- Keep CAB informed (may need supplementary audit)

---

#### Step 7.3: EETT Decision (Week 24 target)

**Possible outcomes:**

**✓ Approval:**
- EETT grants authorization for applied services
- You receive formal decision letter
- **Action:** Proceed to Step 7.4 (NTL Publication)

**⚠ Conditional Approval:**
- Approval with corrective actions (minor non-conformities)
- You must resolve within specified timeline
- **Action:** Implement corrections, submit evidence

**✗ Rejection:**
- EETT denies application (rare if CAR is valid)
- Reasons provided (e.g., insufficient financial resources, infrastructure gaps)
- **Action:** Address deficiencies, reapply (consult CAB)

---

#### Step 7.4: NTL Publication (Week 25-26)

**After EETT approval:**

1. **Complete Doc 14 (NTL Datasheet):**
   - Service type OIDs
   - Service names (Greek/English)
   - Public keys/certificates (PEM)
   - Service URLs (OCSP, CRL, TSA)

2. **Submit to EETT for NTL listing:**
   - EETT publishes to Greek National Trust List
   - EETT notifies EU Commission
   - EU adds to Trusted List Browser (https://eidas.ec.europa.eu/efda/tl-browser/)

3. **Verify publication:**
   - Check EETT website
   - Check EU Trusted List Browser
   - Confirm status: "granted" (not "withdrawn" or "suspended")

**Timeline:** 2-3 weeks from EETT approval

**Critical:** DO NOT start services before NTL publication. Certificates issued before listing are NOT qualified.

---

#### Step 7.5: Service Go-Live (Week 27-28)

**Pre-production checklist:**
☐ Production CA environment deployed  
☐ HSMs operational (primary + backup)  
☐ OCSP/CRL services HA-tested (99.9% SLA)  
☐ 24×7 NOC/hotline staffed  
☐ RA operators trained & certified  
☐ Website updated (CP/CPS published, revocation procedures)  
☐ End-user agreement active  
☐ Enrollment workflows tested  
☐ First pilot users enrolled

**Go-Live:**
1. Issue first production certificates
2. Monitor OCSP/CRL performance
3. Test revocation workflow with pilot user
4. Activate user notification systems
5. Begin marketing/sales outreach

**Post-Go-Live:**
- Weekly compliance monitoring (first month)
- Monthly CAB surveillance audit prep
- Quarterly EETT status reports (if required)
- Annual recertification audit

---

## 🛠️ TOOLS & AUTOMATION

### Available Scripts

Located in `scripts/` directory:

| Script | Purpose | When to Use |
|--------|---------|-------------|
| **render.py** | Populate placeholders from `provider.yml` | Week 1 (template customization) |
| **validate_submission.sh** | Pre-submission QA checks | Week 4 (before submission) |
| **generate_pdfs.sh** | Convert markdown/Word to PDF | Week 4 (final packaging) |
| **create_package.sh** | Build ASiC-E submission container | Week 4 (final packaging) |
| **replace_placeholders.sh** | Batch find/replace (manual mode) | Week 1 (if not using render.py) |

### Script Dependencies

**Python scripts:**
```bash
pip install -r scripts/requirements.txt
```

**Bash scripts (require):**
- Pandoc (for PDF generation)
- XeLaTeX (for Greek language support in PDFs)
- zip/unzip (for ASiC-E packaging)
- sha256sum (for checksums)

**Install on macOS:**
```bash
brew install pandoc mactex zip
```

**Install on Linux (Debian/Ubuntu):**
```bash
sudo apt-get install pandoc texlive-xetex zip
```

---

## 📊 PROJECT MANAGEMENT

### Timeline Summary

| Phase | Duration | Key Milestones |
|-------|----------|----------------|
| **1. Preparation** | Week 1 | Team assembled, data gathered |
| **2. Customization** | Weeks 1-2 | Placeholders replaced, validation passed |
| **3. Folder Review** | Weeks 2-3 | All 20 folders reviewed, evidence collected |
| **4. External Dependencies** | Weeks 2-4 | CAB audit complete, insurance obtained, legal review done |
| **5. QA** | Week 4 | Validation passed, red-team review complete |
| **6. Submission** | Week 4-5 | Package submitted to EETT |
| **7. EETT Review** | Weeks 5-24 | Completeness check (5 days), substantive review (3 months) |
| **8. NTL & Go-Live** | Weeks 25-28 | NTL published, service launched |

**Total:** ~6 months from start to service launch

---

### Tracking Progress

**Use these files:**

1. **`_PMO/SUBMISSION_ALIGNMENT_SUMMARY.md`**  
   Master status tracker with:
   - Folder-by-folder readiness (Green/Yellow/Red)
   - External dependencies
   - Blocking issues

2. **`18_Project_Timeline/` (Gantt charts)**  
   Visual timeline with:
   - Phase durations
   - Critical path
   - Dependencies

3. **Each folder's `Compliance/XX_Submission_Readiness.md`**  
   Detailed status for that folder's deliverables

**Update frequency:**
- Daily during Weeks 1-4 (active work)
- Weekly during Weeks 5-24 (EETT review)

---

### Risk Management

**Top 10 Risks** (from full template):

1. CAB audit delays
2. Major non-conformity in CAB audit
3. EETT requests extensive additional information
4. HSM procurement delays
5. Insurance coverage insufficient
6. Key personnel unavailable
7. Placeholder data incomplete
8. Legal review delays
9. EETT extends review beyond 3 months
10. NTL publication technical issues

**Mitigation strategies documented in:**  
`18_Project_Timeline/Risk_Register.xlsx`

---

## 💰 BUDGET GUIDANCE

### Expected Costs (Year 1)

| Category | Range (€) |
|----------|-----------|
| CAB Audit (Initial) | 15,000 - 30,000 |
| HSMs (2 units, HA) | 40,000 - 80,000 |
| Data Center | 24,000/year |
| Insurance | 10,000 - 25,000/year |
| EETT Fees | 400 |
| Legal & Consulting | 20,000 - 50,000 |
| Personnel (6 FTEs) | 300,000 |
| Software Licenses | 30,000 - 60,000 |
| Security (Pentest, etc.) | 15,000 |
| Training | 5,000 |
| Contingency (15%) | 66,000 - 104,000 |
| **TOTAL** | **€533K - €818K** |

**Ongoing (Year 2+):** €350K - €500K/year

---

## ✅ SUCCESS CRITERIA

**You'll know you're successful when:**

**Week 4 (Submission):**
☐ EETT confirms completeness within 5 working days  
☐ No major information requests

**Week 24 (Approval):**
☐ EETT grants authorization  
☐ All requested services approved  
☐ CAR accepted without objections

**Week 26 (NTL):**
☐ Services listed in Greek NTL with status "granted"  
☐ EU Trusted List Browser shows your services

**Week 28 (Go-Live):**
☐ First certificates issued  
☐ OCSP/CRL >99% availability  
☐ Zero critical incidents in first 90 days  
☐ 24×7 revocation hotline operational

**Year 1 (Business):**
☐ CAB surveillance audit passes  
☐ Customer contracts signed  
☐ Revenue targets met

---

## 📚 ADDITIONAL RESOURCES

### Official References

**EETT:**
- Website: www.eett.gr
- Address: Λεωφ. Κηφισίας 60, 151 25 Μαρούσι, Αθήνα
- Phone: +30 210 614 5000
- Email: info@eett.gr

**EU eIDAS:**
- Regulation text: EUR-Lex (search "Regulation 910/2014")
- Trusted List Browser: https://eidas.ec.europa.eu/efda/tl-browser/
- Implementing decisions: Decision EU 2015/1505, 2015/1506

**ETSI Standards:**
- Portal: www.etsi.org
- Key standards: EN 319 401, 411-1, 411-2, 421, 422 (search "EN 319" + number)

**Hellenic Accreditation (ESYD):**
- Website: www.esyd.gr
- Use to verify CAB accreditation

---

### Recommended CABs (Greece)

- TÜV HELLAS (www.tuv-nord.com/gr)
- Eurocert (www.eurocert.gr)
- LRQA Greece (www.lrqa.com)
- Bureau Veritas Hellas (www.bureauveritas.gr)
- BSI Group (www.bsigroup.com)

**Verify:** Check ESYD website for current EA accreditation status.

---

### HSM Vendors

- Utimaco (www.utimaco.com) – CryptoServer series
- Thales (www.thalesgroup.com) – Luna HSM
- Entrust (www.entrust.com) – nShield
- AWS CloudHSM (aws.amazon.com/cloudhsm) – Cloud option

**Requirement:** FIPS 140-2 Level 2+ or Common Criteria EAL 4+

---

### Insurance Providers

- Marsh Greece (www.marsh.com)
- Howden (www.howdengroup.com)
- Allianz (www.allianz.gr)
- AIG (www.aig.com)

**Coverage needed:** Professional liability (E&O), €1M+ for QES/QSeal

---

## 🆘 TROUBLESHOOTING

### Common Issues

**"I can't find a specific placeholder definition"**
→ Check `20_README_and_Placeholders/PLACEHOLDER_REPLACEMENT_GUIDE.md`  
→ Search globally: `grep -r "\[PLACEHOLDER_NAME\]" .`

**"Validation script fails with placeholder errors"**
→ Run: `grep -r "\[.*\]" . | grep -v ".git" | grep -v "Archive"`  
→ Manually find/replace remaining placeholders

**"CAB says my policies don't match ETSI standards"**
→ Review ETSI EN 319 401 (General Policy Requirements)  
→ Use CAB's gap analysis to revise Docs 04-05  
→ Request CAB to provide compliant template sections

**"EETT requests information I don't have"**
→ Use Doc 13 templates to respond  
→ Request deadline extension if needed (EETT may grant)  
→ Consult CAB or legal counsel for technical/legal questions

**"Test certificates fail validation"**
→ Verify against ETSI EN 319 412 series  
→ Use online validators (e.g., ETSI Signature Validation Tool)  
→ Check QCStatements format (critical for eIDAS compliance)

**"My HSM isn't FIPS 140-2 certified"**
→ This is a blocking issue – EETT requires certified HSMs  
→ Options: Purchase compliant HSM, or use cloud HSM (AWS CloudHSM, Azure Dedicated HSM)

---

## 📞 GETTING HELP

### Internal Support

1. **Check folder README:**  
   Each folder has specific guidance in `XX_Folder_Name/README.md`

2. **Review compliance status:**  
   `Compliance/XX_Submission_Readiness.md` lists outstanding actions

3. **Consult PMO tracker:**  
   `_PMO/SUBMISSION_ALIGNMENT_SUMMARY.md` shows dependencies & blockers

### External Support

1. **EETT Queries:**  
   Email: info@eett.gr  
   Phone: +30 210 614 5000  
   (For clarifications on regulation requirements)

2. **CAB Consultation:**  
   Your engaged CAB can answer technical/policy questions  
   (Usually included in audit fee)

3. **Legal Counsel:**  
   For contract, liability, GDPR issues  
   (Budget: €20K-€50K for full review)

4. **Technical Consultants:**  
   For HSM, PKI, infrastructure setup  
   (Vendors often provide integration support)

---

## 📋 QUICK REFERENCE CHECKLIST

**Before You Start:**
☐ Greek company registered (ΓΕΜΗ)  
☐ Budget approved (€500K+ Year 1)  
☐ Project team assigned  
☐ Timeline commitment (6 months)

**Week 1:**
☐ Gather company data (150+ fields)  
☐ Pay €300 EETT fee  
☐ Customize placeholders (render.py OR manual)  
☐ Validate completion (validate_submission.sh)

**Week 2:**
☐ Engage CAB (request quotes, schedule audit)  
☐ Review all 20 folders  
☐ Obtain insurance policies  
☐ Start legal review (Doc 10)

**Week 3:**
☐ CAB pre-audit (document review)  
☐ Collect evidence for all folders  
☐ Deploy/validate infrastructure  
☐ Generate test certificates (Doc 06)

**Week 4:**
☐ CAB on-site audit  
☐ Red-team QA review  
☐ Apply qualified signatures  
☐ Package dossier (create_package.sh)  
☐ Submit to EETT

**Week 5:**
☐ EETT completeness check (≤5 days)  
☐ Respond to any EETT requests

**Weeks 6-24:**
☐ EETT substantive review  
☐ Maintain infrastructure  
☐ Respond to EETT information requests

**Week 25-26:**
☐ Complete NTL datasheet (Doc 14)  
☐ EETT publishes to NTL  
☐ Verify EU Trusted List publication

**Week 27-28:**
☐ Final pre-production testing  
☐ Service go-live  
☐ Issue first certificates

---

## 🎓 APPENDIX: REGULATORY QUICK REFERENCE

### EETT Regulation Articles (Summary)

| Article | Requirement | Your Action |
|---------|-------------|-------------|
| **3.2-3.7** | Registry application | Complete Doc 01, pay €300 |
| **4** | Security measures | Document in Docs 04, 07 |
| **5** | Incident reporting | Doc 07a (24-hour deadline for Level ≥3) |
| **6** | Qualified service application | Complete Doc 02 |
| **7-8** | Termination | Doc 09 (Annex 5 structure) |
| **10** | CAR requirements | Doc 03 (19-item checklist) |
| **11** | Revocation (24×7) | Doc 11 (telephone acceptance) |
| **12** | Recordkeeping (7 years) | Doc 12 |

### eIDAS Regulation Articles (Summary)

| Article | Requirement | Your Action |
|---------|-------------|-------------|
| **13** | TSP transparency & liability | Docs 01, 02, 10 |
| **19(2)** | User notification | Doc 08 |
| **20** | Application procedure | Doc 02 |
| **24** | TSP requirements (financial, personnel, security, etc.) | Docs 02-12 (all) |
| **28** | QC for e-signatures | CAR (Doc 03), test certs (Doc 06) |
| **38** | QC for e-seals | CAR (Doc 03), test certs (Doc 06) |
| **42** | Qualified time-stamps | CAR (Doc 03), TSA tokens (Doc 06) |

### ETSI Standards (Summary)

| Standard | Topic | Your Action |
|----------|-------|-------------|
| **EN 319 401** | General policy requirements | Doc 04 (TSP Policy) |
| **EN 319 411-1** | Policy for QCs issuing certs to public | Doc 05 (TSPS) |
| **EN 319 411-2** | Policy for QCs issuing certs to legal persons | Doc 05 (TSPS) |
| **EN 319 421** | Policy for TSAs | Doc 05 (if offering QTS) |
| **EN 319 412-x** | Certificate profiles | Doc 06 (test certificates) |

---

## 📄 DOCUMENT CONTROL

| Field | Value |
|-------|-------|
| **File** | 00_EXECUTIVE_BRIEF.md |
| **Version** | 2.0 (Step-by-Step Guide) |
| **Date** | 2025-01-16 |
| **Author** | EETT/eIDAS Template Project Team |
| **Previous Version** | 1.0 (Executive Summary) |
| **Change Summary** | Complete redesign as step-by-step usage guide per user request |
| **Review Status** | Draft for User Approval |
| **Classification** | Internal Use – Template Documentation |

---

## 🎯 FINAL WORDS

**You now have everything you need to:**
1. Understand the template structure
2. Customize it for your organization
3. Navigate external dependencies (CAB, insurance, legal)
4. Submit to EETT with confidence
5. Achieve Qualified Trust Service Provider status

**Remember:**
- **Start early** (CAB audits have 4-6 week lead times)
- **Validate often** (run scripts after every major change)
- **Document everything** (EETT expects thorough evidence)
- **Communicate proactively** (with CAB, EETT, stakeholders)

**This is a marathon, not a sprint.** Budget 6 months from start to service launch. With careful planning and this template, you'll navigate the EETT/eIDAS accreditation process successfully.

---

**Questions?**  
Review folder-specific README files, consult `_PMO/SUBMISSION_ALIGNMENT_SUMMARY.md`, or contact EETT directly.

**Good luck with your accreditation journey! 🚀**

---

**END OF EXECUTIVE BRIEF**  
*Next steps: Proceed to Phase 1, Step 1.1 (Readiness Assessment)*
