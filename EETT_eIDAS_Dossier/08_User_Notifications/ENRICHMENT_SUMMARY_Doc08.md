# ENRICHMENT SUMMARY: USER NOTIFICATION PLAN (Doc 08)

**Document:** 08_User_Notification_Plan_GR_EN.docx.md  
**Current Status:** PARTIAL - Requires Substantial Enrichment  
**Target Status:** SUBMISSION-READY  
**Priority:** HIGH (Required per eIDAS Article 19(2) & EETT Article 5)  
**Estimated Enrichment Time:** 3-4 hours  
**Date:** [CURRENT_DATE]

---

## EXECUTIVE SUMMARY

### Current State Assessment

**Strengths:**
✅ Good basic structure with bilingual content (Greek/English)  
✅ Core notification triggers identified (7 categories)  
✅ Primary notification methods defined (5 methods)  
✅ Timing requirements table present  
✅ Basic templates for security incidents and GDPR breaches  
✅ Cross-border considerations addressed  
✅ Internal coordination chain defined  
✅ Testing and metrics section included

**Critical Gaps Identified:**
❌ **Missing front-matter compliance checklist** (required per GAP_ANALYSIS §1.3.A)  
❌ **Insufficient notification templates** (only 2 provided, need 8 minimum)  
❌ **No notification decision workflow/flowchart**  
❌ **No stakeholder contact list templates**  
❌ **Limited integration with Doc 07 (Incident Response)**  
❌ **No detailed SMS notification guidelines** (character limits, encoding, examples)  
❌ **No API status endpoint specifications**  
❌ **Missing press release template and guidelines**  
❌ **No annual effectiveness reporting framework**  
❌ **No specific guidance for EU cross-border notifications**  
❌ **Missing annexes with forms and detailed procedures**

**Overall Assessment:** Document covers approximately **60%** of requirements. Requires substantial enrichment to achieve submission-ready status.

---

## PART 1: MANDATORY ADDITIONS

### 1.1. Front-Matter Compliance Checklist

**Location:** Add immediately after title block, before Table of Contents  
**Purpose:** Per GAP_ANALYSIS §1.3.A, each deliverable must include compliance checklist

**Content Required:**

```
## ΠΙΝΑΚΑΣ ΣΥΜΜΟΡΦΩΣΗΣ / COMPLIANCE CHECKLIST

| Κανονισμός / Regulation | Απαίτηση / Requirement | Τμήμα / Section | Σελίδα / Page |
|--------------------------|------------------------|-----------------|---------------|
| eIDAS Άρθρο 19(2) / Article 19(2) | Ενημέρωση συνδρομητών για παραβιάσεις | §2, §4, §5 | X-Y |
| ΕΕΤΤ Άρθρο 5.1 / Article 5.1 | Ειδοποίηση ΕΕΤΤ για περιστατικά ≥ Level 3 | §2.1, §4 | X-Y |
| ΕΕΤΤ Άρθρο 5.2 / Article 5.2 | Χρονικές προθεσμίες ειδοποίησης | §4 | X |
| ΕΕΤΤ Άρθρο 5.4 / Article 5.4 | Περιεχόμενο αναφοράς περιστατικού | §5, Annex A | X, Y-Z |
| ΕΕΤΤ Άρθρο 11 / Article 11 | Διαδικασία ανάκλησης και ειδοποίηση | §2.4, §5.4 | X, Y |
| GDPR Άρθρο 33 / Article 33 | Ειδοποίηση εποπτικής αρχής (72h) | §2.2, §8.2 | X, Y |
| GDPR Άρθρο 34 / Article 34 | Ειδοποίηση υποκειμένων δεδομένων | §2.2, §4, §5.3 | X-Z |
| ETSI EN 319 401 §6.1.4 | Δημόσιες ανακοινώσεις | §3.3, §6 | X-Y |
| ISO/IEC 27035-1 | Επικοινωνία περιστατικών | §8, §9 | X-Y |
| CABForum BR §4.9.3 | Ειδοποίηση παραβίασης κλειδιού | §2.4, §5.4 | X, Y |

**Επιβεβαίωση Πληρότητας:**
☑ Όλες οι υποχρεώσεις ειδοποίησης καλύπτονται
☑ Χρονικές προθεσμίες συμβατές
☑ Πρότυπα μηνυμάτων διαθέσιμα
☑ Διαδικασίες δοκιμών περιλαμβάνονται
☑ Ενσωμάτωση με Doc 07 (Incident Response)
```

### 1.2. Enhanced Document Metadata

**Add after title:**
```
**Αριθμός Εγγραφής ΕΕΤΤ / EETT Registration Number:** [EETT_REG_NUMBER]
**Κάτοχος Εγγράφου / Document Owner:** QTS Manager
**Επόμενη Αναθεώρηση / Next Review:** [SUBMISSION_DATE + 12 months]
**Σχετικά Έγγραφα / Related Documents:** 
  - Doc 07: Incident Response Plan
  - Doc 11: Revocation SOP
  - Doc 12: Recordkeeping Plan
```

### 1.3. Expanded Table of Contents

**Add sections 9-13:**
```
9. Ροή Εργασίας Ειδοποίησης / Notification Workflow
10. Κατάλογος Ενδιαφερομένων Μερών / Stakeholder Contact Lists
11. Δοκιμές και Μετρήσεις / Testing and Metrics [EXPAND EXISTING]
12. Ετήσια Αναφορά Αποτελεσματικότητας / Annual Effectiveness Report
13. Έλεγχος Εγγράφου / Document Control

**Παραρτήματα / Annexes:**
- Annex A: Τύπος Αναφοράς Περιστατικού
- Annex B: Κατάλογος Επαφών Έκτακτης Ανάγκης
- Annex C: Μήνυμα Δοκιμής Συστήματος
- Annex D: Παραδείγματα API Status Messages
```

---

## PART 2: CONTENT ENRICHMENTS BY SECTION

### Section 1: Purpose and Objectives - ENRICH

**Current:** Basic purpose statement (3 sentences)  
**Required:** Add subsections 1.3 (Scope), 1.4 (Definitions)

**1.3. Scope Table:**
```
| Υπηρεσία / Service | Service Type ID (OID) | Εφαρμογή / Applies |
|-------------------|----------------------|-------------------|
| QES - Natural Persons | [QES_NAT_OID] | ✓ |
| QES - Legal Persons | [QES_LEG_OID] | ✓ |
| QSeal | [QSEAL_OID] | ✓ |
| QTS | [QTS_OID] | ✓ |
| QWAC | [QWAC_OID] | ✓ |
```

**1.4. Key Definitions (add):**
- Συνδρομητής / Subscriber
- Αποδέκτης / Relying Party
- Ενδιαφερόμενο Μέρος / Stakeholder
- Περιστατικό / Incident
- Παραβίαση Ασφαλείας / Security Breach
- Παραβίαση Δεδομένων / Personal Data Breach
- Χωρίς Αδικαιολόγητη Καθυστέρηση / Without Undue Delay

### Section 2: Notification Triggers - EXPAND

**Current:** Simple bullet list (6 triggers)  
**Required:** Detailed subsections with examples and criteria

**Add Subsections:**

**2.1. Security Incident (Level ≥ 3)**
- Incident classification matrix table (Levels 3-5)
- Specific examples for each level:
  - Level 3: OCSP delays, minor breaches, < 10% users affected
  - Level 4: Service outages > 4h, DDoS, unauthorized access to non-HSM systems
  - Level 5: CA key compromise, rogue certificates, massive data breach
- Impact assessment criteria
- Notification requirements by level

**2.2. Personal Data Breach**
- GDPR Article 34 high-risk criteria:
  1. Sensitive data types (IDs, financial, authentication data)
  2. Volume (> 100 individuals)
  3. Vulnerability of subjects (children, elderly)
  4. Consequences (identity theft, fraud, discrimination)
- Risk assessment matrix
- Examples: "Breach of subscriber passwords = HIGH risk" vs "Breach of email addresses only = MEDIUM risk"
- Decision tree: When to notify HDPA vs data subjects

**2.3. Service Termination**
- Distinguish planned vs. unplanned
- Planned examples: Business decision, license non-renewal, merger
- Unplanned examples: Bankruptcy, license revocation, force majeure
- Special requirements for certificate revocation during termination

**2.4. Certificate Compromise**
- Subscriber key compromise scenarios (lost device, malware, theft)
- CA key compromise (Level 5 - critical)
- Suspected vs. confirmed compromise protocols
- Integration with Doc 11 (Revocation SOP)

**2.5. Planned Service Disruption**
- Threshold: > 4 hours
- Examples: HSM firmware upgrade, datacenter migration, system replacement
- Notification lead time: 7 days (routine), 30 days (major)

**2.6. Material Contract Changes**
- Price changes > 10%
- CPS modifications
- Subscriber Agreement changes
- SLA changes
- Minimum 30 days advance notice

**2.7. Regulatory Changes** (NEW)
- eIDAS regulation updates
- EETT regulation changes
- ETSI standard updates
- GDPR guideline changes
- Notification within 14 days of publication

### Section 3: Notification Methods - ENHANCE

**Current:** Simple 5-row table  
**Required:** Detailed specifications for each method

**3.1. Primary Methods - Expand Table:**
Add columns:
- Características / Characteristics
- Delivery Rate Target (Email >95%, SMS >98%, Website 100%)
- Format specifications
- Use case guidelines

**3.2. Secondary Methods - New Subsection:**
- Phone calls (high-value subscribers)
- Press releases (Level 4-5 incidents)
- Postal mail (legal notification fallback)
- Subscriber portal (in-app notifications)

**3.3. Public Channels - Detailed Specifications:**

**Website Announcements:**
- URL: [WEBSITE_URL]/announcements
- Format: Chronological list with filters (service type, severity, date)
- Retention: Archive all announcements for 7 years

**Status API - Full Specification:**
```
URL: [API_STATUS_URL]
Format: JSON, REST API
Authentication: Public (read-only), no API key required

Endpoints:
  GET /status - Overall status of all services
  GET /status/{service-type} - Specific service status
  GET /incidents - List of active incidents
  GET /incidents/{incident-id} - Incident details

Response Schema:
{
  "service": "QES_NaturalPerson",
  "status": "operational" | "degraded" | "major_outage" | "maintenance",
  "updated_at": "2024-03-15T10:30:00Z",
  "incidents": [
    {
      "id": "INC-2024-0042",
      "severity": 3,
      "title": "Increased OCSP response time",
      "status": "investigating" | "identified" | "monitoring" | "resolved",
      "started_at": "2024-03-15T09:45:00Z",
      "estimated_resolution": "2024-03-15T14:00:00Z",
      "updates": [
        {
          "timestamp": "2024-03-15T10:15:00Z",
          "message": "Engineering team investigating root cause"
        }
      ]
    }
  ]
}
```

**RSS Feed:**
- URL: [WEBSITE_URL]/feed
- Format: Atom 1.0
- Update frequency: Real-time (on incident occurrence)

**3.4. SMS Notification Guidelines - NEW SECTION:**

**Character Limits:**
- GSM-7 encoding: 160 characters (preferred)
- Unicode (Greek characters): 70 characters
- Multi-part SMS: Avoid (risk of partial delivery)

**Message Structure Template:**
```
[COMPANY_SHORT] ALERT: [Brief description max 50 chars]. Details: [short_url]. Support: [PHONE]
```

**Examples:**
```
Critical: "EETT-TSP ALERT: Cert #3F2A compromised. Revoke NOW. Details: eett.gr/a/xyz123. Call: 210-1234567"
Major: "EETT-TSP: Service disruption. OCSP delays. Details: eett.gr/a/abc456"
Maintenance: "EETT-TSP: Scheduled maintenance 20.03 02:00-06:00. No cert impact. eett.gr/m/789"
```

**Best Practices:**
- Use GSM-7 for critical alerts (avoid Greek characters for international users)
- Include incident ID for reference
- Always provide link to full details
- Include support contact number
- Test delivery to all Greek mobile operators (Cosmote, Vodafone, Wind)

### Section 4: Timing Requirements - ENHANCE TABLE

**Current:** Basic 6-row table  
**Required:** Comprehensive table with all triggers

**Add Rows:**
```
| Γεγονός / Event | Προθεσμία Χρηστών / User Deadline | Προθεσμία ΕΕΤΤ / EETT Deadline | Προθεσμία HDPA / HDPA Deadline |
|-----------------|-----------------------------------|-------------------------------|-------------------------------|
| CA Key Compromise (Level 5) | < 1 hour | < 1 hour | N/A (unless PII breach) |
| Level 4 Incident | < 24 hours | < 4 hours | N/A |
| Level 3 Incident | < 72 hours | < 24 hours | N/A |
| Personal Data Breach (High Risk) | Without undue delay (24-72h) | N/A | < 72 hours |
| Personal Data Breach (Medium/Low) | Not required | N/A | < 72 hours (log only) |
| Unplanned Termination | < 24 hours | Immediate | N/A |
| Planned Termination | ≥ 3 months advance | ≥ 3 months | N/A |
| Material Contract Changes | ≥ 30 days advance | N/A | N/A |
| Planned Maintenance (> 4h) | ≥ 7 days (routine) / ≥ 30 days (major) | N/A | N/A |
| Regulatory Changes | ≤ 14 days from publication | N/A | N/A |
| Certificate Revocation | Immediate (OCSP), < 1h (CRL) | Per incident reporting rules | N/A |
```

**Add Notes:**
- "Without undue delay" means: As soon as basic facts confirmed, typically 24-72h depending on severity
- Parallel notification: User notification does NOT wait for EETT approval
- Weekends/holidays: No exception for critical notifications (24/7 capability required)

### Section 5: Notification Templates - EXPAND SIGNIFICANTLY

**Current:** Only 2 templates (Security Incident, Data Breach)  
**Required:** Minimum 8 comprehensive templates

**Add Templates:**

**5.3. Template: CA Key Compromise (Level 5 - CRITICAL)**
```
**GR:**
**Θέμα:** ΚΡΙΣΙΜΗ ΕΙΔΟΠΟΙΗΣΗ - Διαρροή Κλειδιού Αρχής Πιστοποίησης

Αγαπητέ/ή Συνδρομητή,

Σας ενημερώνουμε για ένα κρίσιμο περιστατικό ασφαλείας:

**Τι συνέβη:** Στις [DATE/TIME], ανιχνεύσαμε ύποπτη δραστηριότητα που υποδηλώνει πιθανή διαρροή του ιδιωτικού κλειδιού της Αρχής Πιστοποίησης [CA_NAME].

**Άμεσες Ενέργειες:**
1. Έχουμε ΑΜΕΣΩΣ διακόψει την έκδοση νέων πιστοποιητικών από αυτήν την CA.
2. Έχουμε ανακαλέσει ΟΛΑ τα πιστοποιητικά που εκδόθηκαν από αυτήν την CA.
3. Έχουμε ειδοποιήσει την ΕΕΤΤ, το ENISA και τις αρχές άλλων κρατών-μελών.
4. Έχουμε εξασφαλίσει forensic εταιρεία για έρευνα του περιστατικού.

**Τι πρέπει να κάνετε ΑΜΕΣΩΣ:**
1. ΣΤΑΜΑΤΗΣΤΕ τη χρήση του πιστοποιητικού σας με serial number: [CERT_SERIAL]
2. ΜΗΝ εμπιστεύεστε υπογραφές που δημιουργήθηκαν ΜΕΤΑ την [COMPROMISE_DATE/TIME]
3. Επικοινωνήστε μαζί μας στο [EMERGENCY_PHONE] (24/7) για επανέκδοση πιστοποιητικού από νέα, ασφαλή CA.

**Υπογραφές που δημιουργήθηκαν ΠΡΙΝ την [COMPROMISE_DATE/TIME]:**
Παραμένουν έγκυρες και νομικά δεσμευτικές. Η διαρροή ΔΕΝ επηρεάζει παλαιότερες υπογραφές που δημιουργήθηκαν όταν το κλειδί ήταν ασφαλές.

**Επόμενα Βήματα:**
- Θα σας ενημερώσουμε εντός 24 ωρών με τα αποτελέσματα της έρευνας.
- Θα σας παρέχουμε ΝΕΟ πιστοποιητικό από ασφαλή CA ΔΩΡΕΑΝ εντός 48 ωρών.
- Θα δημοσιεύσουμε πλήρη αναφορά του περιστατικού εντός 7 ημερών.

Ζητούμε ταπεινά συγγνώμη για το σοβαρό αυτό περιστατικό. Η ασφάλειά σας είναι η απόλυτη προτεραιότητά μας.

Για άμεση βοήθεια: [EMERGENCY_PHONE] (24/7)
Για ερωτήσεις: [EMAIL]

Με εκτίμηση,
[LEGAL_REP_NAME]
[LEGAL_REP_TITLE]
[COMPANY_NAME]

**EN:** [English version of same content]
```

**5.4. Template: Service Termination (Planned)**
```
**GR:**
**Θέμα:** Σημαντική Ανακοίνωση - Τερματισμός Υπηρεσιών [SERVICE_NAME]

Αγαπητέ/ή Συνδρομητή,

Σας ενημερώνουμε ότι η [COMPANY_NAME] θα τερματίσει την παροχή των υπηρεσιών [SERVICE_NAME] στις [TERMINATION_DATE] (σε 3 μήνες).

**Λόγος Τερματισμού:** [REASON - π.χ., "Στρατηγική επιχειρηματική απόφαση", "Συγχώνευση με [OTHER_TSP]", "Μη ανανέωση άδειας ΕΕΤΤ"]

**Τι σημαίνει αυτό για εσάς:**
1. Τα υπάρχοντα πιστοποιητικά σας θα παραμείνουν ΕΓΚΥΡΑ έως τη λήξη τους.
2. ΔΕΝ θα εκδίδονται νέα πιστοποιητικά μετά την [CUT_OFF_DATE] (1 μήνα πριν τον τερματισμό).
3. Οι υπηρεσίες OCSP/CRL θα συνεχίσουν να λειτουργούν για [PERIOD - συνήθως "7 έτη μετά τη λήξη του τελευταίου πιστοποιητικού"].

**Διαθέσιμες Επιλογές:**
**Επιλογή 1: Μεταφορά σε άλλο TSP**
Συνιστούμε τους παρακάτω εναλλακτικούς παρόχους:
- [ALTERNATIVE_TSP_1] - [CONTACT]
- [ALTERNATIVE_TSP_2] - [CONTACT]
Θα σας βοηθήσουμε με τη διαδικασία μεταφοράς χωρίς επιπλέον χρέωση.

**Επιλογή 2: Ανάκληση και Επιστροφή Χρημάτων**
Εάν επιθυμείτε να ανακαλέσετε το πιστοποιητικό σας πριν τη λήξη, θα σας επιστρέψουμε αναλογικά το ποσό που καταβάλατε για τον υπολειπόμενο χρόνο.

**Χρονοδιάγραμμα:**
- [TODAY]: Ανακοίνωση τερματισμού
- [TODAY + 1 month]: Τελευταία ημέρα για έκδοση νέων πιστοποιητικών
- [TODAY + 2 months]: Υποβολή αιτήσεων μεταφοράς/επιστροφής
- [TODAY + 3 months]: Τερματισμός υπηρεσιών έκδοσης
- [TODAY + 3 months → 7 years]: Συνέχιση OCSP/CRL υπηρεσιών

**Εγγυήσεις:**
- Όλες οι υπογραφές/σφραγίδες που δημιουργήθηκαν με τα πιστοποιητικά μας παραμένουν νομικά έγκυρες.
- Τα αρχεία μας θα τηρηθούν για 7 έτη σύμφωνα με τον νόμο.
- Σε περίπτωση νομικής διαφοράς, τα αρχεία είναι διαθέσιμα μέσω δικαστικής απόφασης.

Για βοήθεια με τη μετάβαση: [PHONE], [EMAIL]

Σας ευχαριστούμε για την εμπιστοσύνη σας.

[LEGAL_REP_NAME]
[COMPANY_NAME]

**EN:** [English version]
```

**5.5. Template: Planned Maintenance**
**5.6. Template: Material Contract Changes**
**5.7. Template: Certificate Revocation (Individual)**
**5.8. Template: Cross-Border Incident (for other MS supervisory bodies)**
**5.9. Template: Press Release (Level 4-5 Incidents)**

### Section 6: Relying Party Communication - EXPAND

**Current:** Brief paragraph  
**Required:** Detailed communication strategy

**Add:**
- Distinction between subscribers vs. relying parties
- Relying party registration option (opt-in for notifications)
- Technical integration guide for automated status monitoring
- Sample code for API status consumption (Python, JavaScript)
- Certificate status checking best practices
- OCSP/CRL polling frequency recommendations

### Section 7: Cross-Border Considerations - ENHANCE

**Current:** 3 bullet points  
**Required:** Detailed EU coordination procedures

**Add:**
- List of EU MS supervisory bodies with contact info (reference to official list)
- Protocol for notifying other MS when Greek subscribers affected
- Protocol for notifying other MS when their subscribers use our services
- ENISA notification requirements (Level 4-5 incidents)
- EU Trusted List update coordination with EETT
- Language requirements: When to provide notifications in languages other than Greek/English
- Time zone considerations (all times in ISO 8601 format with timezone)

### Section 8: Internal Coordination - EXPAND

**Current:** 2 points (approval chain, parallel notification)  
**Required:** Comprehensive coordination procedures

**Add Subsections:**

**8.1. Approval Chain - Detailed Workflow:**
```
┌─────────────────────────────────────────────────────────────┐
│ NOTIFICATION APPROVAL WORKFLOW                              │
├─────────────────────────────────────────────────────────────┤
│ 1. Incident Manager                                         │
│    ↓ Drafts initial notification (using templates)         │
│    ↓ Classifies incident level (1-5)                       │
│    ↓ Determines affected stakeholders                      │
│                                                              │
│ 2. Legal Counsel / DPO Review (if PII involved)            │
│    ↓ Reviews for legal compliance                          │
│    ↓ Confirms GDPR requirements met                        │
│    ↓ Approves language (no admissions of liability)        │
│    ↓ MAX 2 hours for Level 5, 4 hours for Level 4          │
│                                                              │
│ 3. QTS Manager - Final Approval                            │
│    ↓ Reviews technical accuracy                            │
│    ↓ Confirms containment measures adequate                │
│    ↓ Approves notification content                         │
│    ↓ MAX 30 minutes for Level 5, 2 hours for Level 4       │
│                                                              │
│ 4. Communications Officer - Dispatch                        │
│    ↓ Sends via appropriate channels (email, SMS, web)      │
│    ↓ Monitors delivery rates                               │
│    ↓ Logs notification in system                           │
│    ↓ Confirms EETT parallel notification sent              │
│                                                              │
│ 5. Incident Manager - Follow-up                            │
│    ↓ Sends updates every 24h until resolved                │
│    ↓ Sends final resolution notification                   │
│    ↓ Archives all communications                           │
└─────────────────────────────────────────────────────────────┘
```

**8.2. Escalation Matrix:**
```
| Scenario | Action | Responsibility |
|----------|--------|---------------|
| QTS Manager unavailable | Escalate to CEO | Incident Manager |
| Legal Counsel unavailable | Use pre-approved template, notify post-facto | QTS Manager |
| All approval delayed beyond deadline | QTS Manager authorizes immediate send, documents justification | QTS Manager |
| Disagreement on notification necessity | QTS Manager makes final call, documents reasoning | QTS Manager |
```

**8.3. Communication Logs:**
- All notifications logged in [SYSTEM_NAME]
- Log fields: Incident ID, Timestamp, Channel, Recipients (count), Delivery rate, Approver, Template used
- Retention: 7 years
- Integration with Doc 12 (Recordkeeping)

**8.4. After-Action Review:**
- Within 72 hours of incident resolution
- Assess notification effectiveness:
  - Was timing adequate?
  - Was messaging clear?
  - Did users take recommended actions?
  - Any complaints or confusion?
- Document lessons learned
- Update templates/procedures as needed

---

## PART 3: NEW SECTIONS TO ADD

### Section 9: NOTIFICATION WORKFLOW (NEW)

**Content Required:**

**9.1. Decision Flowchart:**
```
┌─ Incident Detected (Doc 07) ─┐
          │
          ▼
   [Classify Severity]
     │        │        │
  Level 1-2  Level 3   Level 4-5
     │        │        │
 No user      │        │
 notification ▼        ▼
         Notify    Notify URGENT
         72h       24h (L4) / 1h (L5)
         │            │
         ▼            ▼
    [PII Breach?]  [PII Breach?]
     No  │  Yes    No  │  Yes
     │   │        │   │
     │   ▼        │   ▼
     │ GDPR       │  GDPR
     │ Notify     │  Notify
     │   │        │   │
     └───┴────────┴───┘
          │
          ▼
   [Determine Audience]
   ☐ Affected subscribers
   ☐ All subscribers
   ☐ Relying parties (public)
   ☐ EETT
   ☐ Other MS supervisory bodies
   ☐ ENISA (Level 4-5)
   ☐ Media (Level 5)
          │
          ▼
   [Select Channel(s)]
   ☐ Email (primary)
   ☐ SMS (if critical)
   ☐ Website banner
   ☐ API status update
   ☐ Phone calls (VIP)
   ☐ Press release
          │
          ▼
   [Draft Message]
   - Use template from §5
   - Fill placeholders
   - Get approvals per §8
          │
          ▼
   [Dispatch & Log]
   - Send via channels
   - Monitor delivery
   - Archive copies
          │
          ▼
   [Follow-up]
   - Send updates every 24h
   - Final resolution notice
   - After-action review
```

**9.2. Notification by Incident Type:**

| Incident Type | Primary Audience | Channels | Timing | Approval Level |
|--------------|------------------|----------|--------|----------------|
| CA Key Compromise | All subscribers + Public | Email + SMS + Website + Press Release | < 1 hour | CEO |
| Level 4 Incident | Affected subscribers + Public | Email + Website + API | < 24 hours | QTS Manager |
| Level 3 Incident | Affected subscribers | Email + API | < 72 hours | QTS Manager |
| GDPR Breach (High Risk) | Affected data subjects + HDPA | Email (+ SMS if severe) | 24-72 hours | DPO + QTS Manager |
| Service Termination | All subscribers + EETT + Public | Email + Website | ≥ 3 months advance | CEO |
| Planned Maintenance | All subscribers | Email + Website | 7-30 days advance | QTS Manager |
| Contract Changes | All subscribers | Email | ≥ 30 days advance | Legal + QTS Manager |
| Certificate Revocation | Certificate holder | Email + SMS | Immediate | RA Manager |

### Section 10: STAKEHOLDER CONTACT LISTS (NEW)

**Content Required:**

**10.1. Internal Emergency Contacts**

Template to be maintained and updated quarterly:

```
┌─────────────────────────────────────────────────────────────────┐
│ INTERNAL EMERGENCY CONTACT LIST - CONFIDENTIAL                 │
├─────────────────────────────────────────────────────────────────┤
│ Role              │ Name          │ Primary    │ Secondary      │
├───────────────────┼───────────────┼────────────┼────────────────┤
│ QTS Manager       │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ Incident Manager  │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ Communications    │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ Legal Counsel     │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ DPO               │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ CEO               │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ CTO               │ [NAME]        │ [MOBILE]   │ [EMAIL]        │
│ On-Call Engineer  │ [ROTATION]    │ [HOTLINE]  │ [EMAIL]        │
└─────────────────────────────────────────────────────────────────┘

**Availability:** All personnel must be reachable 24/7 for Level 4-5 incidents
**Update Frequency:** Quarterly review, immediate update if personnel change
**Distribution:** Stored securely, access restricted to senior management
```

**10.2. External Stakeholder Contacts**

```
┌─────────────────────────────────────────────────────────────────┐
│ EXTERNAL STAKEHOLDER CONTACT LIST                              │
├─────────────────────────────────────────────────────────────────┤
│ EETT (Hellenic Telecommunications and Post Commission)          │
│ - Incident Reporting: [EETT_INCIDENT_EMAIL]                     │
│ - TSP Supervision: [EETT_TSP_EMAIL]                             │
│ - Emergency Hotline: [EETT_PHONE] (24/7)                        │
│ - Contact Person: [EETT_CONTACT_NAME]                           │
│                                                                  │
│ Hellenic Data Protection Authority (HDPA)                       │
│ - Data Breach Notification: dpo@dpa.gr                          │
│ - Phone: +30 210 6475600                                        │
│ - Online Portal: [URL]                                          │
│                                                                  │
│ ENISA (European Union Agency for Cybersecurity)                 │
│ - Incident Reporting: incidents@enisa.europa.eu                 │
│ - Coordination: [URL]                                           │
│                                                                  │
│ CAB (Conformity Assessment Body)                                │
│ - Primary Auditor: [CAB_NAME]                                   │
│ - Contact: [CAB_EMAIL], [CAB_PHONE]                             │
│                                                                  │
│ Insurance Provider                                              │
│ - Company: [INSURANCE_COMPANY]                                  │
│ - Claims Contact: [INSURANCE_PHONE]                             │
│ - Policy Number: [POLICY_NUMBER]                                │
│                                                                  │
│ HSM Vendor Support                                              │
│ - Vendor: [HSM_VENDOR]                                          │
│ - Emergency Support: [HSM_SUPPORT_PHONE] (24/7)                 │
│                                                                  │
│ Datacenter Provider                                             │
│ - Provider: [DC_PROVIDER]                                       │
│ - NOC: [DC_NOC_PHONE] (24/7)                                    │
└─────────────────────────────────────────────────────────────────┘
```

**10.3. Subscriber Contact Database**

- Maintained in [SYSTEM_NAME]
- Fields required for each subscriber:
  - Primary email (mandatory)
  - Secondary email (optional but recommended)
  - Mobile phone for SMS (optional, required for high-value accounts)
  - Preferred language (GR/EN)
  - Contact preferences (email only / email + SMS for critical)
  - Account type (individual / high-value / government / enterprise)
- Update mechanism: Subscribers can update via portal or email to [CONTACT_UPDATE_EMAIL]
- Validation: Email validation required, phone verification recommended
- Annual contact verification campaign (send test message, request confirmation)

**10.4. Media Contact List**

For Level 4-5 incidents requiring press releases:

```
┌─────────────────────────────────────────────────────────────────┐
│ MEDIA CONTACT LIST                                              │
├─────────────────────────────────────────────────────────────────┤
│ Technology/Security Journalists:                                │
│ - [PUBLICATION_1]: [JOURNALIST_NAME] - [EMAIL]                  │
│ - [PUBLICATION_2]: [JOURNALIST_NAME] - [EMAIL]                  │
│                                                                  │
│ Press Release Distribution:                                     │
│ - General: press@[COMPANY_DOMAIN]                               │
│ - Emergency: [PR_AGENCY_CONTACT] (if using PR agency)           │
│                                                                  │
│ Social Media Accounts (for cross-posting):                      │
│ - Twitter/X: @[HANDLE]                                          │
│ - LinkedIn: [COMPANY_PAGE]                                      │
└─────────────────────────────────────────────────────────────────┘
```

### Section 11: TESTING AND METRICS (EXPAND EXISTING)

**Current Section:** Brief (3 bullet points)  
**Required:** Comprehensive testing and measurement framework

**11.1. Testing Requirements**

**11.1.1. Annual Full-Scale Drill**

**GR:** Το σύστημα ειδοποιήσεων δοκιμάζεται τουλάχιστον μία φορά ετησίως με πλήρη άσκηση προσομοίωσης.

**EN:** The notification system is tested at least once annually with a full simulation exercise.

**Drill Scenario:**
- Simulated Level 3 incident
- Full notification workflow activation
- All channels tested (email, SMS, website, API)
- All stakeholders notified (marked as "TEST MESSAGE - IGNORE")
- Approval chain followed
- Timing measured
- After-action review conducted

**Drill Schedule:** Q4 of each year (October-November)

**Success Criteria:**
- All notifications sent within target timeframes
- Delivery rates meet targets (Email >95%, SMS >98%)
- All approval steps completed correctly
- No errors in message content
- All channels functional

**11.1.2. Quarterly System Checks**

**GR:** Τριμηνιαίοι έλεγχοι λειτουργικότητας χωρίς ειδοποίηση χρηστών.

**EN:** Quarterly functionality checks without user notification.

**Tests:**
- Email server connectivity and authentication
- SMS gateway functionality (send to internal test numbers)
- Website banner system (test environment)
- API status endpoint responsiveness
- Contact database integrity (check for bounced emails, invalid numbers)
- Template placeholder validation (ensure all [PLACEHOLDERS] defined)

**11.1.3. Post-Incident Real-World Validation**

After any real notification:
- Measure actual delivery rates
- Check for bounced messages
- Review user feedback/complaints
- Assess clarity of messaging
- Verify timing compliance
- Document lessons learned

**11.2. Key Performance Indicators (KPIs)**

**11.2.1. Timeliness Metrics**

| Metric | Target | Measurement |
|--------|--------|-------------|
| Level 5 notification speed | < 1 hour from detection | Timestamp difference: Detection → First notification sent |
| Level 4 notification speed | < 24 hours from detection | Same as above |
| Level 3 notification speed | < 72 hours from detection | Same as above |
| GDPR breach notification (HDPA) | < 72 hours from awareness | Same as above |
| Approval chain completion | < 4 hours (L4-5) | Draft → Final approval timestamp |
| Follow-up update frequency | Every 24 hours until resolved | Count of updates sent |

**Target Compliance:** 100% for all notifications

**11.2.2. Delivery Rate Metrics**

| Channel | Target Delivery Rate | Measurement Method |
|---------|---------------------|-------------------|
| Email | > 95% | Email server logs (sent vs. bounced) |
| SMS | > 98% | SMS gateway delivery reports |
| Website Banner | 100% | Uptime monitoring |
| API Status | 100% | Endpoint availability monitoring |

**Remediation:** If delivery rate falls below target, investigate and resolve within 24 hours

**11.2.3. Content Quality Metrics**

| Metric | Target | Measurement |
|--------|--------|-------------|
| Placeholder errors (missing data) | 0% | Manual review + automated scan |
| User complaints about clarity | < 5% of recipients | Support ticket analysis |
| Follow-up questions requiring clarification | < 10% of recipients | Support ticket analysis |
| Bilingual consistency errors | 0 | Manual review by bilingual staff |

**11.2.4. Effectiveness Metrics**

| Metric | Target | Measurement |
|--------|--------|-------------|
| User action compliance | > 80% | For actionable notifications (e.g., "revoke certificate"), track % who complied within 48h |
| System test drill success rate | 100% | All channels functional, all steps completed |
| Annual drill completion | 1 per year | Conducted on schedule |
| Contact database accuracy | > 95% valid contacts | Bounce rate from annual verification campaign |

**11.3. Reporting and Review**

**Monthly Report:**
- Number of notifications sent (by type, by channel)
- Delivery rates (by channel)
- Average notification speed (by incident level)
- Any issues encountered and resolutions

**Quarterly Report:**
- KPI dashboard (all metrics)
- Trend analysis (are we improving?)
- System check results
- Contact database health
- Recommendations for improvements

**Annual Report:**
- Comprehensive effectiveness assessment (see §12)
- Full-scale drill results
- Year-over-year comparison
- Strategic recommendations
- Budget needs for improvements

### Section 12: ANNUAL EFFECTIVENESS REPORT (NEW)

**Content Required:**

**12.1. Report Structure**

**GR:** Ετησίως (κάθε Ιανουάριο), ο QTS Manager συντάσσει Αναφορά Αποτελεσματικότητας Ειδοποιήσεων που καλύπτει το προηγούμενο ημερολογιακό έτος.

**EN:** Annually (each January), the QTS Manager prepares an Annual Notification Effectiveness Report covering the previous calendar year.

**Report Sections:**

**1. Executive Summary**
- Total notifications sent (count by type)
- Overall compliance with timing requirements (% met deadlines)
- Average delivery rates (by channel)
- Key incidents and learnings
- Recommendations for next year

**2. Notification Activity Summary**

Table format:
```
| Notification Type | Count | Avg. Delivery Rate | Avg. Speed | Compliance % |
|-------------------|-------|-------------------|-----------|--------------|
| Level 5 Incidents | X | XX% | XXh | 100% |
| Level 4 Incidents | X | XX% | XXh | XX% |
| Level 3 Incidents | X | XX% | XXh | XX% |
| GDPR Breaches | X | XX% | XXh | XX% |
| Service Termination | X | XX% | N/A | 100% |
| Planned Maintenance | X | XX% | N/A | XX% |
| Contract Changes | X | XX% | N/A | XX% |
| Certificate Revocations | X | XX% | XXm | XX% |
| TOTAL | X | XX% | - | XX% |
```

**3. Channel Performance Analysis**

For each channel (Email, SMS, Website, API):
- Total messages sent
- Delivery success rate
- Average delivery time
- Issues encountered and resolutions
- User feedback (complaints, questions)

**4. Drill and Testing Results**

- Annual drill: Date conducted, scenario, results, pass/fail
- Quarterly checks: Summary of all 4 quarters
- Real-world validation: Lessons from actual incidents

**5. User Feedback Analysis**

- Survey results (if user satisfaction survey conducted)
- Support ticket analysis (complaints about notifications)
- Suggestions received from users
- Action items for improvement

**6. Regulatory Compliance**

- Confirmation of compliance with eIDAS Article 19(2)
- Confirmation of compliance with EETT Article 5
- Confirmation of compliance with GDPR Articles 33-34
- Any regulatory feedback received (from EETT, HDPA, CAB)

**7. Continuous Improvement**

- What worked well
- What needs improvement
- Specific action items for next year (with responsible parties and deadlines)
- Budget recommendations (e.g., upgrade SMS gateway, hire additional staff)

**8. Sign-off**

- QTS Manager signature
- Legal Counsel review (confirmation of legal compliance)
- DPO review (confirmation of GDPR compliance)
- CEO approval

**12.2. Distribution**

- Internal: Senior management, Incident Response Team, Legal, DPO
- External: Submitted to EETT as part of annual compliance reporting (if required)
- Archives: Retained for 7 years per Doc 12 (Recordkeeping Plan)

### Section 13: DOCUMENT CONTROL (NEW)

**Content Required:**

**13.1. Version History**

```
| Version | Date | Author | Changes | Approver |
|---------|------|--------|---------|----------|
| 1.0 | [SUBMISSION_DATE] | [AUTHOR_NAME] | Initial submission version | QTS Manager |
| | | | | |
```

**13.2. Review and Update Schedule**

**Scheduled Reviews:**
- **Annual Review:** Every January, following the annual effectiveness report
- **Post-Incident Review:** Within 72 hours of any Level 4-5 incident
- **Regulatory Change Review:** Within 30 days of any eIDAS, EETT, or GDPR regulatory change

**Review Triggers:**
- Major system changes (new notification channels, new services)
- CAB audit findings requiring procedure updates
- User feedback indicating confusion or gaps
- Delivery rate falling below targets

**Review Process:**
1. QTS Manager initiates review
2. Gathers input from: Incident Manager, Communications Officer, Legal, DPO
3. Drafts updates
4. Legal review (especially if liability or GDPR-related changes)
5. CEO approval for major changes
6. Version increment (major.minor format)
7. Distribution to all stakeholders
8. Training on changes (if significant)

**13.3. Related Documents**

| Document | Relationship | Link |
|----------|--------------|------|
| Doc 07: Incident Response Plan | Defines incident classification that triggers notifications | [PATH] |
| Doc 11: Revocation SOP | Defines revocation process and immediate notification | [PATH] |
| Doc 12: Recordkeeping Plan | Defines retention of notification records (7 years) | [PATH] |
| Doc 05: TSP Statement of Practices | References notification obligations | [PATH] |
| Doc 10: End-User Agreement | Subscribers agree to notification methods | [PATH] |

**13.4. Responsibilities**

| Role | Responsibilities |
|------|------------------|
| QTS Manager | Document owner, approve updates, annual review |
| Incident Manager | Implement procedures, provide feedback for improvements |
| Communications Officer | Execute notifications, maintain templates, report metrics |
| Legal Counsel | Review legal compliance, approve templates with legal implications |
| DPO | Review GDPR compliance, approve data breach notifications |
| CEO | Approve major changes, sign off on annual effectiveness report |

**13.5. Training and Awareness**

- **New Staff:** All new Incident Response Team members trained on this plan within 1 week of starting
- **Annual Refresher:** All staff involved in notifications complete annual refresher training
- **Post-Update Training:** When plan updated, all affected staff briefed within 2 weeks
- **Drill Participation:** All key personnel participate in annual drill

**13.6. Document Storage and Access**

- **Master Copy:** Stored in [DOCUMENT_MANAGEMENT_SYSTEM]
- **Access Control:** Restricted to: Senior Management, Incident Response Team, Legal, DPO, Auditors
- **External Access:** Submitted to EETT as part of eIDAS application (redacted version if necessary)
- **Backup:** Daily backups, disaster recovery plan includes critical documents

---

## PART 4: ANNEXES TO ADD

### Annex A: Incident Report Form (EETT Article 5.4)

**Content:** Full incident report template with all 23 fields per GAP_ANALYSIS §1.6 (Doc 07b enrichments)

Include:
1. Incident ID
2. TSP Name and EETT Registration Number
3. Incident Classification Level (1-5)
4. Date/Time of Incident Start
5. Date/Time of Detection
6. Date/Time of Resolution
7. Duration
8. Affected Services (checkboxes)
9. Service Type IDs (OIDs)
10. Impact Assessment (users affected, geographic scope)
11. Root Cause (technical/human/malicious/third-party/force majeure)
12. Detailed Root Cause Description
13. Timeline (table format)
14. Immediate Actions Taken
15. Corrective Actions Implemented
16. Preventive Measures
17. Financial Impact
18. Regulatory Notifications Sent (EETT, ENISA, other MS)
19. User Notifications Sent (methods, timing)
20. Lessons Learned
21. Responsible Officer (name, role, signature)
22. Attachments (forensic report, communication log)
23. Follow-up Actions (with deadlines)

### Annex B: Emergency Contact List Template

**Content:** Excel template with 4 sheets:

**Sheet 1: Internal Contacts**
- All roles from §10.1 with fields for: Name, Role, Primary Phone, Secondary Phone, Email, Backup Person

**Sheet 2: External Contacts**
- All stakeholders from §10.2 with fields for: Organization, Contact Person, Phone, Email, Purpose, SLA

**Sheet 3: Subscriber Database Schema**
- Fields: Subscriber ID, Name, Primary Email, Secondary Email, Mobile, Language Preference, Contact Preference, Account Type, Last Verified Date

**Sheet 4: Update Log**
- Track changes: Date, Changed By, Contact Updated, Reason

### Annex C: System Test Message Template

**Content:** Template for annual drill test message

**Email Template:**
```
Subject: [TEST] Annual Notification System Test - Please Ignore

Dear Subscriber,

This is a TEST of our notification system. This is NOT a real incident.

We conduct an annual test of our notification system to ensure we can reach you in case of a real emergency. Please disregard this message.

If you have any questions, please contact [SUPPORT_EMAIL].

Thank you for your understanding.

[COMPANY_NAME]
```

**SMS Template:**
```
[TEST] EETT-TSP: Annual system test. This is NOT a real incident. Ignore. Questions: [PHONE]
```

### Annex D: API Status Message Examples

**Content:** JSON examples for all status scenarios

**Example 1: Operational (No Issues)**
```json
{
  "service": "QES_NaturalPerson",
  "status": "operational",
  "updated_at": "2024-03-15T10:30:00Z",
  "incidents": [],
  "next_maintenance": "2024-04-01T02:00:00Z"
}
```

**Example 2: Degraded Performance**
```json
{
  "service": "OCSP_Responder",
  "status": "degraded",
  "updated_at": "2024-03-15T10:30:00Z",
  "incidents": [
    {
      "id": "INC-2024-0042",
      "severity": 3,
      "title": "Increased OCSP response time",
      "description": "OCSP responses taking 3-5 seconds instead of typical <1 second",
      "status": "investigating",
      "started_at": "2024-03-15T09:45:00Z",
      "estimated_resolution": "2024-03-15T14:00:00Z",
      "impact": "OCSP validation may be slower but still functional",
      "workaround": "Increase timeout settings in your application",
      "updates": [
        {
          "timestamp": "2024-03-15T10:15:00Z",
          "message": "Engineering team investigating database performance"
        }
      ]
    }
  ]
}
```

**Example 3: Major Outage**
```json
{
  "service": "Certificate_Issuance",
  "status": "major_outage",
  "updated_at": "2024-03-15T10:30:00Z",
  "incidents": [
    {
      "id": "INC-2024-0043",
      "severity": 4,
      "title": "Certificate issuance service unavailable",
      "description": "Unable to issue new certificates due to HSM connectivity issue",
      "status": "identified",
      "started_at": "2024-03-15T08:00:00Z",
      "estimated_resolution": "2024-03-15T16:00:00Z",
      "impact": "New certificate requests cannot be processed. Existing certificates unaffected.",
      "workaround": "None. Please retry after service restoration.",
      "affected_users": "All users requesting new certificates",
      "updates": [
        {
          "timestamp": "2024-03-15T09:00:00Z",
          "message": "Issue identified: Network connectivity to HSM lost"
        },
        {
          "timestamp": "2024-03-15T10:00:00Z",
          "message": "Vendor support engaged. Network team troubleshooting."
        }
      ]
    }
  ]
}
```

**Example 4: Planned Maintenance**
```json
{
  "service": "All_Services",
  "status": "maintenance",
  "updated_at": "2024-04-01T02:00:00Z",
  "incidents": [
    {
      "id": "MAINT-2024-0005",
      "severity": 0,
      "title": "Scheduled system maintenance",
      "description": "Routine database maintenance and system updates",
      "status": "in_progress",
      "started_at": "2024-04-01T02:00:00Z",
      "estimated_resolution": "2024-04-01T06:00:00Z",
      "impact": "Certificate issuance temporarily unavailable. OCSP/CRL services continue normally.",
      "advance_notice_sent": "2024-03-25T09:00:00Z",
      "updates": [
        {
          "timestamp": "2024-04-01T02:00:00Z",
          "message": "Maintenance started. ETA: 4 hours."
        }
      ]
    }
  ]
}
```

---

## PART 5: IMPLEMENTATION CHECKLIST

### 5.1. Document Enrichment Tasks

**Priority 1: MANDATORY (Complete First)**

- [ ] Add front-matter compliance checklist (§1.1)
- [ ] Add document metadata block (§1.2)
- [ ] Expand Table of Contents with new sections 9-13 (§1.3)
- [ ] Add Section 1.3: Scope with service table
- [ ] Add Section 1.4: Definitions (7 key terms)
- [ ] Expand Section 2 with detailed subsections 2.1-2.7
- [ ] Add incident classification matrix to §2.1
- [ ] Add GDPR risk assessment criteria to §2.2
- [ ] Add detailed examples for all incident types

**Priority 2: CORE CONTENT**

- [ ] Expand Section 3: Add subsections 3.1-3.4
- [ ] Add API status endpoint full specification (§3.3)
- [ ] Add SMS notification guidelines (§3.4)
- [ ] Enhance Section 4: Timing Requirements table (add 4 more rows)
- [ ] Add timing notes and special cases
- [ ] Expand Section 5: Add templates 5.3-5.9 (total 9 templates)
- [ ] Template: CA Key Compromise (§5.3)
- [ ] Template: Service Termination Planned (§5.4)
- [ ] Template: Planned Maintenance (§5.5)
- [ ] Template: Contract Changes (§5.6)
- [ ] Template: Certificate Revocation (§5.7)
- [ ] Template: Cross-Border Incident (§5.8)
- [ ] Template: Press Release (§5.9)

**Priority 3: PROCEDURES**

- [ ] Expand Section 6: Relying Party Communication
- [ ] Add technical integration guide
- [ ] Add sample code for API consumption
- [ ] Enhance Section 7: Cross-Border Considerations
- [ ] Add EU MS supervisory body coordination procedures
- [ ] Add ENISA notification protocol
- [ ] Expand Section 8: Internal Coordination
- [ ] Add detailed approval workflow diagram (§8.1)
- [ ] Add escalation matrix (§8.2)
- [ ] Add communication logs specification (§8.3)
- [ ] Add after-action review process (§8.4)

**Priority 4: NEW SECTIONS**

- [ ] Create Section 9: Notification Workflow
- [ ] Add decision flowchart (§9.1)
- [ ] Add notification by incident type table (§9.2)
- [ ] Create Section 10: Stakeholder Contact Lists
- [ ] Add internal emergency contacts template (§10.1)
- [ ] Add external stakeholder contacts (§10.2)
- [ ] Add subscriber database schema (§10.3)
- [ ] Add media contact list (§10.4)
- [ ] Expand Section 11: Testing and Metrics
- [ ] Add annual drill specification (§11.1.1)
- [ ] Add quarterly checks (§11.1.2)
- [ ] Add post-incident validation (§11.1.3)
- [ ] Add timeliness KPIs table (§11.2.1)
- [ ] Add delivery rate KPIs table (§11.2.2)
- [ ] Add content quality KPIs (§11.2.3)
- [ ] Add effectiveness KPIs (§11.2.4)
- [ ] Add reporting structure (§11.3)
- [ ] Create Section 12: Annual Effectiveness Report
- [ ] Add report structure (§12.1)
- [ ] Add distribution plan (§12.2)
- [ ] Create Section 13: Document Control
- [ ] Add version history table (§13.1)
- [ ] Add review schedule (§13.2)
- [ ] Add related documents table (§13.3)
- [ ] Add responsibilities matrix (§13.4)
- [ ] Add training requirements (§13.5)
- [ ] Add storage and access controls (§13.6)

**Priority 5: ANNEXES**

- [ ] Create Annex A: Incident Report Form (full 23-field template)
- [ ] Create Annex B: Emergency Contact List Template (Excel with 4 sheets)
- [ ] Create Annex C: System Test Message Template
- [ ] Create Annex D: API Status Message Examples (4 scenarios)

### 5.2. Quality Assurance Checks

**Before Finalizing:**

- [ ] All sections bilingual (Greek + English) with matching content
- [ ] All placeholders documented: [LEGAL_NAME_GR], [WEBSITE_URL], [API_STATUS_URL], etc.
- [ ] Cross-references valid (all section numbers referenced exist)
- [ ] Compliance checklist accurate (all sections/pages cited correctly)
- [ ] No orphaned references (e.g., "see §X" where §X doesn't exist)
- [ ] Tables formatted consistently
- [ ] Examples realistic and complete
- [ ] Technical specifications accurate (JSON syntax valid, API endpoints realistic)
- [ ] Timing requirements consistent with Doc 07 (Incident Response Plan)
- [ ] GDPR compliance verified by DPO
- [ ] Legal language reviewed by Legal Counsel
- [ ] CAB requirements addressed (notification to CAB for relevant incidents)

### 5.3. Integration Checks

**Verify integration with other documents:**

- [ ] Doc 07 incident levels match notification triggers (§2.1)
- [ ] Doc 11 revocation procedures reference notification plan
- [ ] Doc 12 recordkeeping covers notification logs (7-year retention)
- [ ] Doc 05 TSPS references notification obligations
- [ ] Doc 10 End-User Agreement references notification methods users agreed to
- [ ] Doc 02 Application lists emergency contacts that match this plan

---

## PART 6: PRIORITY ACTIONS

### Immediate Actions (Within 24 hours)

1. **Review and Approve Enrichment Plan**
   - QTS Manager reviews this enrichment summary
   - Estimates time required (recommended: 3-4 hours)
   - Assigns responsibility for document update
   - Sets deadline (recommended: within 1 week)

2. **Gather Missing Information**
   - Confirm API status endpoint URL and specifications
   - Confirm SMS gateway provider and character limit capabilities
   - Verify contact information for all stakeholders (EETT, HDPA, ENISA, CAB)
   - Obtain current emergency contact list from HR/Admin

3. **Resource Allocation**
   - Assign writer (QTS Manager or delegate)
   - Schedule Legal Counsel review time (2 hours)
   - Schedule DPO review time (1 hour for GDPR sections)
   - Book technical reviewer (CTO or delegate) for API specifications

### Short-Term Actions (Within 1 week)

4. **Execute Document Enrichment**
   - Follow Priority 1-5 checklist above
   - Use this enrichment summary as guide
   - Maintain bilingual consistency (GR/EN)
   - Save incremental versions (1.1, 1.2, etc.)

5. **Internal Review Cycle**
   - Draft completion → Self-review (check all boxes in §5.1)
   - Legal Counsel review (focus on templates 5.3-5.9, §8 approval chain)
   - DPO review (focus on §2.2 GDPR, §5.3 data breach template)
   - Technical review (focus on §3.3 API specs, §3.4 SMS guidelines)
   - Incorporate feedback

6. **Integration Verification**
   - Cross-check with Doc 07 (Incident Response Plan) - incident levels must match
   - Cross-check with Doc 11 (Revocation SOP) - revocation notification procedures aligned
   - Cross-check with Doc 12 (Recordkeeping) - 7-year retention confirmed
   - Update cross-references in other documents to point to new sections

### Medium-Term Actions (Within 2 weeks)

7. **Create Annexes**
   - Annex A: Build full incident report form (Excel template with all 23 fields)
   - Annex B: Populate emergency contact list (get real names/numbers from HR)
   - Annex C: Finalize test message templates
   - Annex D: Validate JSON examples (test in JSON validator)

8. **System Preparation**
   - Verify email server configuration supports high-volume notifications
   - Test SMS gateway (send test messages to internal numbers)
   - Implement API status endpoint if not yet exists
   - Set up website announcement banner system
   - Configure notification logging system

9. **Training Preparation**
   - Schedule training session for Incident Response Team
   - Prepare training slides covering key changes
   - Create quick reference cards for notification decision tree
   - Schedule annual drill (Q4 of current/next year)

### Long-Term Actions (Within 1 month)

10. **Final Quality Assurance**
    - Complete all QA checks in §5.2
    - Complete all integration checks in §5.3
    - Run automated placeholder check (search for "[" - should find only intentional examples)
    - Bilingual consistency review by native speakers (Greek + English)
    - Final sign-offs: QTS Manager, Legal Counsel, DPO, CEO

11. **Official Approval and Distribution**
    - Obtain official approval signatures
    - Apply document control (version 1.0, date, distribution list)
    - Distribute to all stakeholders (internal + EETT as part of application)
    - Archive master copy in document management system

12. **Post-Submission Preparation**
    - Conduct first system test (use Annex C templates)
    - Verify all contact lists current and accurate
    - Schedule first quarterly check (3 months from now)
    - Schedule first annual drill (within 12 months)
    - Set calendar reminder for annual review (12 months from now)

---

## PART 7: ESTIMATED EFFORT AND TIMELINE

### Resource Requirements

**Personnel:**
- **Primary Author:** QTS Manager or designated technical writer (12-16 hours)
- **Legal Counsel:** Review and approve legal content (2 hours)
- **DPO:** Review and approve GDPR content (1 hour)
- **Technical Reviewer:** Validate API specs and technical details (2 hours)
- **Bilingual Reviewer:** Ensure Greek/English consistency (2 hours)

**Total Effort:** 19-23 person-hours

### Recommended Timeline

**Week 1:**
- Days 1-2: Complete Priority 1 tasks (mandatory additions) - 4 hours
- Days 3-4: Complete Priority 2 tasks (core content) - 6 hours
- Day 5: Complete Priority 3 tasks (procedures) - 3 hours

**Week 2:**
- Days 1-2: Complete Priority 4 tasks (new sections) - 5 hours
- Day 3: Complete Priority 5 tasks (annexes) - 3 hours
- Days 4-5: QA checks, reviews, revisions - 4 hours

**Total Calendar Time:** 10 working days (2 weeks)

---

## PART 8: SUCCESS CRITERIA

### The enriched document is submission-ready when:

**Completeness:**
✅ All 13 main sections present and comprehensive  
✅ All 4 annexes completed with realistic content  
✅ Compliance checklist maps to all regulatory requirements  
✅ Minimum 9 notification templates provided (currently 2)  
✅ All notification triggers have detailed criteria and examples  
✅ All notification methods have detailed specifications  
✅ Timing requirements comprehensive and compliant  
✅ Testing and metrics framework robust  
✅ Annual reporting structure defined  
✅ Document control procedures in place

**Quality:**
✅ Bilingual content consistent (Greek/English match)  
✅ No placeholder errors (all [BRACKETS] defined)  
✅ Cross-references valid (all §X citations exist)  
✅ Technical specifications accurate (JSON valid, APIs realistic)  
✅ Legal language reviewed and approved  
✅ GDPR compliance verified by DPO  
✅ Examples realistic and complete

**Integration:**
✅ Incident levels align with Doc 07  
✅ Revocation procedures align with Doc 11  
✅ Recordkeeping requirements align with Doc 12  
✅ All cross-document references updated

**Regulatory Compliance:**
✅ eIDAS Article 19(2) fully addressed  
✅ EETT Article 5 (all subsections) fully addressed  
✅ EETT Article 11 revocation notification addressed  
✅ GDPR Articles 33-34 fully addressed  
✅ ETSI EN 319 401 §6.1.4 addressed  
✅ ISO/IEC 27035-1 communication requirements addressed  
✅ CABForum BR §4.9.3 addressed

**Operational Readiness:**
✅ Procedures implementable by operations team  
✅ Contact lists can be populated with real data  
✅ Systems ready to support notification channels  
✅ Training materials prepared  
✅ Testing schedule established

---

## PART 9: RISK MITIGATION

### Risks of NOT Enriching Document

**Regulatory Risks:**
- ❌ EETT may reject application as incomplete (notification procedures inadequate)
- ❌ CAB may issue major non-conformity (insufficient notification procedures per ETSI EN 319 401)
- ❌ HDPA may find GDPR non-compliance (inadequate data breach notification procedures)
- ❌ Liability exposure if incident occurs and notification inadequate

**Operational Risks:**
- ❌ Confusion during real incidents (no clear procedures)
- ❌ Delayed notifications (no clear timing requirements or approval chain)
- ❌ Inconsistent messaging (insufficient templates)
- ❌ Missed stakeholder notifications (no comprehensive contact lists)
- ❌ System failures (no testing procedures in place)

**Reputational Risks:**
- ❌ Poor crisis communication damages trust
- ❌ Users feel uninformed or misled
- ❌ Media coverage highlights inadequate transparency
- ❌ Industry peers view organization as unprofessional

### Benefits of Full Enrichment

**Regulatory Benefits:**
✅ EETT approval more likely (comprehensive procedures)  
✅ CAB audit passes without major findings  
✅ GDPR compliance demonstrated  
✅ Reduced liability (due diligence shown)

**Operational Benefits:**
✅ Clear procedures reduce incident response time  
✅ Pre-approved templates speed communication  
✅ Contact lists ensure all stakeholders reached  
✅ Testing identifies issues before real incidents  
✅ Metrics enable continuous improvement

**Business Benefits:**
✅ Enhanced reputation for transparency  
✅ User confidence maintained during incidents  
✅ Competitive advantage (professional crisis management)  
✅ Insurance premiums potentially lower (robust procedures)

---

## PART 10: CONCLUSION AND NEXT STEPS

### Summary

The current User Notification Plan (Doc 08) provides a **solid foundation** covering approximately **60% of requirements**. However, substantial enrichment is necessary to achieve **submission-ready status** and ensure the document meets:

- eIDAS Regulation (EU) 910/2014, Article 19(2)
- EETT Regulation Articles 5 & 11
- GDPR Articles 33-34
- ETSI EN 319 401 requirements
- CABForum guidelines
- GAP_ANALYSIS recommendations

### Enrichment Impact

**Current State:** 8 pages, 2 templates, basic procedures  
**Target State:** 35-40 pages, 9 templates, comprehensive procedures with annexes

**Estimated Effort:** 19-23 person-hours over 2 weeks  
**Benefit:** Submission-ready document, regulatory compliance, operational excellence

### Immediate Next Step

**Decision Required:** Approve this enrichment plan and allocate resources

**If Approved:**
1. Assign primary author (QTS Manager recommended)
2. Schedule review time with Legal Counsel, DPO, Technical Reviewer
3. Begin Priority 1 tasks immediately (front-matter, expanded triggers, detailed methods)
4. Target completion: 2 weeks from approval

**If Not Approved / Deferred:**
- Document current state as "Draft - Requires Further Development"
- Flag to EETT that notification procedures are still being finalized
- Accept risk of delayed approval or CAB findings
- Plan to complete enrichment post-submission (if EETT allows conditional approval)

---

## APPENDIX: QUICK REFERENCE

### Critical Missing Elements (Top 10)

1. **Front-matter compliance checklist** - Add immediately
2. **Additional templates (7 more)** - CA compromise, termination, maintenance, etc.
3. **SMS notification guidelines** - Character limits, encoding, examples
4. **API status endpoint specs** - Full JSON schema and endpoints
5. **Notification workflow flowchart** - Visual decision tree
6. **Stakeholder contact lists** - Internal, external, media templates
7. **Annual drill procedures** - Full specification for testing
8. **KPI framework** - Measurable metrics for effectiveness
9. **Annual effectiveness report structure** - Reporting template
10. **Annexes with forms** - Incident report, contacts, test messages, API examples

### Page Count Estimate by Section

| Section | Current Pages | Target Pages | Delta |
|---------|---------------|--------------|-------|
| Front Matter | 1 | 2 | +1 |
| §1 Purpose & Objectives | 1 | 2 | +1 |
| §2 Notification Triggers | 1 | 5 | +4 |
| §3 Notification Methods | 1 | 4 | +3 |
| §4 Timing Requirements | 1 | 2 | +1 |
| §5 Templates | 2 | 10 | +8 |
| §6 Relying Party Comm | 0.5 | 2 | +1.5 |
| §7 Cross-Border | 0.5 | 2 | +1.5 |
| §8 Internal Coordination | 0.5 | 3 | +2.5 |
| §9 Workflow (NEW) | 0 | 3 | +3 |
| §10 Contact Lists (NEW) | 0 | 3 | +3 |
| §11 Testing & Metrics | 0.5 | 3 | +2.5 |
| §12 Annual Report (NEW) | 0 | 2 | +2 |
| §13 Document Control (NEW) | 0 | 2 | +2 |
| Annexes | 0 | 6 | +6 |
| **TOTAL** | **8** | **35-40** | **+27-32** |

---

## DOCUMENT CONTROL

**Enrichment Summary Prepared By:** [ANALYST_NAME]  
**Date:** [CURRENT_DATE]  
**Version:** 1.0  
**Status:** Ready for QTS Manager Review and Approval  

**Approval Required:**
- [ ] QTS Manager - Approves enrichment plan and allocates resources
- [ ] CEO - Approves budget/timeline (if significant resource commitment required)

**Distribution:**
- QTS Manager (decision maker)
- Project Manager (for timeline planning)
- Primary Author (once assigned)
- Legal Counsel (for awareness)
- DPO (for awareness)

**Next Review:** Upon completion of enrichment (target: 2 weeks from approval)

---

**END OF ENRICHMENT SUMMARY**

**Status:** ✅ COMPLETE - Ready for Implementation  
**Recommendation:** PROCEED with full enrichment per this plan  
**Priority:** HIGH - Required for submission without risk of rejection
