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
- Χρήση short URL με ιδιόκτητο domain (π.χ. `ntp.example.gr`) και TLS
- Αποθήκευση του συνδέσμου γεγονότος στο Doc 12 (Recordkeeping) για αναδρομή

**Έλεγχοι Παράδοσης / Delivery Controls**
- Χρήση SMS gateway με SLA ≥ 99.9% και υποστηριζόμενο Sender ID «[COMPANY_SHORT_NAME]»
- Αυτόματη επανάληψη σε 15 λεπτά όταν δεν λαμβάνεται delivery report
- Καταγραφή αναφορών παράδοσης και αιτιών αποτυχίας στο Incident Log (Doc 07 Annex 5)

**EN:** Because of the 160-character GSM-7 limit, SMS follow the same structure as above. Use an owned short domain, keep actionable verbs up front (e.g., `REVOKE NOW`), and store every sent text together with delivery receipts in the incident record to demonstrate compliance.

---

## 4. ΧΡΟΝΙΚΕΣ ΠΡΟΘΕΣΜΙΕΣ / TIMING REQUIREMENTS {#4}

**GR:** Οι προθεσμίες ενεργοποιούνται από τη στιγμή που ο Incident Commander (Doc 07) επιβεβαιώσει το περιστατικό και καταγράψει το `INCIDENT_START`. Η τήρηση των SLA εξασφαλίζει συμμόρφωση με eIDAS Άρθρο 19(2), ΕΕΤΤ Άρθρο 5 και GDPR Άρθρα 33-34.

**EN:** Deadlines start when the Incident Commander confirms the event and logs `INCIDENT_START`. Meeting these SLAs demonstrates compliance with eIDAS Art. 19(2), EETT Art. 5, and GDPR Arts. 33-34.

| Trigger | Severity / Condition | Recipient(s) | Deadline | Regulatory Reference |
|---------|---------------------|--------------|----------|----------------------|
| Security incident | Level 5 (Critical) | EETT, ENISA, Subscribers, Relying Parties | EETT & Subscribers: ≤ 1h; ENISA: ≤ 24h; Public post: ≤ 2h | EETT Art. 5.1, ETSI EN 319 401 §6.1.4 |
| Security incident | Level 4 (Major) | EETT, Subscribers | EETT: ≤ 4h; Subscribers: ≤ 24h | EETT Art. 5.1-5.2 |
| Security incident | Level 3 (Significant) | EETT (informational), Subscribers | EETT: ≤ 24h; Subscribers: ≤ 72h | EETT Art. 5.2 |
| Personal data breach (high risk) | Any | Hellenic DPA, Data Subjects, EETT | HDPA: ≤ 72h; Data subjects: without undue delay; EETT: aligned with incident level | GDPR Arts. 33-34, eIDAS Art. 19 |
| Certificate compromise | Any | EETT, CAB Forum contacts, Subscribers, Browser root programs | Initial notice ≤ 1h; follow-up root cause ≤ 24h | CABF BR §4.9.3, EETT Art. 11 |
| Planned maintenance | Impact ≥ 10% users or >1h | Subscribers, Relying Parties | ≥ 5 working days prior | EETT Art. 5.2 (good practice) |
| Service termination | Planned | EETT, Subscribers, Regulators in other MS | ≥ 3 months to EETT, ≥ 60 days to subscribers | eIDAS Art. 24(2)(h), EETT Art. 11 |
| Cross-border incident | Impact to other EU MS | Foreign Supervisory Bodies via cooperation mechanism | ≤ 24h after notifying EETT | eIDAS Art. 19(3) |

- **Clock Start:** `INCIDENT_START` as recorded in Doc 07.
- **Clock Stop:** Evidence of dispatch (email header, SMS receipt, API log) stored in Doc 12.
- **Escalation:** If deadline is at risk, the QTS Manager escalates to CEO per Risk Plan (Doc 07 §5.2).

---

## 5. ΠΡΟΤΥΠΑ ΕΙΔΟΠΟΙΗΣΕΩΝ / NOTIFICATION TEMPLATES {#5}

**GR:** Όλα τα πρότυπα ελέγχονται ετησίως από QTS Manager, Νομικό Σύμβουλο και DPO. Τα placeholders παραμένουν σύμφωνα με οδηγία («ignore placeholder for the future»).

**EN:** Templates are reviewed yearly by the QTS Manager, Legal Counsel, and the DPO. Placeholders stay intact per instruction.

### 5.1. Template A – Critical Security Incident Email

**GR:**
```
Θέμα: [INCIDENT_ID] - Κρίσιμο περιστατικό ασφάλειας (Επίπεδο 5)

Αγαπητέ/ή [SUBSCRIBER_CONTACT],

Στις [INCIDENT_DATETIME] εντοπίσαμε περιστατικό ασφάλειας που επηρεάζει την υπηρεσία [SERVICE_NAME]. 

• Τρέχουσα κατάσταση: [INCIDENT_STATUS]  
• Επηρεαζόμενα πιστοποιητικά: [CERT_COUNT]  
• Απαιτούμενη ενέργεια: [REQUIRED_ACTION] έως [ACTION_DEADLINE]

Παρέχουμε συνεχή ενημέρωση στο [STATUS_URL]. Για επείγοντα ζητήματα επικοινωνήστε στο [HOTLINE].

Με εκτίμηση,  
[LEGAL_NAME_GR] – Ομάδα Ασφάλειας
```

**EN:**
```
Subject: [INCIDENT_ID] - Critical security incident (Severity 5)

Dear [SUBSCRIBER_CONTACT],

On [INCIDENT_DATETIME] we detected a security incident impacting [SERVICE_NAME].

• Current status: [INCIDENT_STATUS]  
• Affected certificates: [CERT_COUNT]  
• Required action: [REQUIRED_ACTION] by [ACTION_DEADLINE]

We will post updates at [STATUS_URL]. For urgent assistance call [HOTLINE].

Regards,  
[LEGAL_NAME_EN] – Security Team
```

### 5.2. Template B – Personal Data Breach Notice

**GR:** Περιλαμβάνει τα στοιχεία GDPR Άρθρου 34.
```
Θέμα: Σημαντική ενημέρωση σχετικά με τα δεδομένα σας

Στις [INCIDENT_DATETIME] διαπιστώσαμε παραβίαση δεδομένων που ενδέχεται να επηρεάζει τα στοιχεία σας. 

Τι συνέβη: [WHAT_HAPPENED]  
Ποια δεδομένα: [DATA_TYPES]  
Πιθανές συνέπειες: [POTENTIAL_IMPACT]  
Ενέργειες που έχουμε λάβει: [MITIGATION]  
Τι πρέπει να κάνετε: [USER_ACTIONS]

Για ερωτήσεις, επικοινωνήστε με τον ΥΠΔ στο [DPO_CONTACT].
```

**EN:** Mirrors the Greek text to satisfy cross-border recipients.

### 5.3. Template C – Certificate Compromise Alert (Email + Portal Banner)

- **Subject:** `[INCIDENT_ID] - Immediate revocation required`
- **Body (GR/EN):** Συνοπτική περιγραφή, πίνακας επηρεαζόμενων σειρών πιστοποιητικών, βήματα ανάκλησης, σύνδεσμος σε CRL/OCSP.
- **Portal banner:** `WARNING: Certificates issued between [DATE_RANGE] must be revoked. See Incident #[ID].`

### 5.4. Template D – Planned Maintenance / Προγραμματισμένη Διακοπή

Provide bilingual notice with start/end time (UTC+02 / UTC), services impacted, fallback contacts, and confirmation that valid certificates remain trustworthy (eIDAS Art. 24(2)(h)).

### 5.5. Template E – Press Release (Level 4-5)

Structure (GR/EN):
1. Headline with severity and time.
2. Summary paragraph (what/when/impact).
3. Actions taken and collaboration with EETT/ENISA.
4. Guidance for users and relying parties.
5. Media contact line.

### 5.6. Template F – Annual Effectiveness Summary

Used for Section 12 reporting: includes total incidents, notification SLA achievement (%), and improvement actions.

Full template text is stored in Doc 13 (Communication Templates) and referenced here for configuration control.

---

## 6. ΕΠΙΚΟΙΝΩΝΙΑ ΜΕ ΑΠΟΔΕΚΤΕΣ / RELYING PARTY COMMUNICATION {#6}

**GR:** Οι αποδέκτες που δεν είναι συνδρομητές λαμβάνουν ενημερώσεις μέσω δημοσίων καναλιών και της υπηρεσίας Status API. Όλες οι ανακοινώσεις υπογράφονται με QSeal για ακεραιότητα.

**EN:** Non-subscriber relying parties consume public channels and the Status API. Every publication is QSeal-signed to guarantee authenticity.

- Public announcements remain online για ≥ 7 έτη (Doc 12).
- OCSP/CRL περιέχει αναφορά `incidentReference` για συσχέτιση.
- Αποστολή RSS feed σε aggregators (ENISA CSIRTs Network) εντός 2 ωρών για επίπεδο ≥4.

---

## 7. ΔΙΑΣΥΝΟΡΙΑΚΕΣ ΕΚΤΙΜΗΣΕΙΣ / CROSS-BORDER CONSIDERATIONS {#7}

- **Μεταφράσεις / Translations:** Κρίσιμες ειδοποιήσεις παρέχονται σε GR + EN. Αν επηρεάζονται συγκεκριμένα κράτη μέλη, προστίθεται μηχανική μετάφραση με ανθρώπινη επαλήθευση.
- **Ωρολόγια Ζώνη / Time Zones:** Όλες οι αναφορές φέρουν UTC και Athens time.
- **Supervisory Cooperation:** Ο QTS Manager ενημερώνει τις αντίστοιχες αρχές μέσω EETT (single liaison) και καταγράφει ticket IDs.
- **Data residency:** Επισημαίνεται εάν επηρεάζονται δεδομένα πολιτών άλλων MS ώστε να συντονιστεί ο DPA.

---

## 8. ΕΣΩΤΕΡΙΚΟΣ ΣΥΝΤΟΝΙΣΜΟΣ / INTERNAL COORDINATION {#8}

| Δραστηριότητα / Activity | Incident Commander | QTS Manager | DPO | CISO | Corporate Comms | CEO |
|--------------------------|-------------------|-------------|-----|------|------------------|-----|
| Incident classification | R | A | C | C | I | I |
| Draft notification | C | R | C | C | R | I |
| Regulatory submission | I | R | C | C | I | A |
| Media response | I | C | I | I | R | A |
| Evidence archiving | C | R | C | A | I | I |

Legend: R = Responsible, A = Accountable, C = Consulted, I = Informed.

Escalation chain: Incident Commander → QTS Manager → CEO. Backup roles are maintained in Doc 01 (Registry).

---

## 9. ΡΟΗ ΕΡΓΑΣΙΑΣ ΕΙΔΟΠΟΙΗΣΗΣ / NOTIFICATION WORKFLOW {#9}

1. **Detect & Triage** – SOC raises ticket, Incident Commander validates severity.
2. **Activate Playbook** – Cross-functional bridge call (Security, Operations, DPO, Communications).
3. **Draft Messages** – Use Section 5 templates, adapt facts, include mitigation guidance.
4. **Review & Approve** – QTS Manager + DPO sign-off; CEO approval required for public statements.
5. **Dispatch** – Send through Email/SMS/API, verify delivery receipts.
6. **Regulator Reporting** – Submit Form (Annex A) via EETT portal and HDPA portal.
7. **Update Loop** – Provide updates every 4h (Level 4-5) or 12h (Level 3) until resolution.
8. **Close & Archive** – Store final notice, evidence, and lessons learned in Doc 12; feed metrics to Section 11.

ASCII Overview:
```
Detect → Confirm Severity → Draft → Review → Dispatch → Log Evidence → Update → Close
```

---

## 10. ΚΑΤΑΛΟΓΟΣ ΕΝΔΙΑΦΕΡΟΜΕΝΩΝ / STAKEHOLDER CONTACT LISTS {#10}

Contact data resides in Doc 13 (Communication Templates) and MASTER_CONTACT_LIST.md. This plan specifies required fields and refresh cadence.

| Κατηγορία / Category | Υποχρεωτικά Πεδία | Πηγή Δεδομένων | Συχνότητα Ελέγχου |
|----------------------|-------------------|----------------|-------------------|
| Συνδρομητές / Subscribers | Org name, Service type, Contact name, Email, SMS, Preferred language | CRM extract synchronized weekly | Μηνιαία δειγματοληψία + πριν από μεγάλες αποστολές |
| Αποδέκτες / Relying Parties | Sector, Contact email, API key, Country | RP registry (Doc 01) | Ανά τρίμηνο |
| Ρυθμιστικές Αρχές / Regulators | Authority name, Channel, Escalation phone | Compliance register | Σε κάθε ενημέρωση ΕΕΤΤ |
| ΜΜΕ / Media | Outlet, Journalist, Phone | Communications team | Ετήσια αναθεώρηση |

Changes to contact data require dual control (Communications + Compliance).

---

## 11. ΔΟΚΙΜΕΣ ΚΑΙ ΜΕΤΡΗΣΕΙΣ / TESTING AND METRICS {#11}

### 11.1. Testing

| Test Type | Frequency | Evidence | Owner |
|-----------|-----------|----------|-------|
| Full notification drill (email + SMS + API) | 2× per year | Drill report, delivery stats | QTS Manager |
| Template accuracy review | Quarterly | Redlined template pack | Corporate Comms |
| Cross-border escalation simulation | Annual | Meeting minutes, regulator acknowledgments | Compliance Officer |
| SMS gateway failover test | Annual | Screenshots, delivery receipts | IT Operations |

### 11.2. Metrics

| KPI | Target | Data Source | Escalation |
|-----|--------|-------------|------------|
| Notification SLA adherence | ≥ 98% | Incident tracker (Doc 07) | <98% → Report to CAB + Remediation plan |
| Delivery success rate (email) | ≥ 95% within 10 min | ESP dashboard | <92% → trigger infrastructure review |
| Delivery success rate (SMS) | ≥ 98% | SMS gateway logs | <95% → switch carrier |
| Subscriber feedback closure | ≤ 3 business days | CRM tickets | Aging >3d → escalate to Customer Ops |
| Post-incident survey completion | ≥ 60% of major incidents | Survey tool export | <50% → DPO follow-up |

Metrics feed into the Annual Report (Section 12) and Compliance Register (Doc 19).

---

## 12. ΕΤΗΣΙΑ ΑΝΑΦΟΡΑ ΑΠΟΤΕΛΕΣΜΑΤΙΚΟΤΗΤΑΣ / ANNUAL EFFECTIVENESS REPORT {#12}

Contents submitted to EETT and retained for 7 years:
- Σύνολο περιστατικών ανά κατηγορία και μέσο ειδοποίησης.
- Ποσοστό τήρησης προθεσμιών και αιτίες αποκλίσεων.
- Περίληψη δοκιμών/ασκήσεων και remedial actions.
- Επισκοπήσεις DPO & CISO (υπογεγραμμένες).
- Σχέδιο βελτίωσης για επόμενο έτος.

Report owner: QTS Manager; due within Q1 of κάθε έτους.

---

## 13. ΕΛΕΓΧΟΣ ΕΓΓΡΑΦΟΥ / DOCUMENT CONTROL {#13}

| Version | Date | Description | Author | Approved By |
|---------|------|-------------|--------|-------------|
| 0.5 | 2024-10-01 | Initial draft structure | Compliance Team | QTS Manager |
| 0.9 | 2024-12-15 | Added sections 1-3 & templates | QTS Manager | CEO |
| 1.0 | [SUBMISSION_DATE] | Comprehensive enrichment (sections 4-13, annexes) | Compliance Officer | CEO & DPO |

Next review: [SUBMISSION_DATE + 12 months].

---

### Annex A – Incident Report Form (EETT / HDPA)

| Πεδίο / Field | Περιγραφή / Description |
|---------------|------------------------|
| Incident ID | Unique ID from Doc 07 |
| Severity Level | 1-5 (Doc 07 matrix) |
| Detection Timestamp | ISO 8601 UTC |
| Affected Services | QES/QSeal/QTS/QWAC/etc |
| Impact Summary | Availability / Integrity / Confidentiality |
| Affected Subscribers | Count + sector |
| Interim Actions | Mitigation already applied |
| Required Actions | Steps expected from recipients |
| Contact Person | Incident Commander + phone/email |

### Annex B – Emergency Contact Template

| Role | Primary | Backup | 24/7 Phone | Secure Email |
|------|---------|--------|-----------|--------------|
| Incident Commander | [NAME] | [NAME] | [PHONE] | [EMAIL] |
| QTS Manager | ... | ... | ... | ... |
| DPO | ... | ... | ... | ... |
| Media Spokesperson | ... | ... | ... | ... |

Kept in sync with MASTER_CONTACT_LIST.md (Doc 13).

### Annex C – Sample Status API Payload

```json
{
  "generated_at": "2024-11-15T08:45:00Z",
  "service": "QES_NaturalPerson",
  "status": "major_outage",
  "incident_reference": "INC-2024-0051",
  "user_actions": "Suspend new enrollments, monitor OCSP responses",
  "next_update": "2024-11-15T10:45:00Z"
}
```

### Annex D – Test & Drill Log Template

| Drill ID | Date | Scenario | Channels Tested | Success % | Lessons Learned | Owner |
|----------|------|----------|-----------------|-----------|-----------------|-------|

Signed drill reports are filed under Doc 12 for auditability.
