# ΣΧΕΔΙΟ ΣΥΝΕΧΕΙΑΣ ΕΠΙΧΕΙΡΗΣΕΩΝ & ΑΠΟΚΑΤΑΣΤΑΣΗΣ / BUSINESS CONTINUITY & DR PLAN

**Οργανισμός / Company:** Ελληνικές Υπηρεσίες Εμπιστοσύνης Α.Ε.  
**Έκδοση / Version:** 1.0  
**Ημερομηνία / Date:** 2025-05-30  
**Ιδιοκτήτης / Owner:** Διευθυντής Λειτουργιών (COO) σε συνεργασία με τον CISO & QTS Manager  

## 1. Στόχοι / Objectives
- **Διαθεσιμότητα:** Διατήρηση SLA 99.95% για QES/QSeal/QTS υπηρεσίες (OCSP, CRL, TSA, Remote QSCD).
- **RTO / RPO:** RTO = 4 ώρες, RPO = 15 λεπτά (δεδομένα HSM audit logs, RA evidence).
- **Υποχρεώσεις eIDAS/EETT:** Κάλυψη Άρθρου 24(2)(γ) eIDAS και Άρθρου 10.11 EETT (Business Continuity).

## 2. Υποδομή & Αρχιτεκτονική / Infrastructure Layout
- **Πρωτεύον Κέντρο Δεδομένων:** Athens DC Campus (Koropi) – ISO 27001 & ISO 22301 certified, διπλή τροφοδοσία, Inergen IG-541.
- **Δευτερεύον DC:** Thessaloniki DC (Sindos) – γεωγραφική απόσταση 520 km, σύνδεση 10 Gbps με MPLS + IPSec backup.
- **Root CA Vault:** Offline θάλαμος σε Μαρούσι με αέρα θετικής πίεσης και HSM back-ups (2 συσκευές).

## 3. Σενάρια & Στρατηγικές / Scenarios & Strategies
| Σενάριο | Αντίδραση | Χρονικό πλαίσιο |
|---------|-----------|-----------------|
| Απώλεια Issuing CA site | Ενεργοποίηση DR runbook “PKI-DR-01”, μεταφορά υπηρεσιών σε Thessaloniki DC, ενημέρωση ΕΕΤΤ εντός 24h. | 2 ώρες |
| Διαθεσιμότητα QSCD | Failover σε δευτερεύον QSCD cluster (Swisscom Trust Services). | < 30 λεπτά |
| Πλήρης διακοπή OCSP/CRL | Επικοινωνία με πελάτες μέσω Notification Template 08, fallback σε offline CRL δημοσιεύσεις κάθε 30’. | 1 ώρα |

## 4. Ρόλοι & Ομάδες / Roles & Teams
- **Crisis Management Team (CMT):** CEO, COO, CISO, QTS Manager, Head of Communications.
- **Technical Recovery Team:** PKI lead, Network lead, HSM custodians (M=3).
- **Business Recovery Team:** RA Manager, Customer Success lead, Legal counsel (για υποχρεωτικές κοινοποιήσεις).

## 5. Διαδικασία Ενεργοποίησης / Activation Workflow
1. **Detection:** SOC ή υπηρεσία monitoring (Splunk ES) παράγει alert SEV-1 ή SEV-2.
2. **Assessment:** CISO + COO αξιολογούν RTO/RPO επιπτώσεις.  
3. **Declaration:** CEO ή COO εκδίδει επίσημο BCP Declaration (template BCP-DECL-04).
4. **Response:** Εκκίνηση κατάλληλων runbooks (PKI, QSCD, Network, Facilities).
5. **Communication:** Χρήση των `08_User_Notifications` templates για ενημέρωση πελατών και ΕΕΤΤ (εντός 24h).
6. **Recovery Verification:** Τεκμηρίωση σε DR Validation Form και ενημέρωση Board Risk Committee.

## 6. Δοκιμές & Εκπαίδευση / Testing & Training
- **DR Tests:** Δύο φορές τον χρόνο (Απρίλιος & Οκτώβριος). Τελευταίο τεστ: 2024-10-18 (πετυχημένο failover σε Thessaloniki DC).
- **Tabletop Exercises:** Συνεργασία με Incident Response ομάδα (Φάκελος 07a) για κοινό σενάριο Key compromise + DC outage.
- **Εκπαίδευση:** Όλοι οι κρίσιμοι ρόλοι ολοκληρώνουν 12 ώρες BCP training ανά έτος.

## 7. Επικαιροποίηση / Maintenance
- Η πολιτική αναθεωρείται ετησίως ή μετά από σημαντική αλλαγή υποδομής.
- Τα runbooks φυλάσσονται στο εσωτερικό Confluence (`BCP-Space`) με ελεγχόμενη πρόσβαση (RBAC).
- Hashes των runbooks καταγράφονται στο Evidence Register (Annex B) για απόδειξη ακεραιότητας.

## 8. Σύνδεση με Άλλα Έγγραφα / Related Documents
- `Information_Security_Policy_GR_EN.md` – §4.3 (Infrastructure safeguards).
- `07a_Incident_Response_Plan_GR_EN.pdf` – Level 3/4 escalation.
- `09_Service_Termination_Plan_GR_EN.pdf` – Μετατροπή BCP σε οριστική διακοπή (εάν απαιτείται).

---
**Next Action:** Δημοσίευση PDF και εφαρμογή QSeal πριν την ενσωμάτωση στις συσκευασίες Doc 03 & Doc 16.
