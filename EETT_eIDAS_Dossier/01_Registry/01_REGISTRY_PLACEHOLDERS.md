# 01_REGISTRY - PLACEHOLDER REFERENCE TABLE

**Document Set:** Registry Application Documents (01, 01a, 01b)  
**Purpose:** Centralized placeholder list for find/replace operations  
**Version:** 1.0  
**Date:** 2025-11-11

---

## PLACEHOLDER INVENTORY

This document lists all placeholders used in the 01_Registry document set. Replace these with actual values before submission.

### Company & Legal Information

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[LEGAL_NAME_GR]` | Company legal name in Greek | Ελληνική Εταιρεία Εμπιστοσύνης ΑΕ | 01, 01a, 01b |
| `[LEGAL_NAME_EN]` | Company legal name in English | Greek Trust Company SA | 01, 01b |
| `[LEGAL_FORM]` | Legal form of company | Ανώνυμη Εταιρεία (S.A.) | 01 |
| `[ΓΕΜΗ_NUMBER]` | GEMI registry number | 123456789 | 01, 01b |
| `[AFM_NUMBER]` | Tax registration number (AFM) | 099999999 | 01, 01a, 01b |
| `[REGISTERED_ADDRESS_STREET]` | Street address | Λεωφ. Συγγρού 123 | 01, 01b |
| `[POSTAL_CODE]` | Postal code | 11745 | 01, 01b |
| `[CITY]` | City name | Αθήνα | 01, 01b |
| `[WEBSITE_URL]` | Company website | https://example.gr | 01, 01b |

### Legal Representatives

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[DIRECTOR_1_NAME]` | First legal representative name | Γεώργιος Παπαδόπουλος | 01 |
| `[POSITION_1]` | First representative position | Πρόεδρος & Διευθύνων Σύμβουλος | 01 |
| `[ID_NUMBER_1]` | First representative ID number | ΑΒ123456 | 01 |
| `[DIRECTOR_2_NAME]` | Second legal representative name | Μαρία Νικολάου | 01 |
| `[POSITION_2]` | Second representative position | Αντιπρόεδρος | 01 |
| `[ID_NUMBER_2]` | Second representative ID number | ΑΓ789012 | 01 |

### Contact Information

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[CONTACT_PERSON_NAME]` | EETT liaison officer name | Ιωάννης Κωνσταντίνου | 01, 01b |
| `[CONTACT_PERSON_TITLE]` | Liaison officer title | Διευθυντής Συμμόρφωσης | 01 |
| `[CONTACT_PHONE]` | Primary contact phone | +30 210 1234567 | 01, 01b |
| `[CONTACT_EMAIL]` | Primary contact email | compliance@example.gr | 01, 01b |
| `[CONTACT_EMAIL_ALT]` | Alternative contact email | info@example.gr | 01 |
| `[PUBLIC_PHONE]` | Customer service phone (for NTL) | +30 210 7654321 | 01, 01b |
| `[PUBLIC_EMAIL]` | Customer service email (for NTL) | support@example.gr | 01, 01b |
| `[REVOCATION_HOTLINE]` | 24×7 revocation phone | +30 800 1234 5678 | 01, 01b |
| `[INCIDENT_EMAIL]` | Incident reporting email | incidents@example.gr | 01, 01b |
| `[DPO_NAME]` | Data Protection Officer name | Αικατερίνη Δημητρίου | 01 |
| `[DPO_EMAIL]` | DPO email | dpo@example.gr | 01 |
| `[DPO_PHONE]` | DPO phone | +30 210 9876543 | 01 |

### Technical Infrastructure

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[DC1_ADDRESS]` | Primary datacenter address | Athens DC, Kifisias 200 | 01 |
| `[Owned/Colocation]` | Datacenter ownership type | Colocation (OTE) | 01 |
| `[DC2_ADDRESS]` | Backup datacenter address | Thessaloniki DC, Egnatia 100 | 01 |
| `[HSM_MODEL]` | HSM model | Thales Luna Network HSM 7 | 01 |
| `[OCSP_URL_1]` | Primary OCSP responder URL | http://ocsp.example.gr | 01 |
| `[OCSP_URL_2]` | Secondary OCSP responder URL | http://ocsp2.example.gr | 01 |
| `[CRL_URL_1]` | Primary CRL distribution point | http://crl.example.gr/root.crl | 01 |
| `[CRL_URL_2]` | Secondary CRL distribution point | http://crl2.example.gr/root.crl | 01 |
| `[TSA_URL]` | Timestamp authority URL | http://tsa.example.gr | 01 |
| `[QSCD_PROVIDER_NAME]` | QSCD provider name | Swisscom RA | 01 |

### Financial Information

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[CAPITAL_AMOUNT]` | Registered capital | 500,000 | 01 |
| `[INSURANCE_POLICY_NUMBER]` | Insurance policy number | POL-2025-12345 | 01 |
| `[INSURER_NAME]` | Insurance provider name | Generali Hellas | 01 |
| `[COVERAGE_AMOUNT]` | Coverage per incident | 1,000,000 | 01 |
| `[AGGREGATE_LIMIT]` | Annual aggregate limit | 2,000,000 | 01 |
| `[POLICY_START_DATE]` | Insurance policy start date | 2025-01-01 | 01 |
| `[POLICY_END_DATE]` | Insurance policy end date | 2026-01-01 | 01 |

### Operational Volumes

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[VOLUME_CERTS_MONTH]` | Certificates per month | 1,000 | 01 |
| `[VOLUME_TS_MONTH]` | Timestamps per month | 10,000 | 01 |
| `[TPS_PEAK]` | Peak transactions per second | 10 | 01 |

### Audit & Compliance

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[CAB_NAME]` | Conformity Assessment Body name | TÜV Austria | 01 |
| `[CAB_ACCREDITATION_NUMBER]` | CAB accreditation number | ESYD-123/2024 | 01 |
| `[ACCREDITATION_BODY]` | Accreditation body | ESYD | 01 |
| `[AUDIT_DATE_PLANNED]` | Next audit date | 2025-03-15 to 2025-03-19 | 01 |

### Administrative

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[SUBMISSION_DATE]` | Document submission date | 2025-11-11 | 01, 01a, 01b |
| `[DATE]` | Generic date field | 2025-11-11 | 01, 01a, 01b |
| `[EETT_REG_NUMBER]` | EETT registration number (after approval) | TSP-GR-2025-001 | 01b |

### Payment-Specific (01a)

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[TRANSACTION_ID]` | Bank transaction ID | TRX-2025-123456789 | 01a |
| `[PAYMENT_DATE]` | Date payment made | 2025-11-10 | 01a |
| `[SENDER_BANK]` | Bank from which payment sent | Εθνική Τράπεζα | 01a |
| `[CHEQUE_NUMBER]` | Check number (if paying by check) | 0012345 | 01a |
| `[ISSUE_DATE]` | Check issue date | 2025-11-10 | 01a |
| `[AUTHORIZED_PERSON]` | Person authorizing payment | Γεώργιος Παπαδόπουλος | 01a |
| `[TITLE]` | Title of authorized person | CEO | 01a |
| `[YEAR]` | Current year | 2025 | 01a |
| `[YEAR+1]` | Next year | 2026 | 01a |
| `[YEAR+2]` | Year after next | 2027 | 01a |
| `[YEAR+3]` | Three years ahead | 2028 | 01a |

### Change Notice-Specific (01b)

| Placeholder | Description | Example Value | Used In |
|------------|-------------|---------------|---------|
| `[NOTIFICATION_DATE]` | Date of change notification | 2025-11-11 | 01b |
| `[EETT_TRUST_SERVICES_EMAIL]` | EETT email for trust services | trust.services@eett.gr | 01b |
| `[EFFECTIVE_DATE]` | Effective date of change | 2025-11-15 | 01b |
| `[OLD_*]` | Previous value (various fields) | [Previous value] | 01b |
| `[NEW_*]` | New value (various fields) | [New value] | 01b |
| `[REASON_FOR_TERMINATION]` | Reason for service termination | Business decision | 01b |
| `[TERMINATION_DATE]` | Date service terminates | 2025-12-31 | 01b |
| `[START_DATE]` | Date new service starts | 2026-01-01 | 01b |
| `[DETAILED_DESCRIPTION]` | Description of other changes | [Description] | 01b |
| `[LIST_ATTACHMENTS]` | List of attachments | [Attachment list] | 01b |
| `[DURATION]` | Duration of interruption | 2 hours | 01b |
| `[USER_NOTIFICATION_DATE]` | Date users notified | 2025-11-05 | 01b |
| `[ANNOUNCEMENT_URL]` | URL of public announcement | https://example.gr/news | 01b |
| `[AUTHORIZED_PERSON_NAME]` | Name of person signing | Γεώργιος Παπαδόπουλος | 01b |
| `[SIGNATURE_DATE]` | Date of signature | 2025-11-11 | 01b |
| `[TEMPLATE_DATE]` | Template creation date | 2025-11-11 | 01b |

---

## REPLACEMENT INSTRUCTIONS

### Method 1: Manual Find/Replace (Microsoft Word/LibreOffice)

1. Open each document (.docx version)
2. Press Ctrl+H (or Cmd+H on Mac) to open Find & Replace
3. For each placeholder:
   - Find: `[PLACEHOLDER_NAME]`
   - Replace: `Actual Value`
   - Click "Replace All"
4. Verify: Search for `[` - should find 0 results
5. Save document

### Method 2: Automated Script (Python/Bash)

```bash
# Example bash script for batch replacement
# Create replacement_values.txt with format: PLACEHOLDER=VALUE

while IFS='=' read -r placeholder value; do
  sed -i "s/\[$placeholder\]/$value/g" *.md
done < replacement_values.txt
```

### Method 3: Excel/CSV Import

1. Create Excel with columns: Placeholder | Replacement Value
2. Use mail merge or VBA script to replace in Word documents
3. Export to PDF after all replacements

---

## VALIDATION CHECKLIST

After replacement, verify:

- [ ] No `[BRACKETS]` remain (search for `[` in all documents)
- [ ] All contact emails are valid format (contain @)
- [ ] All phone numbers include country code (+30)
- [ ] All URLs start with http:// or https://
- [ ] All dates are in consistent format (YYYY-MM-DD)
- [ ] All monetary amounts use correct currency symbol (€)
- [ ] AFM is exactly 9 digits
- [ ] GEMI number is valid format
- [ ] Legal representative names match ID documents
- [ ] Insurance coverage ≥ liability limits stated elsewhere
- [ ] All Greek text uses correct diacritics (accents)
- [ ] Bilingual fields (GR/EN) both populated

---

## CROSS-DOCUMENT CONSISTENCY CHECK

Ensure these values are IDENTICAL across documents:

| Value | Must Match In |
|-------|---------------|
| `[LEGAL_NAME_GR]` | 01, 01a, 01b |
| `[AFM_NUMBER]` | 01, 01a, 01b |
| `[CONTACT_EMAIL]` | 01, 01b |
| `[CONTACT_PHONE]` | 01, 01b |
| `[REVOCATION_HOTLINE]` | 01, 01b (and Doc 02, 11, 14) |
| `[DPO_EMAIL]` | 01 (and Doc 02, 05, 10, 12) |
| `[WEBSITE_URL]` | 01, 01b (and Doc 02, 04, 05, 14) |

**Critical:** If you change a value in one document, search ALL documents to update consistently.

---

## PLACEHOLDER STATISTICS

**Total Unique Placeholders:** 72  
**Documents Using Placeholders:** 3 (01, 01a, 01b)  
**Most Used Placeholder:** `[LEGAL_NAME_GR]` (3 occurrences)  
**Document with Most Placeholders:** 01_Registry_Application (48 placeholders)

---

**Document Control:**  
**Version:** 1.0  
**Last Updated:** 2025-11-11  
**Maintained By:** Compliance Officer  
**Next Review:** Before each submission
