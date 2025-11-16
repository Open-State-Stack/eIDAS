# ΣΧΕΔΙΟ ΕΙΔΟΠΟΙΗΣΗΣ ΧΡΗΣΤΩΝ / USER NOTIFICATION PLAN

> ℹ️ **Merged Reference:** Από 2025-11-15 το πλήρως επικαιροποιημένο σχέδιο βρίσκεται στο `08_User_Notification_Plan_GR_EN.md`. Το παρόν αντίγραφο διατηρείται μόνο για ιστορική αναφορά και δεν πρέπει να τροποποιείται. / As of 2025-11-15 the authoritative plan lives in `08_User_Notification_Plan_GR_EN.md`. This copy is read-only for traceability.

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
| **eIDAS Άρθρο 19(2) / Article 19(2)** | Ενημέρωση συνδρομητών και τρίτων για παραβιάσεις ασφαλείας / Information to subscribers and third parties about security breaches | §2, §4, §5 | 4-9 |
| **ΕΕΤΤ Κανονισμός Άρθρο 5 / EETT Regulation Article 5** | Υποχρεώσεις αναφοράς περιστατικών και ειδοποίησης χρηστών / Incident reporting and user notification obligations | §2, §4, §7, §8 | 4-16 |
| **ΕΕΤΤ Άρθρο 5.1 / Article 5.1** | Ενημέρωση ΕΕΤΤ για περιστατικά ≥ Επίπεδο 3 / Notify EETT of incidents ≥ Level 3 | §2.1, §4 | 4-5, 8 |
| **ΕΕΤΤ Άρθρο 5.2 / Article 5.2** | Χρονικές προθεσμίες ειδοποίησης / Notification timing requirements | §4 | 8-9 |
| **ΕΕΤΤ Άρθρο 5.4 / Article 5.4** | Περιεχόμενο αναφοράς περιστατικού / Incident report content | §5, Annex A | 9-14, 29-31 |
| **ΕΕΤΤ Άρθρο 11 / Article 11** | Διαδικασία ανάκλησης και ειδοποίηση / Revocation procedures and notification | §2.4, §5.4 | 6, 11 |
| **GDPR Άρθρο 33 / Article 33** | Ειδοποίηση Αρχής Προστασίας Δεδομένων / Notification to supervisory authority | §2.2, §8.2 | 5, 17 |
| **GDPR Άρθρο 34 / Article 34** | Ειδοποίηση υποκειμένων δεδομένων / Communication to data subjects | §2.2, §4, §5.3 | 5, 8-9, 10 |
| **ETSI EN 319 401 §6.1.4** | Δημόσιες ανακοινώσεις / Public announcements | §3.3, §6 | 7-8, 14-15 |
| **ISO/IEC 27035-1** | Επικοινωνία περιστατικών / Incident communication | §8, §9 | 16-20 |
| **CABForum BR §4.9.3** | Ειδοποίηση παραβίασης κλειδιού / Key compromise notification | §2.4, §5.4 | 6, 11 |

**Επιβεβαίωση Πληρότητας / Completeness Confirmation:**  
☑ Όλες οι υποχρεώσεις ειδοποίησης από eIDAS & ΕΕΤΤ καλύπτονται / All eIDAS & EETT notification obligations covered  
☑ Χρονικές προθεσμίες συμβατές με κανονισμούς / Timing requirements compliant with regulations  
☑ Πρότυπα μηνυμάτων διαθέσιμα για όλα τα σενάρια / Message templates available for all scenarios  
☑ Διαδικασίες δοκιμών και ελέγχου περιλαμβάνονται / Testing and audit procedures included  
☑ Ενσωμάτωση με Σχέδιο Αντίδρασης σε Περιστατικά (Doc 07) / Integration with Incident Response Plan (Doc 07)

---

## ΠΙΝΑΚΑΣ ΠΕΡΙΕΧΟΜΕΝΩΝ / TABLE OF CONTENTS

1. [Σκοπός και Στόχοι / Purpose and Objectives](#section-1)
2. [Ενεργοποιητές Ειδοποίησης / Notification Triggers](#section-2)
3. [Μέθοδοι Ειδοποίησης / Notification Methods](#section-3)
4. [Χρονικές Προθεσμίες / Timing Requirements](#section-4)
5. [Πρότυπα Ειδοποιήσεων / Notification Templates](#section-5)
6. [Επικοινωνία με Αποδέκτες / Relying Party Communication](#section-6)
7. [Διασυνοριακές Εκτιμήσεις / Cross-Border Considerations](#section-7)
8. [Εσωτερικός Συντονισμός / Internal Coordination](#section-8)
9. [Ροή Εργασίας Ειδοποίησης / Notification Workflow](#section-9)
10. [Κατάλογος Ενδιαφερομένων Μερών / Stakeholder Contact Lists](#section-10)
11. [Δοκιμές και Μετρήσεις / Testing and Metrics](#section-11)
12. [Ετήσια Αναφορά Αποτελεσματικότητας / Annual Effectiveness Report](#section-12)
13. [Έλεγχος Εγγράφου / Document Control](#section-13)

**Παραρτήματα / Annexes:**
- Annex A: Τύπος Αναφοράς Περιστατικού / Incident Report Form
- Annex B: Κατάλογος Επαφών Έκτακτης Ανάγκης / Emergency Contact List Template
- Annex C: Μήνυμα Δοκιμής Συστήματος / System Test Message Template
- Annex D: Παραδείγματα Μηνυμάτων API Status / API Status Message Examples

---

<a name="section-1"></a>
## 1. ΣΚΟΠΟΣ ΚΑΙ ΣΤΟΧΟΙ / PURPOSE AND OBJECTIVES

### 1.1. Purpose / Σκοπός

**GR:** Το παρόν Σχέδιο Ειδοποίησης Χρηστών καθορίζει τις διαδικασίες, τις μεθόδους, τα πρότυπα μηνυμάτων και τις ευθύνες για την έγκαιρη, ακριβή και αποτελεσματική ενημέρωση των συνδρομητών, των αποδεκτών (relying parties) και άλλων ενδιαφερομένων μερών σε περίπτωση γεγονότων που επηρεάζουν την ασφάλεια, την ακεραιότητα ή τη διαθεσιμότητα των παρεχόμενων εταιρικών υπηρεσιών εμπιστοσύνης (Qualified Trust Services).

Το σχέδιο αποτελεί αναπόσπαστο μέρος του συστήματος διαχείρισης ποιότητας και ασφάλειας του Παρόχου και ενσωματώνεται με:
- **Doc 07:** Σχέδιο Αντίδρασης σε Περιστατικά (Incident Response Plan)
- **Doc 07b:** Διαδικασίες Ανάκλησης (Revocation Procedures)
- **Doc 12:** Σχέδιο Τήρησης Αρχείων (Recordkeeping Plan)

**EN:** This User Notification Plan defines the procedures, methods, message templates, and responsibilities for the timely, accurate, and effective notification of subscribers, relying parties, and other stakeholders in the event of occurrences that affect the security, integrity, or availability of the provided qualified trust services.

The plan is an integral part of the Provider's quality and security management system and integrates with:
- **Doc 07:** Incident Response Plan
- **Doc 07b:** Revocation Procedures
- **Doc 12:** Recordkeeping Plan

### 1.2. Objectives / Στόχοι

**GR:** Οι κύριοι στόχοι του Σχεδίου Ειδοποίησης Χρηστών είναι:

**1. Νομική Συμμόρφωση**
Πλήρης συμμόρφωση με τις νομικές υποχρεώσεις που απορρέουν από:
- **Κανονισμό eIDAS (EU) 910/2014, Άρθρο 19(2):** "Οι πάροχοι υπηρεσιών εμπιστοσύνης ενημερώνουν χωρίς αδικαιολόγητη καθυστέρηση τους συνδρομητές και τυχόν τρίτα μέρη που εμπλέκονται στην παροχή της υπηρεσίας για κάθε παραβίαση της ασφάλειας που έχει σημαντικό αντίκτυπο στην παρεχόμενη υπηρεσία εμπιστοσύνης ή στα προσωπικά δεδομένα που τηρούνται σε αυτήν."
- **Κανονισμό ΕΕΤΤ για Πάροχους Υπηρεσιών Εμπιστοσύνης, Άρθρο 5:** Υποχρεώσεις αναφοράς περιστατικών προς ΕΕΤΤ και ειδοποίησης χρηστών
- **Κανονισμό ΕΕΤΤ, Άρθρο 11:** Διαδικασίες ανάκλησης και υποχρέωση άμεσης ειδοποίησης
- **Γενικό Κανονισμό Προστασίας Δεδομένων (GDPR) (EU) 2016/679:**
  - Άρθρο 33: Ειδοποίηση της εποπτικής αρχής εντός 72 ωρών από την επίγνωση παραβίασης
  - Άρθρο 34: Ειδοποίηση των υποκειμένων δεδομένων όταν η παραβίαση ενέχει υψηλό κίνδυνο
- **ETSI EN 319 401 §6.1.4:** Δημόσιες ανακοινώσεις και διαφάνεια

**2. Ελαχιστοποίηση Κινδύνου**
Άμεση και σαφής ενημέρωση των χρηστών με συγκεκριμένες οδηγίες για μείωση της έκθεσής τους σε κινδύνους:
- Ανάκληση παραβιασθέντων πιστοποιητικών
- Αλλαγή κωδικών πρόσβασης και PIN
- Παρακολούθηση για ύποπτη δραστηριότητα
- Λήψη εναλλακτικών μέτρων ασφαλείας

**3. Διατήρηση Εμπιστοσύνης**
Διαφανής, υπεύθυνη και έγκαιρη επικοινωνία για διατήρηση της εμπιστοσύνης των χρηστών και του ευρύτερου οικοσυστήματος υπηρεσιών εμπιστοσύνης.

**4. Προστασία Δημόσιου Συμφέροντος**
Ενημέρωση του ευρύτερου κοινού και των αποδεκτών (relying parties) για περιστατικά με ευρύ αντίκτυπο (Επίπεδο 4-5), ώστε να προστατευθούν όσοι βασίζονται στα πιστοποιητικά μας χωρίς να είναι άμεσοι συνδρομητές.

**5. Διευκόλυνση Έρευνας και Βελτίωσης**
Δημιουργία πλήρους αρχείου ειδοποιήσεων για:
- Ελέγχους από ΕΕΤΤ και CAB
- Εσωτερική ανάλυση αποτελεσματικότητας
- Συνεχή βελτίωση διαδικασιών

**EN:** The main objectives of the User Notification Plan are:

**1. Legal Compliance**
Full compliance with legal obligations arising from:
- **eIDAS Regulation (EU) 910/2014, Article 19(2):** "Trust service providers shall inform without undue delay subscribers and any third parties involved in the provision of the service of any breach of security that has a significant impact on the trust service provided or on the personal data maintained therein."
- **EETT Regulation for Trust Service Providers, Article 5:** Incident reporting obligations to EETT and user notification
- **EETT Regulation, Article 11:** Revocation procedures and obligation for immediate notification
- **General Data Protection Regulation (GDPR) (EU) 2016/679:**
  - Article 33: Notification to supervisory authority within 72 hours of awareness
  - Article 34: Communication to data subjects when breach poses high risk
- **ETSI EN 319 401 §6.1.4:** Public announcements and transparency

**2. Risk Minimization**
Immediate and clear notification to users with specific instructions to reduce their risk exposure:
- Revocation of compromised certificates
- Password and PIN changes
- Monitoring for suspicious activity
- Taking alternative security measures

**3. Maintaining Trust**
Transparent, responsible, and timely communication to maintain user trust and broader trust services ecosystem confidence.

**4. Public Interest Protection**
Notification to the broader public and relying parties for incidents with wide impact (Level 4-5), to protect those who rely on our certificates without being direct subscribers.

**5. Facilitating Investigation and Improvement**
Creating a complete archive of notifications for:
- Audits by EETT and CAB
- Internal effectiveness analysis
- Continuous process improvement

### 1.3. Scope / Εύρος Εφαρμογής

**GR:** Το Σχέδιο Ειδοποίησης Χρηστών εφαρμόζεται σε όλες τις εταιρικές υπηρεσίες εμπιστοσύνης που παρέχει η [LEGAL_NAME_GR]:

| Υπηρεσία / Service | Service Type ID (OID) | Εφαρμογή / Applies |
|-------------------|----------------------|-------------------|
| Qualified Electronic Signatures - Φυσικά Πρόσωπα / Natural Persons | [QES_NAT_OID] | ✓ |
| Qualified Electronic Signatures - Νομικά Πρόσωπα / Legal Persons | [QES_LEG_OID] | ✓ |
| Qualified Electronic Seals | [QSEAL_OID] | ✓ |
| Qualified Timestamps | [QTS_OID] | ✓ |
| Qualified Website Authentication Certificates | [QWAC_OID] | ✓ |
| [Προσθέστε άλλες υπηρεσίες / Add other services if applicable] | | |

**Εκτός Πεδίου Εφαρμογής:**
- Εσωτερικές διαδικασίες ανθρώπινου δυναμικού (HR notifications)
- Εμπορικές ανακοινώσεις και μάρκετινγκ
- Τεχνική τεκμηρίωση χωρίς αντίκτυπο στην ασφάλεια

**EN:** The User Notification Plan applies to all qualified trust services provided by [LEGAL_NAME_EN]:

[Same table as Greek version]

**Out of Scope:**
- Internal human resources notifications
- Commercial announcements and marketing
- Technical documentation without security impact

### 1.4. Definitions / Ορισμοί

**GR:**

- **Συνδρομητής (Subscriber):** Φυσικό ή νομικό πρόσωπο στο όνομα του οποίου έχει εκδοθεί πιστοποιητικό και κατέχει το αντίστοιχο ιδιωτικό κλειδί.

- **Αποδέκτης (Relying Party):** Φυσικό ή νομικό πρόσωπο που βασίζεται στην εγκυρότητα ενός πιστοποιητικού (π.χ., επαληθεύει ψηφιακή υπογραφή), χωρίς να είναι ο συνδρομητής.

- **Ενδιαφερόμενο Μέρος (Stakeholder):** Οποιοδήποτε μέρος επηρεάζεται από τις υπηρεσίες μας, συμπεριλαμβανομένων: συνδρομητών, αποδεκτών, ΕΕΤΤ, άλλων εποπτικών αρχών EU, CAB, media.

- **Περιστατικό (Incident):** Οποιοδήποτε γεγονός που επηρεάζει ή απειλεί την ασφάλεια, ακεραιότητα, διαθεσιμότητα ή εμπιστευτικότητα των υπηρεσιών εμπιστοσύνης ή των συστημάτων που τις υποστηρίζουν.

- **Παραβίαση Ασφαλείας (Security Breach):** Περιστατικό που έχει επιβεβαιωμένο αντίκτυπο στην ασφάλεια των υπηρεσιών ή των δεδομένων.

- **Παραβίαση Δεδομένων Προσωπικού Χαρακτήρα (Personal Data Breach):** Παραβίαση της ασφάλειας που οδηγεί σε τυχαία ή παράνομη καταστροφή, απώλεια, μεταβολή, άνευ άδειας κοινολόγηση ή πρόσβαση σε προσωπικά δεδομένα (GDPR Άρθρο 4(12)).

- **Χωρίς Αδικαιολόγητη Καθυστέρηση (Without Undue Delay):** Άμεση ειδοποίηση μόλις το περιστατικό επιβεβαιωθεί και συλλεχθούν τα βασικά στοιχεία. Συνήθως εντός 24-72 ωρών ανάλογα με τη σοβαρότητα.

**EN:**

- **Subscriber:** Natural or legal person in whose name a certificate has been issued and who holds the corresponding private key.

- **Relying Party:** Natural or legal person who relies on the validity of a certificate (e.g., verifies a digital signature), without being the subscriber.

- **Stakeholder:** Any party affected by our services, including: subscribers, relying parties, EETT, other EU supervisory authorities, CAB, media.

- **Incident:** Any event that affects or threatens the security, integrity, availability, or confidentiality of trust services or the systems supporting them.

- **Security Breach:** Incident with confirmed impact on service or data security.

- **Personal Data Breach:** Breach of security leading to accidental or unlawful destruction, loss, alteration, unauthorized disclosure of, or access to, personal data (GDPR Article 4(12)).

- **Without Undue Delay:** Immediate notification once the incident is confirmed and basic facts are gathered. Typically within 24-72 hours depending on severity.

---

<a name="section-2"></a>
## 2. ΕΝΕΡΓΟΠΟΙΗΤΕΣ ΕΙΔΟΠΟΙΗΣΗΣ / NOTIFICATION TRIGGERS

**GR:** Η υποχρέωση ειδοποίησης χρηστών ενεργοποιείται αυτόματα από τα παρακάτω γεγονότα, σύμφωνα με τις κατηγοριοποιήσεις του Σχεδίου Αντίδρασης σε Περιστατικά (Doc 07).

**EN:** The user notification obligation is automatically triggered by the following events, according to the categorizations in the Incident Response Plan (Doc 07).

### 2.1. Security Incident (Level ≥ 3) / Περιστατικό Ασφαλείας (Επίπεδο ≥ 3)

**GR:** Οποιοδήποτε περιστατικό που ταξινομείται ως **Σημαντικό (Επίπεδο 3)**, **Μείζον (Επίπεδο 4)** ή **Κρίσιμο (Επίπεδο 5)** σύμφωνα με τη Μήτρα Κατηγοριοποίησης Περιστατικών (Doc 07, Annex 3).

**Κριτήρια Κατηγοριοποίησης:**

| Επίπεδο / Level | Περιγραφή / Description | Αντίκτυπος / Impact | Υποχρέωση Ειδοποίησης / Notification Requirement |
|-----------------|------------------------|-------------------|------------------------------------------------|
| **3 - Σημαντικό / Significant** | Περιορισμένη επίδραση σε υπηρεσίες ή δεδομένα / Limited impact on services or data | • Μερική διακοπή (< 10% χρηστών)<br>• Καθυστερήσεις OCSP/CRL<br>• Μη κρίσιμο σφάλμα συστήματος | Χρήστες: Εντός 72 ωρών<br>ΕΕΤΤ: Εντός 24 ωρών |
| **4 - Μείζον / Major** | Σοβαρή επίδραση σε διαθεσιμότητα ή ασφάλεια / Serious impact on availability or security | • Γενική διακοπή (> 10% χρηστών)<br>• Παραβίαση δικτυακής ασφάλειας<br>• Διαρροή μη ευαίσθητων δεδομένων | Χρήστες: Εντός 24 ωρών<br>ΕΕΤΤ: Άμεσα (< 4 ώρες)<br>Media: Ανακοίνωση ιστοσελίδας |
| **5 - Κρίσιμο / Critical** | Καταστροφική επίδραση στην ασφάλεια / Catastrophic security impact | • Διαρροή κλειδιού CA<br>• Πλήρης απώλεια υπηρεσίας<br>• Μαζική παραβίαση δεδομένων | Χρήστες: Άμεσα (< 1 ώρα)<br>ΕΕΤΤ: Άμεσα (< 1 ώρα)<br>Media: Δελτίο τύπου<br>ENISA: Εντός 24 ωρών |

**Παραδείγματα Περιστατικών:**

**Επίπεδο 3:**
- Προσωρινή υποβάθμιση απόδοσης OCSP responder (χρόνος απόκρισης > 2 δευτερόλεπτα)
- Αποτυχία μη κρίσιμου συστήματος backup
- Ανεπιτυχής προσπάθεια μη εξουσιοδοτημένης πρόσβασης (μπλοκαρίστηκε από firewall)
- Σφάλμα διαδικασίας έκδοσης που επηρεάζει < 10 πιστοποιητικά

**Επίπεδο 4:**
- Διακοπή υπηρεσιών έκδοσης πιστοποιητικών > 4 ώρες
- DDoS επίθεση που προκαλεί σημαντικές καθυστερήσεις
- Malware σε μη παραγωγικό σύστημα με πιθανό risk lateral movement
- Μη εξουσιοδοτημένη πρόσβαση σε non-HSM συστήματα παραγωγής
- Διαρροή μη ευαίσθητων δεδομένων (π.χ., email addresses συνδρομητών χωρίς άλλα στοιχεία)

**Επίπεδο 5:**
- Διαρροή ιδιωτικού κλειδιού Root CA ή Issuing CA
- Μη εξουσιοδοτημένη πρόσβαση σε HSM
- Ανίχνευση rogue certificates (πιστοποιητικά εκδοθέντα χωρίς εξουσιοδότηση)
- Πλήρης απώλεια όλων των υπηρεσιών > 24 ώρες
- Μαζική παραβίαση δεδομένων (> 1000 συνδρομητών με ευαίσθητα δεδομένα)

**EN:** Any incident classified as **Significant (Level 3)**, **Major (Level 4)**, or **Critical (Level 5)** according to the Incident Categorization Matrix (Doc 07, Annex 3).

[Same table and examples as Greek version, in English]

### 2.2. Personal Data Breach / Παραβίαση Δεδομένων Προσωπικού Χαρακτήρα

**GR:** Οποιαδήποτε παραβίαση δεδομένων προσωπικού χαρακτήρα που ενέχει **υψηλό κίνδυνο** για τα δικαιώματα και τις ελευθερίες των φυσικών προσώπων, σύμφωνα με το GDPR Άρθρο 34.

**Κριτήρια Αξιολόγησης Κινδύνου:**

Ο κίνδυνος θεωρείται **υψηλός** όταν η παραβίαση πληροί ένα ή περισσότερα από τα παρακάτω κριτήρια:

1. **Φύση Δεδομένων:**
   - Ευαίσθητα δεδομένα: αριθμοί ταυτότητας, διαβατηρίων, ΑΜΚΑ
   - Οικονομικά στοιχεία: αριθμοί τραπεζικών λογαριασμών, πιστωτικών καρτών
   - Στοιχεία αυθεντικοποίησης: passwords, PINs, biometric data, ιδιωτικά κλειδιά
   - Ειδικές κατηγορίες δεδομένων (GDPR Άρθρο 9): υγεία, π
