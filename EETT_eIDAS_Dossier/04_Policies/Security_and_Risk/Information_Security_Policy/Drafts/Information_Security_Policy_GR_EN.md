# ΠΟΛΙΤΙΚΗ ΑΣΦΑΛΕΙΑΣ ΠΛΗΡΟΦΟΡΙΩΝ / INFORMATION SECURITY POLICY

**Οργανισμός / Company:** Ελληνικές Υπηρεσίες Εμπιστοσύνης Α.Ε. / Greek Trust Services S.A.  
**Έκδοση / Version:** 1.0  
**Ημερομηνία Έκδοσης / Issue Date:** 2025-06-15  
**Κατάταξη / Classification:** Internal – Controlled  
**Υπεύθυνος / Owner:** Αλέξανδρος Γεωργίου (CISO) – ciso@greektrustservices.gr  

## Πίνακας Ιχνηλασιμότητας / Traceability Matrix
| Κανονισμός / Regulation | Αναφορά / Reference | Τεκμηρίωση / Evidence |
|-------------------------|---------------------|-----------------------|
| eIDAS Άρθρο 24(2)(β) | Διατήρηση εξειδικευμένου προσωπικού & ISMS | §3, §4, Annex EV-107 |
| eIDAS Άρθρο 24(2)(γ) | Αξιόπιστα συστήματα & προϊόντα | §4.2, §4.3 |
| EETT Άρθρο 4 | Μέτρα ασφάλειας & έλεγχος πρόσβασης | §4.1 |
| ETSI EN 319 401 §6.2 | Information Security Policy | Όλο το έγγραφο |
| ETSI EN 319 401 §7 | Risk management & incident readiness | §5 |

---

## 1. Σκοπός / Purpose
Η παρούσα πολιτική καθορίζει το πλαίσιο Ασφάλειας Πληροφοριών του Παρόχου και εξασφαλίζει ότι όλες οι εγκεκριμένες και μη εγκεκριμένες υπηρεσίες εμπιστοσύνης λειτουργούν βάσει τεκμηριωμένου ISMS. Το έγγραφο δημοσιεύεται σε διγλωσσική μορφή ώστε να καλύπτει τις απαιτήσεις της ΕΕΤΤ και των διεθνών κεφαλαίων μετόχων.

## 2. Πεδίο Εφαρμογής / Scope
- **GR:** Καλύπτει το σύνολο των εγκαταστάσεων (Root CA Vault, Athens DC, Thessaloniki DC), τις απομακρυσμένες RA θέσεις, τα πληροφοριακά συστήματα (HSM clusters, OCSP/CRL, TSA, Validation APIs) και το προσωπικό (μόνιμο, RA Operators, προμηθευτές).  
- **EN:** Applies to all facilities, PKI platforms, remote QSCD infrastructure, trusted service staff, contractors, and critical suppliers (e.g., Lamda Hellix, Swisscom Trust Services).

## 3. Διακυβέρνηση & Ρόλοι / Governance & Roles
- **Διοίκηση / Board:** Εγκρίνει ετήσια τον προϋπολογισμό ISMS και παρακολουθεί KPIs μέσω του Board Risk Committee.
- **CISO:** Ο Αλέξανδρος Γεωργίου (ciso@greektrustservices.gr) διατηρεί το ISMS, εποπτεύει τις αξιολογήσεις κινδύνων και εγκρίνει τις πολιτικές πρόσβασης.
- **IT Operations & SOC:** Εκτελούν καθημερινή παρακολούθηση (Splunk ES, 24×7 SOC). Όλα τα συμβάντα κατηγοριοποιούνται σύμφωνα με το Incident Response Plan (EV-505).
- **DPO:** Η Κατερίνα Μιχαηλίδου (dpo@greektrustservices.gr, +30 210 614 5109) επιβλέπει τις απαιτήσεις GDPR και συνεργάζεται με τον CISO σε DPIA/PIA δραστηριότητες.

## 4. Έλεγχοι Ασφάλειας / Security Controls
### 4.1 Έλεγχος Πρόσβασης / Access Control
- Μηδενική πρόσβαση by default, RBAC με MFA (Push + FIDO2).  
- Επαναπιστοποίηση δικαιωμάτων ανά 90 ημέρες· οι αλλαγές καταγράφονται στο IDM log (EV-401).

### 4.2 Κρυπτογραφία / Cryptography
- Όλα τα κλειδιά CA/TSA δημιουργούνται και φυλάσσονται σε Thales Luna Network HSM 7 (FIPS 140-2 L3).  
- Key ceremonies τεκμηριώνονται με βίντεο και dual custody (M=3, N=5).  
- Επιβάλλεται ανανέωση αλγορίθμων σύμφωνα με ETSI TS 119 312 (RSA-4096 για Root, RSA-3072/ECC για issuing tiers).

### 4.3 Υποδομή & Λειτουργία / Infrastructure & Operations
- Δίκτυα διαχωρισμένα σε dedicated VLANs με Palo Alto PA-5420 firewalls και Cisco Secure IPS.  
- Οι υπηρεσίες OCSP/CRL/TSA διαθέτουν SLA 99.95% με ενεργά-resilient data centres (Koropi και Thessaloniki).  
- Βοηθητικά αντίγραφα βάσεων δεδομένων: incremental κάθε 15’, πλήρες καθημερινά· αποθήκευση σε κρυπτογραφημένα αντικείμενα (AES-256).

### 4.4 Παρακολούθηση & Καταγραφή / Monitoring & Logging
- Splunk ES συλλέγει όλα τα logs (CA, RA, HSM) με retention 365 ημέρες online και 7 έτη μέσω WORM storage.  
- Τα alerts ταξινομούνται σε 4 επίπεδα και τα επίπεδα 3+ ενεργοποιούν την Ομάδα Ανταπόκρισης σε Συμβάντα εντός 15 λεπτών.

## 5. Διαχείριση Κινδύνων & Συμβάντων / Risk & Incident Management
- Χρησιμοποιείται μεθοδολογία ISO/IEC 27005 για τον εταιρικό Risk Register (EV-301). Οι κορυφαίοι ρίσκοι αναθεωρούνται τριμηνιαία.  
- Incidents χειρίζονται σύμφωνα με το `07a_Incident_Response_Plan_GR_EN.pdf` (συνημμένο στη δομή Security_and_Risk).  
- Έχει καθοριστεί RTO 4 ώρες και RPO 15 λεπτά με εξαμηνιαία DR tests (τελευταίο: 2024-10-18).

## 6. Συμμόρφωση, Έλεγχοι & Εκπαίδευση / Compliance, Audits & Training
- Ετήσιοι εσωτερικοί έλεγχοι ISMS, ανεξάρτητοι έλεγχοι QES/QSeal από TÜV Hellas (ESYD-CAB-567/2024).  
- Υποχρεωτική εκπαίδευση προσωπικού: 40 ώρες για νέες προσλήψεις, 12 ώρες ετησίως refresh (τεκμηριώνεται στο LMS).  
- Αποτελέσματα ελέγχων αναφέρονται στο ΔΣ και στην ΕΕΤΤ εντός 30 ημερών.

## 7. Διαχείριση Αλλαγών & Επικαιροποίηση / Change Management & Review
- Κάθε αλλαγή ISMS εισάγεται στο Jira (epic QTS-ISMS) και απαιτεί έγκριση CISO + COO.  
- Η πολιτική επανεξετάζεται τουλάχιστον ετησίως ή μετά από σημαντικό συμβάν. Το επόμενο review έχει προγραμματιστεί για 2026-02-15.  
- Όλες οι εγκεκριμένες αλλαγές κοινοποιούνται στους εργαζομένους και στους παρόχους υπηρεσιών μέσω του intranet και επίσημων circulars.

---

**Ψηφιακή Βεβαίωση / Digital Attestation:** Το παρόν έγγραφο εγκρίθηκε από τον CISO και θα συνυπογραφεί με QSeal (σειριακό `0x93BE5520C1AD77EF`) κατά την τελική συσκευασία φακέλου 04.
