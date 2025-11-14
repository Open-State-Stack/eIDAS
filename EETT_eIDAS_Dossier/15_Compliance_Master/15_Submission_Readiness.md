# 15 – Compliance Master Readiness

Η τρέχουσα έκδοση του προτύπου ΕΕΤΤ δεν περιλαμβάνει ξεχωριστή ενότητα 15. Η λειτουργικότητα του «Compliance Master Register» φιλοξενείται στο φάκελο `19_Compliance_Register` (PDF/MD) ώστε να αποφεύγεται διπλή συντήρηση. Ο παρών φάκελος διατηρεί δείκτη κατάστασης και θα φιλοξενήσει το υπογεγραμμένο Excel όταν παραχθεί.

| Item | Evidence / Location | Status | Notes |
|------|--------------------|--------|-------|
| Master register (PDF) | `19_Compliance_Register/19_Master_Compliance_Register.pdf` | ✅ Ready | Περιλαμβάνει mapping eIDAS/EETT/ETSI → Evidence + status column. Απαιτεί οριστική ψηφιακή υπογραφή πριν αποστολή. |
| Working copy (MD) | `19_Compliance_Register/19_Master_Compliance_Register.md` | ✅ Up to date | Διατηρεί hyperlinks προς Doc 01–20 και checklist «red-team». |
| Narrative | `19_Compliance_Register/Compliance_Register.md` | ✅ | Περιγράφει μεθοδολογία, υπεύθυνους και ροή ενημέρωσης. |
| Excel export | `15_Master_Compliance_Register.xlsx` (Doc 15 & 19) | ✅ Generated | Περιλαμβάνει σύνοψη eIDAS/EETT με στήλη \"Last Control Test\". Απαιτεί τελική QES υπογραφή πριν υποβολή. |

## Outstanding
- ⚠️ Εφαρμογή QES (PAdES/ASiC) στο XLSX πριν την παράδοση και καταγραφή της ημερομηνίας στο `15_Compliance_Master_PLACEHOLDER.txt`.
- ⚠️ Συνέχιση συγχρονισμού XLSX ↔ PDF/MD (Doc 19) για κάθε μελλοντική αλλαγή.
