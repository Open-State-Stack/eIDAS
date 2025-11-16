# ΔΙΑΔΙΚΑΣΙΕΣ ΔΙΑΧΕΙΡΙΣΗΣ ΚΛΕΙΔΙΩΝ / KEY MANAGEMENT PROCEDURES

**Πάροχος / Provider:** Ελληνικές Υπηρεσίες Εμπιστοσύνης Α.Ε. (Greek Trust Services S.A.)  
**Έκδοση / Version:** 1.0  
**Ημερομηνία / Date:** 2025-05-20  
**Ιδιοκτήτης / Owner:** Head of PKI Operations (crypto@greektrustservices.gr)  

## 1. Σκοπός & Πεδίο / Purpose & Scope
Το έγγραφο καθορίζει τις διαδικασίες δημιουργίας, αποθήκευσης, χρήσης, backup και καταστροφής κρυπτογραφικών κλειδιών για Root CA, Issuing CAs, TSA, Remote QSCD, OCSP/CRL και υπηρεσίες σφραγίδας. Παρέχεται σε διγλωσσική μορφή για να καλύπτει τις απαιτήσεις EETT Article 10.4, eIDAS Annex II και ETSI EN 319 411-1 §7.

## 2. Εργαλεία & Ρόλοι / Tools & Roles
- **HSM Stack:** Thales Luna Network HSM 7, firmware 7.6.0, FIPS 140-2 Level 3, Common Criteria EAL4+.  
- **Custodians:** 5 συνολικά, M=3 threshold· όλα τα smart cards φυλάσσονται σε fire-rated safe.  
- **Crypto Officer:** Σοφία Παπαδημητρίου (crypto@greektrustservices.gr) – υπεύθυνη για M-of-N τελετές.

## 3. Δημιουργία Κλειδιών / Key Generation
1. Προγραμματισμός τελετής (Change ticket PKI-KEY-XX).  
2. Έλεγχος HSM health + firmware checksum.  
3. Τελετή σε offline θάλαμο (Root CA) ή σε Issuing CA cage (online), παρουσία δύο μαρτύρων.  
4. Καταγραφή σε Key Ceremony Script + βίντεο (συντηρείται σε WORM storage).  
5. Δημοσίευση Fingerprints σε `Supporting_Docs/Certifications/Key_Fingerprints.csv`.

## 4. Αποθήκευση & Πρόσβαση / Storage & Access
- Τα Root CA private keys βρίσκονται σε offline HSM· ενεργοποιούνται μόνο για υπογραφές subordinate certificates (≤ 4 φορές/έτος).  
- Issuing CA & TSA keys λειτουργούν σε HA pairs με dual control login (Crypto Officer + Security Officer).  
- QSCD signing keys φιλοξενούνται σε dedicated cluster με Signature Activation Module (SAM) integration (βλ. Appendix A).

## 5. Backup & Αναπαραγωγή / Backup & Replication
- Εβδομαδιαία HSM backup tokens (encrypted) αποθηκεύονται σε fireproof safe στο Μαρούσι + off-site safe στη Θεσσαλονίκη.  
- Backup πρόγραμμα: Primary tokens -> Secondary site -> Verification σε isolated HSM για ακεραιότητα.  
- Ελέγχονται ανά τρίμηνο (Restore test PKI-RESTORE-XX).

## 6. Χρήση & Επιθεώρηση / Usage & Audit
- Όλες οι λειτουργίες key usage logαρουνται (audit flag ON) και αποστέλλονται στο SIEM μέσα σε 60 δευτερόλεπτα.  
- Quarterly key usage review από τον CISO + External Auditor (TÜV Hellas).  
- Απόκλιση ή μη εξουσιοδοτημένη πρόσβαση → ενεργοποίηση Incident Plan επιπέδου 3.

## 7. Ανανέωση & Καταστροφή / Renewal & Destruction
- Issuing CAs ανανεώνονται ανά 8 έτη (ή νωρίτερα εάν αλλάξουν crypto suites).  
- Όταν ένα κλειδί αποσύρεται, οι smart cards καταστρέφονται με ασφαλή αποκοπή και καταγραφή στο Certificate of Destruction (υπογραφή δύο μαρτύρων).  
- Τα metadata (serials, key IDs, validity) ενημερώνονται στο Key Inventory (SharePoint list).

## 8. Συμμόρφωση & Τεκμηρίωση / Compliance & Documentation
- Όλες οι διαδικασίες συνδέονται στο Evidence Register Annex B με IDs EV-501 έως EV-520.  
- Traceability: `03a_Traceability_Matrix` entries `eIDAS-24-2-c`, `EETT-Art4-2`, `ETSI-411-1-7.4`.
- Η πολιτική επανεξετάζεται ετησίως ή μετά από σημαντικό crypto advisory (π.χ. αλλαγές NIST, ENISA).

---
**Ψηφιακή Επικύρωση:** Το έγγραφο θα υπογραφεί με το QSeal `0x93BE5520C1AD77EF` κατά την τελική πακετοποίηση Doc 04.
