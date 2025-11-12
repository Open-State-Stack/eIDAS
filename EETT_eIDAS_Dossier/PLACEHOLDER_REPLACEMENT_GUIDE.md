# PLACEHOLDER REPLACEMENT GUIDE
## Complete List of Variables for EETT/eIDAS Dossier Customization

**Purpose:** This guide lists ALL placeholder fields used across the dossier documents. Use search-and-replace in your document editor to customize the entire package for your organization.

**Instructions:**
1. Copy this table to Excel/Google Sheets
2. Fill the "Your Value" column with actual company data
3. Use Find & Replace across all documents (01-15)
4. Validate that NO placeholders remain before submission

---

## CORE COMPANY DETAILS

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[LEGAL_NAME_GR]` | Company legal name in Greek | | Ψηφιακές Υπηρεσίες Εμπιστοσύνης Α.Ε. |
| `[LEGAL_NAME_EN]` | Company legal name in English | | Digital Trust Services S.A. |
| `[LEGAL_FORM]` | Legal entity type | | Ανώνυμη Εταιρεία (S.A.) |
| `[GEMI_NUMBER]` | Γ.Ε.Μ.Η. registration number | | 123456789 |
| `[AFM_NUMBER]` | Tax registration number (ΑΦΜ) | | 999888777 |
| `[REGISTERED_ADDRESS]` | Full registered address | | Λεωφ. Συγγρού 123, 117 45 Αθήνα |
| `[REGISTERED_ADDRESS_STREET]` | Street address only | | Λεωφ. Συγγρού 123 |
| `[POSTAL_CODE]` | Postal code | | 117 45 |
| `[CITY]` | City | | Αθήνα |
| `[WEBSITE_URL]` | Company website | | https://www.example-trust.gr |
| `[PHONE]` | Main company phone | | +30 210 1234567 |
| `[EMAIL]` | Main company email | | info@example-trust.gr |
| `[EETT_REG_NUMBER]` | EETT registration number (assigned post-registry) | | [Leave blank until assigned] |

---

## LEGAL REPRESENTATIVES & DIRECTORS

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[DIRECTOR_1_NAME]` | Primary director full name | | Γεώργιος Παπαδόπουλος |
| `[POSITION_1]` | Position/title of director 1 | | Πρόεδρος & Διευθύνων Σύμβουλος |
| `[ID_NUMBER_1]` | ID card number director 1 | | ΑΕ123456 |
| `[DIRECTOR_2_NAME]` | Secondary director full name | | Μαρία Κωνσταντίνου |
| `[POSITION_2]` | Position/title of director 2 | | Αντιπρόεδρος |
| `[ID_NUMBER_2]` | ID card number director 2 | | ΑΖ987654 |
| `[DIRECTOR_NAME]` | Generic director reference | | (Use DIRECTOR_1_NAME) |
| `[DIRECTOR_TITLE]` | Generic director title | | (Use POSITION_1) |
| `[DIRECTOR_PHONE]` | Director phone | | +30 210 1234501 |
| `[DIRECTOR_EMAIL]` | Director email | | ceo@example-trust.gr |
| `[AUTHORIZED_PERSON_NAME]` | Person signing documents | | (Usually DIRECTOR_1_NAME) |
| `[TITLE]` | Title of authorized person | | (Usually POSITION_1) |

---

## CONTACT PERSONS

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[CONTACT_PERSON_NAME]` | EETT liaison officer name | | Ελένη Νικολάου |
| `[CONTACT_PERSON_TITLE]` | EETT liaison title | | Υπεύθυνη Κανονιστικής Συμμόρφωσης |
| `[CONTACT_PHONE]` | EETT liaison phone | | +30 210 1234510 |
| `[CONTACT_EMAIL]` | EETT liaison email | | compliance@example-trust.gr |
| `[CONTACT_EMAIL_ALT]` | Alternative email | | compliance-backup@example-trust.gr |
| `[CONTACT_NAME]` | Generic contact name | | (Use CONTACT_PERSON_NAME) |
| `[CONTACT_TITLE]` | Generic contact title | | (Use CONTACT_PERSON_TITLE) |

### Public Contact Details (for NTL)

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[PUBLIC_PHONE]` | Customer service phone | | +30 210 1234500 |
| `[PUBLIC_EMAIL]` | Customer service email | | support@example-trust.gr |
| `[REVOCATION_HOTLINE]` | 24×7 revocation phone | | +30 210 1234599 (24/7) |
| `[INCIDENT_EMAIL]` | Incident reporting email | | incidents@example-trust.gr |

---

## KEY PERSONNEL

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[QTS_MANAGER_NAME]` | Qualified Trust Services Manager | | Δημήτριος Αντωνίου |
| `[CISO_NAME]` | Chief Information Security Officer | | Αλέξανδρος Γεωργίου |
| `[CRYPTO_OFFICER_NAME]` | Cryptographic Operations Officer | | Σοφία Παπαδημητρίου |
| `[DPO_NAME]` | Data Protection Officer | | Κατερίνα Μιχαηλίδου |
| `[DPO_EMAIL]` | DPO email | | dpo@example-trust.gr |
| `[DPO_PHONE]` | DPO phone | | +30 210 1234520 |
| `[SYSTEM_ADMIN_NAME]` | Electronic system administrator | | Νικόλαος Ιωάννου |
| `[SYSTEM_ADMIN_EMAIL]` | System admin email | | sysadmin@example-trust.gr |
| `[SYSTEM_ADMIN_PHONE]` | System admin phone | | +30 210 1234530 |

---

## DATES

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[SUBMISSION_DATE]` | Dossier submission date | | 2025-03-15 |
| `[DESIRED_START_DATE]` | Desired service start date | | 2025-06-01 |
| `[DATE]` | Generic date field | | (Context-dependent) |
| `[YEAR]` | Current year | | 2025 |
| `[YEAR+1]` | Next year | | 2026 |
| `[YEAR+2]` | Year after next | | 2027 |
| `[COMPLETION_DATE]` | Dossier completion date | | 2025-03-01 |
| `[QA_DATE]` | QA review completion | | 2025-03-10 |
| `[CAB_AUDIT_DATE]` | CAB audit scheduled date | | 2025-02-15 to 2025-02-28 |
| `[GO_LIVE_DATE]` | Planned go-live date | | 2025-07-01 |

---

## INFRASTRUCTURE & TECHNICAL

### Data Centers

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[DC1_ADDRESS]` | Primary data center address | | Βιομηχανική Περιοχή Θρακομακεδόνων, 136 71 Αχαρνές |
| `[DC2_ADDRESS]` | Backup data center address | | Βιομηχανική Περιοχή ΒΙΠΕ Θεσσαλονίκης, 570 22 Σίνδος |
| `[DISTANCE]` | Distance between DCs (km) | | 520 |
| `[COLO_PROVIDER]` | Colocation provider name | | Lamda Hellix / OTE Data Centers |

### HSM & Cryptography

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[HSM_MODEL]` | HSM hardware model | | Thales Luna Network HSM 7 |
| `[HSM_QUANTITY]` | Total HSM units | | 4 |
| `[HSM_PRIMARY_COUNT]` | HSMs in primary DC | | 2 |
| `[HSM_BACKUP_COUNT]` | HSMs in backup DC | | 2 |
| `[ROOT_ALGORITHM]` | Root CA algorithm | | RSA-4096 with SHA-384 |
| `[ROOT_VALIDITY]` | Root CA validity (years) | | 20 |
| `[ISSUING_ALGORITHM]` | Issuing CA algorithm | | RSA-3072 with SHA-256 |
| `[ISSUING_VALIDITY]` | Issuing CA validity (years) | | 10 |
| `[M]` | M-of-N key splitting (M value) | | 3 |
| `[N]` | M-of-N key splitting (N value) | | 5 |

### Service Endpoints

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[OCSP_URL_1]` | Primary OCSP responder URL | | http://ocsp.example-trust.gr |
| `[OCSP_URL_2]` | Backup OCSP URL | | http://ocsp2.example-trust.gr |
| `[CRL_URL_1]` | Primary CRL distribution URL | | http://crl.example-trust.gr/root.crl |
| `[CRL_URL_2]` | Backup CRL URL | | http://crl2.example-trust.gr/root.crl |
| `[CRL_URL_FULL]` | Full CRL URL | | http://crl.example-trust.gr/full.crl |
| `[CRL_URL_DELTA]` | Delta CRL URL | | http://crl.example-trust.gr/delta.crl |
| `[TSA_URL]` | Time-Stamp Authority URL | | http://tsa.example-trust.gr |
| `[VALIDATION_API_URL]` | Validation service API | | https://api.example-trust.gr/validation |
| `[EDELIVERY_INTEGRATION]` | eDelivery integration method | | SMTP + REST API |
| `[ANNOUNCEMENT_URL]` | Public announcements URL | | https://www.example-trust.gr/announcements |

### Performance & Capacity

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[RTO]` | Recovery Time Objective (hours) | | 4 |
| `[RPO]` | Recovery Point Objective (minutes) | | 15 |
| `[ISSUANCE_SLA]` | Certificate issuance SLA (%) | | 99.5 |
| `[OCSP_SLA]` | OCSP availability SLA (%) | | 99.9 |
| `[CRL_SLA]` | CRL availability SLA (%) | | 99.9 |
| `[TSA_SLA]` | TSA availability SLA (%) | | 99.9 |
| `[TPS_PEAK]` | Peak transactions per second | | 500 |
| `[TPS_QTS_PEAK]` | Peak timestamps per second | | 1000 |
| `[CRL_MAX_SIZE]` | Max CRL size (MB) | | 50 |
| `[REVOCATION_PROCESSING_TIME]` | Revocation processing time | | 24 ώρες / 24 hours |
| `[CRL_SIGNATURE_ALGORITHM]` | CRL signature algorithm | | RSA-3072 with SHA-256 |

---

## SERVICE VOLUMES

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[VOLUME_CERTS_MONTH]` | Total certificates per month | | 5,000 |
| `[VOLUME_TS_MONTH]` | Timestamps per month | | 100,000 |
| `[VOLUME_QESIG_YEAR]` | QES natural persons per year | | 10,000 |
| `[VOLUME_QESIG_LEGAL_YEAR]` | QES legal persons per year | | 2,000 |
| `[VOLUME_REMOTE_SIG_YEAR]` | Remote QES per year | | 5,000 |
| `[VOLUME_QESEAL_YEAR]` | QSeal per year | | 3,000 |
| `[VOLUME_REMOTE_SEAL_YEAR]` | Remote QSeal per year | | 1,500 |
| `[VOLUME_QTS_YEAR]` | QTS per year | | 1,200,000 |
| `[VOLUME_PRESERVATION_YEAR]` | Preserved objects per year | | 50,000 |
| `[VOLUME_EDELIVERY_YEAR]` | eDelivery messages per year | | 100,000 |
| `[VOLUME_QWAC_YEAR]` | QWAC per year | | 500 |
| `[VALIDITY_PERIOD]` | Certificate validity (months) | | 12 |
| `[SEAL_VALIDITY_PERIOD]` | Seal validity (months) | | 24 |

---

## FINANCIAL RESOURCES

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[SHARE_CAPITAL]` | Paid-up share capital (€) | | 500,000 |
| `[RESERVES]` | Reserves (€) | | 200,000 |
| `[TOTAL_EQUITY]` | Total equity (€) | | 700,000 |
| `[CAPITAL_AMOUNT]` | Registered capital (€) | | (Use SHARE_CAPITAL) |

### Insurance

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[INSURANCE_COMPANY_NAME]` | Insurance company name | | Ethniki Insurance / Eurolife |
| `[POLICY_NUMBER]` | Policy number | | PI-2025-123456 |
| `[INSURANCE_POLICY_NUMBER]` | (Duplicate) Policy number | | (Use POLICY_NUMBER) |
| `[INSURER_NAME]` | Insurer name | | (Use INSURANCE_COMPANY_NAME) |
| `[COVERAGE_PER_INCIDENT]` | Coverage per incident (€) | | 2,000,000 |
| `[COVERAGE_AMOUNT]` | (Duplicate) Coverage (€) | | (Use COVERAGE_PER_INCIDENT) |
| `[ANNUAL_AGGREGATE]` | Annual aggregate limit (€) | | 5,000,000 |
| `[AGGREGATE_LIMIT]` | (Duplicate) Aggregate (€) | | (Use ANNUAL_AGGREGATE) |
| `[POLICY_START_DATE]` | Policy start date | | 2025-01-01 |
| `[POLICY_END_DATE]` | Policy end date | | 2026-01-01 |
| `[INSURANCE_PREMIUM]` | Annual premium (€) | | 15,000 |
| `[EXCESS_INSURER]` | Excess coverage insurer | | [If applicable] |
| `[EXCESS_COVERAGE]` | Excess coverage amount (€) | | [If applicable] |
| `[TOTAL_COVERAGE]` | Total combined coverage (€) | | (Sum of primary + excess) |

### Financial Ratios

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[CURRENT_RATIO]` | Current ratio | | 1.5 |
| `[EQUITY_RATIO]` | Equity to assets ratio (%) | | 45 |
| `[DSCR]` | Debt service coverage ratio | | 2.1 |

### Operational Costs

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[PERSONNEL_COST]` | Annual personnel cost (€) | | 300,000 |
| `[INFRASTRUCTURE_COST]` | Annual infrastructure cost (€) | | 80,000 |
| `[AUDIT_COST]` | Annual CAB audit cost (€) | | 12,000 |
| `[MAINTENANCE_COST]` | Maintenance & operations (€) | | 50,000 |
| `[TOTAL_ANNUAL_OPEX]` | Total annual OpEx (€) | | 457,000 |
| `[EQUITY_AVAILABLE]` | Equity available for operations (€) | | 700,000 |
| `[INSURANCE_COVERAGE]` | Insurance coverage (€) | | 2,000,000 |
| `[CASH_AVAILABLE]` | Cash & equivalents (€) | | 300,000 |
| `[CREDIT_LINES]` | Credit facilities (€) | | 200,000 |

---

## CONFORMITY ASSESSMENT BODY (CAB)

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[CAB_NAME]` | CAB name | | TÜV Hellas / LRQA Hellas |
| `[CAB_ADDRESS]` | CAB address | | Λεωφ. Μεσογείων 109, 115 26 Αθήνα |
| `[CAB_ACCREDITATION_NUMBER]` | CAB accreditation number | | ESYD-001-2024 |
| `[ACCREDITATION_BODY]` | Accreditation body | | ESYD (Εθνικό Σύστημα Διαπίστευσης) |
| `[AUDIT_DATE_PLANNED]` | Planned audit date | | 2025-02-15 to 2025-02-28 |
| `[AUDIT_START_DATE]` | Audit start date | | 2025-02-15 |
| `[AUDIT_END_DATE]` | Audit end date | | 2025-02-28 |
| `[NEXT_AUDIT_DATE]` | Next surveillance audit | | 2026-02-01 |
| `[SERVICES_AUDITED]` | Services covered in audit | | QES, QSeal, QTS |

---

## CERTIFICATIONS

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[ISO27001_CERT_NUMBER]` | ISO 27001 certificate number | | ISO27001-GR-2024-123 |
| `[ISO27001_CERTIFIER]` | ISO 27001 certifier | | TÜV Hellas |
| `[ISO27001_SCOPE]` | ISO 27001 scope | | PKI operations, qualified trust services |
| `[ISO27001_ISSUE_DATE]` | ISO 27001 issue date | | 2024-06-01 |
| `[ISO27001_EXPIRY_DATE]` | ISO 27001 expiry | | 2027-05-31 |
| `[ISO27017_CERT]` | ISO 27017 certificate number | | [If applicable] |
| `[ISO27017_EXPIRY]` | ISO 27017 expiry | | [If applicable] |
| `[ISO20000_CERT]` | ISO 20000 certificate number | | [If applicable] |
| `[ISO20000_EXPIRY]` | ISO 20000 expiry | | [If applicable] |
| `[ISO9001_CERT]` | ISO 9001 certificate number | | [If applicable] |
| `[ISO9001_EXPIRY]` | ISO 9001 expiry | | [If applicable] |
| `[SOC2_REPORT_DATE]` | SOC 2 Type II report date | | [If applicable] |
| `[SOC2_AUDITOR]` | SOC 2 auditor | | [If applicable] |

---

## QSCD (for Remote Signing/Sealing)

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[QSCD_PROVIDER_NAME]` | QSCD provider | | Swisscom Trust Services / Intesi Group |
| `[QSCD_CERT_NUMBER]` | QSCD certification number | | QSCD-EU-2023-456 |

---

## REGISTRATION AUTHORITIES

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[RA_LOCATION_1]` | RA location 1 | | Κεντρικά Γραφεία, Αθήνα |
| `[RA_LOCATION_2]` | RA location 2 | | Υποκατάστημα, Θεσσαλονίκη |
| `[IDENTIFICATION_PROTOCOLS]` | Identification protocols | | Face-to-face per eIDAS, video ident per eIDAS |
| `[TRAINING_FREQUENCY]` | RA training frequency | | Ετησίως / Annually |
| `[ROTATION_PERIOD]` | Key rotation period | | Ετησίως / Annually |

---

## SECURITY & COMPLIANCE

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[PHYSICAL_SECURITY_MEASURES]` | Physical security measures | | Biometric access, 24/7 CCTV, mantrap entry, armed guards |
| `[UPS_CAPACITY]` | UPS capacity | | 100 kVA N+1 redundant |
| `[GENERATOR_CAPACITY]` | Generator capacity | | 200 kVA diesel |
| `[FIRE_SUPPRESSION_TYPE]` | Fire suppression system | | FM-200 gas suppression |
| `[FIREWALL_MODEL]` | Firewall model | | Palo Alto PA-5250 (HA pair) |
| `[IDS_MODEL]` | IDS/IPS model | | Cisco Firepower 4150 |
| `[DDOS_PROVIDER]` | DDoS protection provider | | Cloudflare / Akamai |
| `[DDOS_CAPACITY]` | DDoS protection capacity (Gbps) | | 10 |
| `[SIEM_SOLUTION]` | SIEM solution | | Splunk Enterprise / IBM QRadar |
| `[LOG_RETENTION_PERIOD]` | Log retention period (years) | | 7 |
| `[PENTEST_FREQUENCY]` | Penetration testing frequency | | Ετησίως / Annually |
| `[DR_TEST_FREQUENCY]` | DR test frequency | | Εξαμηνιαίως / Semi-annually |
| `[LAST_DR_TEST_DATE]` | Last DR test date | | 2024-12-15 |

---

## PROCESSES & TRAINING

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[INITIAL_TRAINING_HOURS]` | Initial training hours | | 40 |
| `[ANNUAL_TRAINING_HOURS]` | Annual refresher hours | | 16 |
| `[RETENTION_YEARS]` | Archive retention (years) | | 7 |
| `[RE_TIMESTAMP_STRATEGY]` | Re-timestamping strategy | | Every 5 years or upon algorithm deprecation |
| `[DB_BACKUP_FREQUENCY]` | Database backup frequency | | Hourly incremental, daily full |

---

## QUALIFIED SIGNATURES FOR SUBMISSION

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[QES_PROVIDER_NAME]` | QES provider for dossier signature | | Qualified TSP (external) |
| `[QES_CERT_SERIAL]` | QES certificate serial | | 0A:1B:2C:3D:4E:5F |
| `[QES_CERT_EXPIRY]` | QES certificate expiry | | 2025-12-31 |
| `[QSEAL_PROVIDER_NAME]` | QSeal provider | | (If using seal instead) |
| `[QSEAL_CERT_SERIAL]` | QSeal certificate serial | | (If using seal) |
| `[QSEAL_CERT_EXPIRY]` | QSeal certificate expiry | | (If using seal) |

---

## EETT-SPECIFIC

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[EETT_BANK_NAME]` | EETT fee payment bank | | [Contact EETT for details] |
| `[EETT_IBAN_NUMBER]` | EETT IBAN for fee payment | | [Contact EETT for details] |
| `[TRANSACTION_ID]` | Fee payment transaction ID | | [After payment] |
| `[PAYMENT_DATE]` | Fee payment date | | [After payment] |
| `[SENDER_BANK]` | Your bank for payment | | Alpha Bank / Eurobank |
| `[CHEQUE_NUMBER]` | Cheque number (if paying by cheque) | | [If applicable] |
| `[ISSUE_DATE]` | Cheque issue date | | [If applicable] |
| `[EETT_TRUST_SERVICES_EMAIL]` | EETT trust services email | | [Contact EETT – typically on www.eett.gr] |
| `[EETT_SUBMISSION_PORTAL_URL]` | EETT electronic submission portal | | [Provided by EETT upon registration] |
| `[MAX_FILE_SIZE]` | Max file size for submission (MB) | | [Check EETT portal specs] |

---

## MISCELLANEOUS

| Placeholder | Description | Your Value | Example |
|-------------|-------------|------------|---------|
| `[REASON_FOR_TERMINATION]` | Reason for service termination (if applicable) | | [Context-dependent] |
| `[X]` | Generic numeric placeholder | | [Context-dependent] |
| `[DURATION]` | Generic duration placeholder | | [Context-dependent] |
| `[USER_NOTIFICATION_DATE]` | User notification date | | [Context-dependent] |
| `[DETAILED_DESCRIPTION]` | Detailed description field | | [Context-dependent] |
| `[LIST_ATTACHMENTS]` | List of attachments | | [Context-dependent] |
| `[LIST_EXCLUSIONS]` | Insurance exclusions list | | War, nuclear events, cyber attacks (unless explicitly covered) |
| `[TEMPLATE_DATE]` | Template creation date | | 2025-01-15 |
| `[DRAFT_DATE]` | Draft date | | 2025-02-01 |
| `[REVIEW_DATE]` | Review date | | 2025-02-25 |
| `[FINAL_DATE]` | Final version date | | 2025-03-01 |
| `[SIGNATURE_DATE]` | Signature date | | 2025-03-15 |
| `[EFFECTIVE_DATE]` | Change effective date | | [Context-dependent] |
| `[NOTIFICATION_DATE]` | Notification date | | [Context-dependent] |
| `[APPOINTMENT_DATE]` | Appointment date | | [Context-dependent] |
| `[DEPARTURE_DATE]` | Departure date | | [Context-dependent] |
| `[START_DATE]` | Start date | | [Context-dependent] |
| `[END_DATE]` | End date | | [Context-dependent] |
| `[TERMINATION_DATE]` | Termination date | | [Context-dependent] |

---

## VALIDATION CHECKLIST

After completing replacement, verify:

☐ **No placeholders remain:** Search all documents for `[` character  
☐ **Consistency:** Same value used for duplicate placeholders (e.g., LEGAL_NAME_GR appears identically everywhere)  
☐ **Date logic:** YEAR+1 = YEAR + 1, etc.  
☐ **Numeric calculations:** Totals correct (e.g., TOTAL_ANNUAL_OPEX = sum of component costs)  
☐ **URL validity:** All URLs well-formed (https://, no typos)  
☐ **Email validity:** All emails well-formed (name@domain.tld)  
☐ **Phone format:** Consistent format (recommend: +30 XXX XXXXXXX)  
☐ **Greek characters:** Proper encoding (UTF-8), no garbled text  
☐ **Bilingual consistency:** Greek and English values match in meaning  
☐ **Legal accuracy:** GEMI, AFM, legal names match official company documents  
☐ **Financial accuracy:** Balance sheet figures match audited statements  
☐ **Insurance adequacy:** Coverage meets eIDAS minimums (€1M+ for QES/QSeal)  
☐ **Technical realism:** Service volumes, TPS, SLAs are achievable with declared infrastructure  
☐ **Completeness:** All "Your Value" cells filled (except "If applicable" fields)

---

## TOOLS FOR BULK REPLACEMENT

### Microsoft Word
1. Open all .docx files in dossier
2. Use **Find & Replace** (Ctrl+H)
3. Find: `[LEGAL_NAME_GR]`
4. Replace: `Your Actual Company Name`
5. Replace All across all open documents

### LibreOffice / Google Docs
- Similar Find & Replace across multiple documents

### Command Line (Mac/Linux)
```bash
cd /path/to/EETT_eIDAS_Dossier
grep -r '\[LEGAL_NAME_GR\]' . --include='*.md' --include='*.docx'  # Find
# For .md files:
find . -name '*.md' -exec sed -i '' 's/\[LEGAL_NAME_GR\]/Your Actual Company Name/g' {} +
```

### Python Script (for bulk replacement)
```python
import os
import re

replacements = {
    '[LEGAL_NAME_GR]': 'Ψηφιακές Υπηρεσίες Εμπιστοσύνης Α.Ε.',
    '[AFM_NUMBER]': '999888777',
    # Add all replacements from your table
}

def replace_in_file(filepath, replacements):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    for placeholder, value in replacements.items():
        content = content.replace(placeholder, value)
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

# Walk through dossier directory
for root, dirs, files in os.walk('/path/to/EETT_eIDAS_Dossier'):
    for file in files:
        if file.endswith(('.md', '.docx')):  # Adjust for file types
            replace_in_file(os.path.join(root, file), replacements)
```

---

## FINAL NOTE

**CRITICAL:** Do NOT submit documents with placeholder fields unfilled. EETT will reject incomplete applications, delaying your accreditation by months.

**Recommended workflow:**
1. Fill this guide completely (Excel/Sheets)
2. Perform bulk replacement
3. Manual review of each document (ensure context makes sense)
4. Legal & technical review
5. Final validation with red-team checklist (Executive Brief)
6. Apply qualified signatures
7. Submit to EETT

---

**Version:** 1.0  
**Date:** [TEMPLATE_DATE]  
**File:** PLACEHOLDER_REPLACEMENT_GUIDE.md

**END OF GUIDE**
