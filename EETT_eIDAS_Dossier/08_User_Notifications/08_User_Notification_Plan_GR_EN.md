# ΣΧΕΔΙΟ ΕΙΔΟΠΟΙΗΣΗΣ ΧΡΗΣΤΩΝ / USER NOTIFICATION PLAN

**Εταιρεία / Company:** [LEGAL_NAME_GR] / [LEGAL_NAME_EN]  
**Αριθμός Εγγραφής ΕΕΤΤ / EETT Registration Number:** [EETT_REG_NUMBER]  
**Έκδοση / Version:** 1.0  
**Ημερομηνία / Date:** [SUBMISSION_DATE]  
**Ταξινόμηση / Classification:** Εμπιστευτικό / Confidential  
**Κάτοχος Εγγράφου / Document Owner:** QTS Manager  
**Επόμενη Αναθεώρηση / Next Review:** [SUBMISSION_DATE + 12 months]

---

## ΠΙΝΑΚΑΣ ΣΥΜΜΟΡΦΩΣΗΣ / COMPLIANCE CHECKLIST

| Κανονισμός / Regulation | Απαίτηση / Requirement | Τμήμα / Section | Σελίδα / Page |
|--------------------------|------------------------|-----------------|---------------|
| **eIDAS Άρθρο 19(2) / Article 19(2)** | Ενημέρωση συνδρομητών και τρίτων για παραβιάσεις ασφαλείας / Information to subscribers and third parties about security breaches | §2, §4, §5 | 3-8 |
| **ΕΕΤΤ Κανονισμός Άρθρο 5 / EETT Regulation Article 5** | Υποχρεώσεις αναφοράς περιστατικών και ειδοποίησης χρηστών / Incident reporting and user notification obligations | §2, §4, §7, §8 | 3-12 |
| **ΕΕΤΤ Άρθρο 5.1 / Article 5.1** | Ενημέρωση ΕΕΤΤ για περιστατικά ≥ Επίπεδο 3 / Notify EETT of incidents ≥ Level 3 | §2.1, §4 | 3-4, 6 |
| **ΕΕΤΤ Άρθρο 5.2 / Article 5.2** | Χρονικές προθεσμίες ειδοποίησης / Notification timing requirements | §4 | 6-7 |
| **ΕΕΤΤ Άρθρο 11 / Article 11** | Διαδικασία ανάκλησης και ειδοποίηση / Revocation procedures and notification | §2.4, §5.4 | 4, 9 |
| **GDPR Άρθρο 33 / Article 33** | Ειδοποίηση Αρχής Προστασίας Δεδομένων / Notification to supervisory authority | §2.2, §8.2 | 4, 12 |
| **GDPR Άρθρο 34 / Article 34** | Ειδοποίηση υποκειμένων δεδομένων / Communication to data subjects | §2.2, §4, §5.3 | 4, 6-7, 8 |
| **ETSI EN 319 401 §6.1.4** | Δημόσιες ανακοινώσεις / Public announcements | §3.3, §6 | 5-6, 9-10 |
| **ISO/IEC 27035-1** | Επικοινωνία περιστατικών / Incident communication | §7, §8 | 10-12 |
| **CABForum BR §4.9.3** | Ειδοποίηση παραβίασης κλειδιού / Key compromise notification | §2.4, §5.4 | 4, 9 |

**Επιβεβαίωση Πληρότητας / Completeness Confirmation:**  
☑ Όλες οι υποχρεώσεις ειδοποίησης από eIDAS & ΕΕΤΤ καλύπτονται / All eIDAS & EETT notification obligations covered  
☑ Χρονικές προθεσμίες συμβατές με κανονισμούς / Timing requirements compliant with regulations  
☑ Πρότυπα μηνυμάτων διαθέσιμα για όλα τα σενάρια / Message templates available for all scenarios  
☑ Διαδικασίες δοκιμών και ελέγχου περιλαμβάνονται / Testing and audit procedures included

---

## ΠΙΝΑΚΑΣ ΠΕΡΙΕΧΟΜΕΝΩΝ / TABLE OF CONTENTS

1. [Σκοπός και Στόχοι / Purpose and Objectives](#1)
2. [Ενεργοποιητές Ειδοποίησης / Notification Triggers](#2)
3. [Μέθοδοι Ειδοποίησης / Notification Methods](#3)
4. [Χρονικές Προθεσμίες / Timing Requirements](#4)
5. [Πρότυπα Ειδοποιήσεων / Notification Templates](#5)
6. [Επικοινωνία με Αποδέκτες / Relying Party Communication](#6)
7. [Διασυνοριακές Εκτιμήσεις / Cross-Border Considerations](#7)
8. [Εσωτερικός Συντονισμός / Internal Coordination](#8)
9. [Ροή Εργασίας Ειδοποίησης / Notification Workflow](#9)
10. [Κατάλογος Ενδιαφερομένων Μερών / Stakeholder Contact Lists](#10)
11. [Δοκιμές και Μετρήσεις / Testing and Metrics](#11)
12. [Ετήσια Αναφορά Αποτελεσματικότητας / Annual Effectiveness Report](#12)
13. [Έλεγχος Εγγράφου / Document Control](#13)

---

## 1. ΣΚΟΠΟΣ ΚΑΙ ΣΤΟΧΟΙ / PURPOSE AND OBJECTIVES {#1}

### 1.1. Purpose / Σκοπός

**GR:** Το παρόν σχέδιο καθορίζει τις διαδικασίες, τις μεθόδους, τα πρότυπα και τις ευθύνες για την έγκαιρη, ακριβή και αποτελεσματική ενημέρωση των συνδρομητών, των αποδεκτών (relying parties) και άλλων ενδιαφερομένων μερών σε περίπτωση γεγονότων που επηρεάζουν την ασφάλεια, την ακεραιότητα ή τη διαθεσιμότητα των παρεχόμενων υπηρεσιών εμπιστοσύνης.

**EN:** This plan defines the procedures, methods, templates, and responsibilities for the timely, accurate, and effective notification of subscribers, relying parties, and other stakeholders in the event of occurrences that affect the security, integrity, or availability of the provided trust services.

### Πρότυπα (Σύνοψη) / Templates (Quick Reference)

A) Ειδοποίηση Περιστατικού (Επίπεδο ≥3) / Incident Notice (Level ≥3)
- Reference: 07_Risk_And_Incidents (IRP §6.1–6.5)
- Channels: Email, Website banner, Press Release (if L4/L5)
- Content (GR):
  - Τίτλος: «Ενημέρωση Περιστατικού Ασφαλείας – [Ημερομηνία]»
  - Περιγραφή συμβάντος (συνοπτικά), επηρεαζόμενες υπηρεσίες, οδηγίες για χρήστες (εάν απαιτούνται)
  - Γραμμή ανάκλησης 24×7: [REVOCATION_HOTLINE] — OCSP: [OCSP_URL_1] — CRL: [CRL_URL_1]
  - Επικοινωνία: [PUBLIC_EMAIL], [PUBLIC_PHONE]
- Content (EN):
  - Title: “Security Incident Notice – [Date]”
  - Brief description of the event, affected services, user actions (if any)
  - 24×7 Revocation Hotline: [REVOCATION_HOTLINE] — OCSP: [OCSP_URL_1] — CRL: [CRL_URL_1]
  - Contact: [PUBLIC_EMAIL], [PUBLIC_PHONE]

B) Γνωστοποίηση Μεταβολής (Άρθρο 3.5) / Change Notice (Article 3.5)
- Reference: 01_Registry/01b_Change_Notice_Template.md
- Channels: Email to EETT, Website (if public change), Direct subscriber email (if relevant)
- Content (GR/EN):
  - Nature of change, effective date, impact, mitigation
  - Cross-reference to updated documents (TSP Policy §x, TSPS §y)
  - Contact: [CONTACT_EMAIL], [CONTACT_PHONE]

C) Ειδοποίηση Τερματισμού (Άρθρο 7) / Termination Notice (Article 7)
- Reference: 09_Service_Termination (SLAs & Custodian access)
- Channels: Formal EETT letter, Website, Press (if required), Direct subscriber communication
- Content (GR/EN):
  - Effective date, service wind-down schedule, where to access revocation/status info
  - Custodian access mechanisms (API/Web) for 7-year period (see 09 Annex A SLAs)
  - Contact: [PUBLIC_EMAIL], [PUBLIC_PHONE]

### 1.2. Objectives / Στόχοι

**GR:** Οι κύριοι στόχοι είναι:

1. **Νομική Συμμόρφωση:** Πλήρης συμμόρφωση με τις νομικές υποχρεώσεις που απορρέουν από:
   - Κανονισμό eIDAS (EU) 910/2014, Άρθρο 19(2)
   - Κανονισμό ΕΕΤΤ για Πάροχους Υπηρεσιών Εμπιστοσύνης, Άρθρα 5, 11
   - Γενικό Κανονισμό Προστασίας Δεδομένων (GDPR) (EU) 2016/679, Άρθρα 33-34
   - ETSI EN 319 401 (Γενικές απαιτήσεις πολιτικής για TSP)

2. **Ελαχιστοποίηση Κινδύνου:** Άμεση ενημέρωση των χρηστών με σαφείς οδηγίες για μείωση της έκθεσής τους σε κινδύνους (π.χ., ανάκληση πιστοποιητικού, αλλαγή κωδικών).

3. **Διατήρηση Εμπιστοσύνης:** Διαφανής και υπεύθυνη επικοινωνία για διατήρηση της εμπιστοσύνης στο οικοσύστημα υπηρεσιών εμπιστοσύνης.

4. **Προστασία Δημόσιου Συμφέροντος:** Ενημέρωση ευρύτερου κοινού για περιστατικά με ευρύ αντίκτυπο (Επίπεδο 4-5).

**EN:** The main objectives are:

1. **Legal Compliance:** Full compliance with legal obligations arising from:
   - eIDAS Regulation (EU) 910/2014, Article 19(2)
   - EETT Regulation for Trust Service Providers, Articles 5, 11
   - General Data Protection Regulation (GDPR) (EU) 2016/679, Articles 33-34
   - ETSI EN 319 401 (General policy requirements for TSPs)

2. **Risk Minimization:** Immediate notification to users with clear instructions to reduce their exposure to risks (e.g., certificate revocation, password changes).

3. **Maintaining Trust:** Transparent and responsible communication to maintain trust in the trust services ecosystem.

4. **Public Interest Protection:** Notification to the broader public for incidents with wide impact (Level 4-5).

### 1.3. Scope / Εύρος Εφαρμογής

**GR:** Το σχέδιο εφαρμόζεται σε όλες τις υπηρεσίες εμπιστοσύνης που παρέχει η [LEGAL_NAME_GR]:
- Qualified Electronic Signatures (QES) - φυσικά πρόσωπα
- Qualified Electronic Signatures (QES) - νομικά πρόσωπα
- Qualified Electronic Seals (QSeal)
- Qualified Timestamps (QTS)
- Qualified Website Authentication Certificates (QWAC)
- [Προσθέστε άλλες υπηρεσίες εάν εφαρμόζεται]

**EN:** This plan applies to all trust services provided by [LEGAL_NAME_EN]:
- Qualified Electronic Signatures (QES) - natural persons
- Qualified Electronic Signatures (QES) - legal persons
- Qualified Electronic Seals (QSeal)
- Qualified Timestamps (QTS)
- Qualified Website Authentication Certificates (QWAC)
- [Add other services if applicable]

---

## 2. ΕΝΕΡΓΟΠΟΙΗΤΕΣ ΕΙΔΟΠΟΙΗΣΗΣ / NOTIFICATION TRIGGERS {#2}

**GR:** Η υποχρέωση ειδοποίησης χρηστών ενεργοποιείται από τα παρακάτω γεγονότα:

**EN:** The user notification obligation is triggered by the following events:

### 2.1. Security Incident (Level ≥ 3) / Περιστατικό Ασφαλείας (Επίπεδο ≥ 3)

**GR:** Οποιοδήποτε περιστατικό που ταξινομείται ως **Σημαντικό (Επίπεδο 3)**, **Μείζον (Επίπεδο 4)** ή **Κρίσιμο (Επίπεδο 5)** σύμφωνα με το Σχέδιο Αντίδρασης σε Περιστατικά (Doc 07).

**Παραδείγματα:**
- Μη εξουσιοδοτημένη πρόσβαση σε συστήματα παραγωγής
- Απώλεια διαθεσιμότητας υπηρεσιών > 4 ώρες
- Παραβίαση δικτυακής ασφάλειας (DDoS, malware)
- Αστοχία HSM ή κρυπτογραφικού εξοπλισμού
- Παραβίαση διαδικασιών έκδοσης πιστοποιητικών

**EN:** Any incident classified as **Significant (Level 3)**, **Major (Level 4)**, or **Critical (Level 5)** according to the Incident Response Plan (Doc 07).

**Examples:**
- Unauthorized access to production systems
- Service availability loss > 4 hours
- Network security breach (DDoS, malware)
- HSM or cryptographic equipment failure
- Certificate issuance procedure violation

### 2.2. Personal Data Breach / Παραβίαση Δεδομένων Προσωπικού Χαρακτήρα

**GR:** Οποιαδήποτε παραβίαση δεδομένων προσωπικού χαρακτήρα που ενέχει **υψηλό κίνδυνο** για τα δικαιώματα και τις ελευθερίες των φυσικών προσώπων, σύμφωνα με το GDPR Άρθρο 34.

**Κριτήρια υψηλού κινδύνου:**
- Διαρροή ευαίσθητων δεδομένων (π.χ., αριθμοί ταυτότητας, οικονομικά στοιχεία)
- Διαρροή δεδομένων αυθεντικοποίησης (passwords, PINs, biometric data)
- Μεγάλος αριθμός επηρεαζόμενων ατόμων (> 100)
- Διαρροή που μπορεί να οδηγήσει σε κλοπή ταυτότητας ή απάτη

**Προθεσμία Ειδοποίησης HDPA:** Εντός 72 ωρών από την επίγνωση (GDPR Άρθρο 33)  
**Προθεσμία Ειδοποίησης Υποκειμένων:** Χωρίς αδικαιολόγητη καθυστέρηση (GDPR Άρθρο 34)

**EN:** Any personal data breach that poses a **high risk** to the rights and freedoms of natural persons, according to GDPR Article 34.

**High risk criteria:**
- Breach of sensitive data (e.g., ID numbers, financial information)
- Breach of authentication data (passwords, PINs, biometric data)
- Large number of affected individuals (> 100)
- Breach that may lead to identity theft or fraud

**HDPA Notification Deadline:** Within 72 hours of awareness (GDPR Article 33)  
**Data Subject Notification Deadline:** Without undue delay (GDPR Article 34)

### 2.3. Service Termination / Τερματισμός Υπηρεσιών

**GR:** Προγραμματισμένος ή απρογραμμάτιστος τερματισμός λειτουργίας υπηρεσιών εμπιστοσύνης.

**Προγραμματισμένος (Planned):**
- Επιχειρηματική απόφαση για παύση παροχής υπηρεσιών
- Λήξη άδειας λειτουργίας (μη ανανέωση)
- Εξαγορά/συγχώνευση με άλλο TSP

**Απρογραμμάτιστος (Unplanned):**
- Οικονομική αδυναμία (πτώχευση, αφερεγγυότητα)
- Ανάκληση άδειας από ΕΕΤΤ
- Καταστροφικό γεγονός (force majeure)

**EN:** Planned or unplanned cessation of trust service operations.

**Planned:**
- Business decision to cease service provision
- License expiry (non-renewal)
- Acquisition/merger with another TSP

**Unplanned:**
- Financial inability (bankruptcy, insolvency)
- License revocation by EETT
- Catastrophic event (force majeure)

### 2.4. Certificate Compromise / Διαρροή Πιστοποιητικού

**GR:** Επιβεβαιωμένη ή ύποπτη διαρροή ιδιωτικού κλειδιού:

**Διαρροή Κλειδιού Συνδρομητή:**
- Απώλεια/κλοπή συσκευής (smart card, USB token, laptop)
- Κακόβουλο λογισμικό σε σταθμό εργασίας συνδρομητή
- Αναφορά συνδρομητή για ύποπτη χρήση

**Διαρροή Κλειδιού CA (Κρίσιμο - Επίπεδο 5):**
- Μη εξουσιοδοτημένη πρόσβαση σε HSM
- Αποκάλυψη key ceremony audit logs που υποδηλώνουν παραβίαση
- Ανίχνευση αναρμόδιων πιστοποιητικών (rogue certificates)

**EN:** Confirmed or suspected compromise of a private key:

**Subscriber Key Compromise:**
- Loss/theft of device (smart card, USB token, laptop)
- Malware on subscriber workstation
- Subscriber report of suspicious usage

**CA Key Compromise (Critical - Level 5):**
- Unauthorized HSM access
- Key ceremony audit log disclosure indicating compromise
- Detection of rogue certificates

### 2.5. Planned Service Disruption / Προγραμματισμένη Διακοπή Υπηρεσίας

**GR:** Προγραμματισμένη διακοπή για συντήρηση ή αναβάθμιση με διάρκεια **> 4 ώρες**.

**Παραδείγματα:**
- Αναβάθμιση HSM firmware
- Μετανάστευση datacenter
- Αντικατάσταση κρίσιμων συστημάτων
- Εφαρμογή ασφαλειακών patches που απαιτούν επανεκκίνηση

**Ειδοποίηση:** Τουλάχιστον **7 ημέρες πριν** για κανονική συντήρηση, **30 ημέρες** για μείζονες αλλαγές.

**EN:** Planned outage for maintenance or upgrades with duration **> 4 hours**.

**Examples:**
- HSM firmware upgrade
- Datacenter migration
- Critical system replacement
- Security patch application requiring restart

**Notification:** At least **7 days in advance** for routine maintenance, **30 days** for major changes.

### 2.6. Material Contract Changes / Ουσιαστικές Αλλαγές Σύμβασης

**GR:** Σημαντικές αλλαγές που επηρεάζουν τους όρους παροχής υπηρεσιών:

- Αλλαγή τιμών/τελών (> 10% αύξηση)
- Τροποποίηση Πολιτικής Πιστοποιητικών (CPS)
- Αλλαγή Συμφωνίας Συνδρομητή (Subscriber Agreement)
- Αλλαγή επιπέδων εξυπηρέτησης (SLA)
- Νέοι όροι ευθύνης ή αποζημίωσης

**Προθεσμία:** Τουλάχιστον **30 ημέρες πριν** την ισχύ των αλλαγών.

**EN:** Significant changes affecting service provision terms:

- Price/fee changes (> 10% increase)
- Certificate Practice Statement (CPS) modification
- Subscriber Agreement changes
- Service Level Agreement (SLA) changes
- New liability or compensation terms

**Deadline:** At least **30 days before** changes take effect.

### 2.7. Regulatory Changes / Κανονιστικές Αλλαγές

**GR:** Αλλαγές σε νομοθεσία ή κανονισμούς που επηρεάζουν τις υπηρεσίες:

- Νέες απαιτήσεις eIDAS (αναθεωρήσεις κανονισμού)
- Αλλαγές στον Κανονισμό ΕΕΤΤ
- Νέα τεχνικά πρότυπα (ETSI EN updates)
- Αλλαγές GDPR guidelines

**Προθεσμία:** Εντός **14 ημερών** από τη δημοσίευση των αλλαγών.

**EN:** Changes in legislation or regulations affecting services:

- New eIDAS requirements (regulation revisions)
- Changes to EETT Regulation
- New technical standards (ETSI EN updates)
- GDPR guideline changes

**Deadline:** Within **14 days** of change publication.

---

## 3. ΜΕΘΟΔΟΙ ΕΙΔΟΠΟΙΗΣΗΣ / NOTIFICATION METHODS {#3}

### 3.1. Primary Methods / Κύριες Μέθοδοι

| Μέθοδος / Method | Σκοπός / Purpose | Χαρακτηριστικά / Characteristics | Ποσοστό Παράδοσης / Delivery Rate Target |
|------------------|------------------|----------------------------------|------------------------------------------|
| **Email** | Κύρια μέθοδος για όλες τις λεπτομερείς ειδοποιήσεις / Primary method for all detailed notifications | HTML + Plain Text, ψηφιακή υπογραφή email / HTML + Plain Text, digitally signed email | > 95% |
| **SMS** | Κρίσιμες ειδοποιήσεις που απαιτούν άμεση δράση / Critical alerts requiring immediate action | Μέγιστο 160 χαρακτήρες (GSM-7), link σε λεπτομέρειες / Max 160 chars (GSM-7), link to details | > 98% |
| **Ανακοίνωση Ιστοσελίδας / Website Banner** | Δημόσιες ανακοινώσεις για όλους / Public announcements for everyone | Ορατό banner στην αρχική σελίδα, archive στο /announcements / Visible banner on homepage, archive at /announcements | 100% |
| **API Status Endpoint** | Αυτοματοποιημένη παρακολούθηση από συστήματα χρηστών / Automated monitoring by user systems | JSON format, HTTP status codes, real-time / JSON format, HTTP status codes, real-time | 100% |
| **RSS/Atom Feed** | Συνδρομή για αυτόματες ενημερώσεις / Subscription for automatic updates | XML feed στο [WEBSITE_URL]/feed / XML feed at [WEBSITE_URL]/feed | N/A |

### 3.2. Secondary Methods / Δευτερεύουσες Μέθοδοι

| Μέθοδος / Method | Σκοπός / Purpose | Χρήση / Usage |
|------------------|------------------|---------------|
| **Τηλεφωνική Κλήση / Phone Call** | Προσωπική ενημέρωση συνδρομητών υψηλής αξίας / Personal notification for high-value subscribers | Κυβερνητικοί οργανισμοί, τράπεζες, επιχειρήσεις με > 100 πιστοποιητικά / Government, banks, enterprises with > 100 certificates |
| **Δελτίο Τύπου / Press Release** | Περιστατικά με ευρύ δημόσιο αντίκτυπο (Επίπεδο 4-5) / Incidents with broad public impact (Level 4-5) | Αποστολή σε ΜΜΕ, δημοσίευση στην ιστοσελίδα / Sent to media, published on website |
| **Ταχυδρομική Επιστολή / Postal Mail** | Επίσημη νομική ειδοποίηση (fallback) / Formal legal notification (fallback) | Όταν email/SMS αποτυγχάνουν ή για νομικές απαιτήσεις / When email/SMS fail or for legal requirements |
| **Πύλη Συνδρομητή / Subscriber Portal** | In-app ειδοποιήσεις για ενεργούς χρήστες / In-app notifications for active users | Login notification, dashboard alerts / Login notification, dashboard alerts |

### 3.3. Public Channels / Δημόσια Κανάλια

**GR:** Για επικοινωνία με Αποδέκτες (Relying Parties) που δεν είναι εγγεγραμμένοι συνδρομητές:

1. **Website Announcements Page:**  
   URL: **[WEBSITE_URL]/announcements**  
   Format: Χρονολογικά, με φίλτρα (service type, severity, date)

2. **Status API:**  
   URL: **[API_STATUS_URL]**  
   Format: JSON, REST API  
   Endpoints:
   - `GET /status` - Συνολική κατάσταση όλων των υπηρεσιών
   - `GET /status/{service-type}` - Κατάσταση συγκεκριμένης υπηρεσίας
   - `GET /incidents` - Λίστα ενεργών περιστατικών
   - `GET /incidents/{incident-id}` - Λεπτομέρειες περιστατικού

   **Response Schema:**
   ```json
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

3. **RSS Feed:**  
   URL: **[WEBSITE_URL]/feed**  
   Format: Atom 1.0  
   Content: Όλες οι δημόσιες ανακοινώσεις

**EN:** For communication with Relying Parties who are not registered subscribers:

1. **Website Announcements Page:**  
   URL: **[WEBSITE_URL]/announcements**  
   Format: Chronological, with filters (service type, severity, date)

2. **Status API:**  
   URL: **[API_STATUS_URL]**  
   Format: JSON, REST API  
   [Same endpoint structure as Greek version]

3. **RSS Feed:**  
   URL: **[WEBSITE_URL]/feed**  
   Format: Atom 1.0  
   Content: All public announcements

### 3.4. SMS Notification Guidelines / Οδηγίες SMS Ειδοποιήσεων

**GR:** Λόγω περιορισμού χαρακτήρων (160 chars GSM-7 ή 70 chars Unicode):

**Δομή SMS:**
```
[COMPANY_SHORT_NAME] ALERT: [Brief description max 50 chars]. Details: [short_url]. Support: [PHONE]
```

**Παραδείγματα:**
- **Critical:** `EETT-TSP ALERT: Cert #3F2A compromised. Revoke NOW. Details: eett.gr/a/xyz123. Call: 210-1234567`
- **Major:** `EETT-TSP: Service disruption detected. OCSP delays. Details: eett.gr/a/abc456`
- **Maintenance:** `EETT-TSP: Scheduled maintenance 20.03 02:00-06:00. No impact to valid certs. Info: eett.gr/m/789`

**Character Encoding:**
- Προτίμηση GSM-7 (160 chars) έναντι Unicode (70 chars)
- Αποφυγή Ελληνικών χαρακτήρων σε critical SMS (διεθνείς χρήστες, encoding issues)
- URL shortener με domain ownership (eett.gr