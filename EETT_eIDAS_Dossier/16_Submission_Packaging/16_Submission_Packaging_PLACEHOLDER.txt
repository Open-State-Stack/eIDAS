ASiC-E PACKAGING & QUALIFIED SIGNATURE WORKFLOW GUIDE
eIDAS/EETT_eIDAS_Dossier/16_Submission_Packaging
Version: 1.0
Owner: Compliance/Regulatory Affairs
Classification: Internal for Submission Preparation

1) Scope and normative references
- Purpose: Define a repeatable, auditable process to (a) finalize, (b) sign, (c) package, and (d) validate the EETT submission in an ASiC-E container with qualified signatures that conform to EU Decision 2015/1506 and ETSI standards.
- Outputs: One or more ASiC-E (.asice) containers containing the final dossier PDFs and all required metadata, signatures, and manifests.
- References:
  - Decision (EU) 2015/1506 (formats for advanced electronic signatures: XAdES, CAdES, PAdES)
  - ETSI EN 319 142 (PAdES profile)
  - ETSI EN 319 122 (CAdES profile)
  - ETSI EN 319 132 (XAdES profile)
  - ETSI EN 319 162 (ASiC Associated Signature Containers – ASiC-E)
  - ETSI EN 319 102-1/-2 (signature validation policy)
  - eIDAS Regulation (EU) No 910/2014

2) Roles and responsibilities (RACI)
- QTS Manager (Accountable/Approver):
  - Authorizes final content set and approves sign-off
- Compliance Officer (Responsible):
  - Curates inventory, creates manifests, runs validation
- Legal Representative/Authorized Signer (Responsible):
  - Applies qualified electronic signatures and qualified timestamps
- Security Officer (Consulted):
  - Verifies integrity, anti-tamper, and AV scans
- CAB Liaison / Regulatory Affairs (Informed):
  - Receives final ASiC-E and manages portal submission

3) Pre-submission blockers (must be complete before signing/packaging)
- Final CAB Conformity Assessment Report (Article 10) – signed, accredited, no placeholders
- Insurance certificate and policy number reflected in Service_Start
- Termination Plan annexes present (custodian contract, escrow bank letter, tail coverage rider)
- Cross-document harmonization (TSP Policy vs End-User Agreement; TSPS vs Revocation SOP)
- All placeholders resolved; all dates consistent; Greek/English parity in bilingual docs

4) Final dossier inventory (minimum)
Include the following signed PDFs (examples; adapt to your dossier):
- 01_Registry: Registry_Application_*.pdf; Fee_Proof.pdf; Change_Notification_Template_SIGNED.pdf
- 02_Service_Start: Qualified_Service_Start_Application_SIGNED.pdf; Admin_Declaration_SIGNED.pdf
- 03_CAB: Conformity_Assessment_Report_FINAL.pdf; Traceability_Matrix.pdf
- 04_TSP_Policy: TSP_Policy_GR_EN_SIGNED.pdf; APPENDIX_QSCD_Remote_Signing.pdf
- 05_TSPS: TSPS_Qualified_Services_GR_EN_SIGNED.pdf; Certificate_Profiles_Guide.pdf
- 06_Test_Certificates: 06_Test_Certificates.zip + summary PDF
- 07_Incidents: Incident_Response_Plan_GR_EN.pdf; Forms.pdf
- 08_Notifications: User_Notification_Plan_GR_EN.pdf; Templates.pdf
- 09_Termination: Termination_Plan_GR_EN.pdf; Annex A/B/C proof PDFs
- 10_End_User_Agreement: EULA_GR_EN_SIGNED.pdf
- 11_Revocation: Revocation_Status_SOP_GR_EN.pdf; Web_Disclosure_Text.pdf
- 12_Recordkeeping: Records_and_Access_Policy_GR_EN.pdf
- 14_NTL_Publication: NTL_Datasheet.pdf; Packaging_Guide.pdf
- 17_Executive_Brief: 00_Executive_Brief.pdf
- 18_Project_Timeline: Gantt/Schedule.pdf
- 19_Compliance_Register: Compliance_Register.pdf

5) File naming & versioning rules
- Use stable, explicit names: <folder>_<doc>_vMAJOR.MINOR_DATE.pdf, e.g., 04_TSP_Policy_GR_EN_v2.1_2024-10-30.pdf
- No spaces; ASCII only
- Keep one “current” version per document for submission; archive previous internally
- Update a top-level INDEX.md (or README) to list included files, versions, and checksums

6) Signature strategy (overview)
A. Sign each PDF with a qualified signature (PAdES) at least at baseline B-LT (preferred B-LTA if available):
   - Qualified certificate issued to the authorized legal representative (device: QSCD token/smartcard or qualified remote signing service)
   - Add qualified timestamp (TSA) at signing; embed revocation data and cert chain (LT); consider periodic timestamp renewal (LTA)
B. Optionally, create detached signatures (CAdES or XAdES) for non-PDF payloads and include them under META-INF/ in ASiC-E
C. Finally, assemble ASiC-E with data files + META-INF (signatures, manifest), ensuring conformance to ETSI EN 319 162

7) PAdES qualified signature (per PDF)
- Use a qualified signing application approved by your QTSP or equivalent enterprise signing tool supporting PAdES-B-LT/B-LTA
- Signing recommendations:
  - Digest algorithm: SHA-256 or better
  - Visible signature appearance optional; ensure long-term validation data embedded (CRLs/OCSP, chain)
  - Apply qualified timestamp at signing; if LTA is required, add archival timestamp(s)
- Validation: use a trusted validator (ETSI-compliant validator, or DSS validation) to confirm PAdES profile (B-LT/B-LTA), chain, revocation info, timestamps

8) ASiC-E container structure (ETSI EN 319 162)
- The ASiC-E (.asice) is a ZIP-based container with:
  1) A “mimetype” file (uncompressed; first entry) containing exactly:
     application/vnd.etsi.asic-e+zip
  2) One or more data objects (your signed PDFs, ZIPs)
  3) META-INF/ directory containing:
     - signatures (XAdES/CAdES) if used
     - manifest(s) (checksums, references)
     - asicmanifest.xml (if your tool generates it)
- Recommended top-level layout:
  asic-staging/
    mimetype
    data/
      01_Registry_Application_...pdf
      02_Service_Start_...pdf
      ...
    META-INF/
      manifest-sha256.txt
      signatures1.p7s (optional)
      signatures2.xml (optional)
      asicmanifest.xml (tool-generated, optional)
    README_SUBMISSION.txt

9) Manifest creation (integrity and inventory)
- Create a SHA-256 manifest listing every payload file included in “data/”
  Example format (manifest-sha256.txt):
    SHA256 (data/01_Registry_Application_...pdf) = 9f1b...c13a
    SHA256 (data/02_Service_Start_...pdf)       = a2ee...774d
    ...
- Generate checksums (illustrative commands)
  - Linux/macOS:
      find data -type f -print0 | sort -z | xargs -0 shasum -a 256 > META-INF/manifest-sha256.txt
  - Or:
      shasum -a 256 data/* > META-INF/manifest-sha256.txt

10) ASiC-E assembly (manual ZIP method)
- Create staging:
    mkdir -p asic-staging/data asic-staging/META-INF
- Place final PDFs and payloads into asic-staging/data
- Create the “mimetype” file:
    printf 'application/vnd.etsi.asic-e+zip' > asic-staging/mimetype
- Prepare manifest in META-INF (as above)
- (Optional) Add detached signatures into META-INF (CAdES .p7s or XAdES .xml)
- Build ASiC-E:
  A) Ensure mimetype is first and uncompressed:
     (cd asic-staging && zip -X0 asice.zip mimetype)
  B) Add the rest (compressed or stored):
     (cd asic-staging && zip -Xur9 asice.zip data META-INF README_SUBMISSION.txt)
  C) Rename:
     mv asic-staging/asice.zip EETT_Submission_<YYYYMMDD>.asice
- Verification of container structure:
    unzip -Z -v EETT_Submission_<YYYYMMDD>.asice | sed -n '1,5p'
  Ensure “mimetype” is the first entry and STORED (no compression)

11) README_SUBMISSION.txt (include inside the container)
- Purpose of container
- Short file inventory with versions
- Contact points (QTS Manager, regulatory contact)
- Signature summary (PAdES levels, timestamp provider)
- Validation guidance (which standards and validators)

12) Signature and timestamp on the container (optional/advanced)
- Some workflows also apply a signature at the container level (ASiC-E signature in META-INF) rather than (or in addition to) per-PDF signatures
- If used, ensure:
  - Signature uses a qualified certificate
  - CAdES or XAdES signature files are placed under META-INF/
  - A qualified timestamp is added to the container signature
- Validate with ETSI-compliant validators (DSS/ETSI) and ensure all references resolve to included data/ files

13) Validation steps (checklist)
- Files:
  [ ] All required PDFs present; no placeholders
  [ ] All mandatory annexes present (CAB report final; Insurance certificate; Termination annexes)
- Per-PDF:
  [ ] PAdES-B-LT or B-LTA verified; chain valid; revocation info embedded
  [ ] Qualified timestamp(s) present and valid
- ASiC-E:
  [ ] mimetype is first entry and uncompressed; value exact “application/vnd.etsi.asic-e+zip”
  [ ] META-INF/manifest-sha256.txt exists; all hashes match payloads
  [ ] (If used) META-INF/signatures*.p7s or .xml present and valid
- Security:
  [ ] AV scan performed on container and payloads; no malware detected
  [ ] Hash of final .asice recorded in delivery checklist
- Documentation:
  [ ] README_SUBMISSION.txt present with inventory and contacts

14) Delivery artifacts to EETT / CAB
- Primary: EETT_Submission_<YYYYMMDD>.asice
- Secondary: Delivery checklist (signed), out-of-band hash (e.g., SHA-256), and short cover letter
- Retain:
  - Signing logs, validation reports (PDF exports), hash manifests, and index
  - Store in Supporting_Docs/Submission_Proofs/<date>/

15) Troubleshooting & common pitfalls
- PAdES invalid / no LTV:
  - Re-sign using a tool that embeds revocation info (OCSP/CRL) & timestamp; revalidate
- ASiC-E “mimetype” compressed or not first:
  - Rebuild: add mimetype first with -0 (stored); then add data and META-INF
- Missing annexes or cross-references:
  - Re-run dossier readiness checklist; ensure all referenced attachments exist and are current
- DSS/Validator warnings:
  - Read the report details; align profiles (PAdES-B-LT/LTA) and ensure TSA trust path is recognized

16) Example staging session (illustrative)
# create staging
mkdir -p asic-staging/{data,META-INF}
# copy payloads
cp ../**/*.pdf asic-staging/data/   # curate exact set; do not include drafts
# create mimetype
printf 'application/vnd.etsi.asic-e+zip' > asic-staging/mimetype
# compute manifest
(cd asic-staging && find data -type f -print0 | sort -z | xargs -0 shasum -a 256 > META-INF/manifest-sha256.txt)
# add optional README
cat > asic-staging/README_SUBMISSION.txt <<'EOF'
EETT Submission Container
Contact: qts.manager@example.gr, +30 210 000 0000
This container includes the final signed PDFs and required annexes.
EOF
# assemble ZIP with correct ordering
(cd asic-staging && zip -X0 asice.zip mimetype)
(cd asic-staging && zip -Xur9 asice.zip data META-INF README_SUBMISSION.txt)
mv asic-staging/asice.zip EETT_Submission_2024-10-30.asice
# verify “mimetype” first, STORED
unzip -Z -v EETT_Submission_2024-10-30.asice | sed -n '1,5p'

17) Acceptance criteria (pass/fail)
- PASS if:
  - All PDFs individually validate as PAdES-B-LT (or LTA)
  - ASiC-E structure validates per ETSI EN 319 162
  - “mimetype” is correct and first; META-INF manifest complete; hashes match
  - Qualified timestamps verifiable; trust chain resolvable
  - Delivery checklist complete; hashes recorded; no malware findings
- FAIL otherwise; remediate and re-run end-to-end

18) Change control
- Any change to the packaged set (add/remove/update files) invalidates signatures and hashes
- Re-run the entire workflow: re-sign PDFs if updated, regenerate manifest, rebuild ASiC-E, re-validate

19) Appendix – Minimal delivery checklist
- [ ] Index of files and versions (with SHA-256 per file)
- [ ] Final CAB report and accreditation references included
- [ ] Insurance certificate and policy number included
- [ ] Termination Plan annexes (Custodian, Escrow, Tail coverage) included
- [ ] PAdES validation report(s) archived
- [ ] ASiC-E validator report archived
- [ ] Final .asice SHA-256 recorded
- [ ] Contact & escalation list attached

End of document
