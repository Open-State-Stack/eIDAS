# Ανάκληση Πιστοποιητικού & Έλεγχος Εγκυρότητας

Η ασφάλειά σας είναι η πρώτη μας προτεραιότητα. Η **[LEGAL_NAME_GR]** παρέχει απλές, γρήγορες και ασφαλείς μεθόδους για την ανάκληση του πιστοποιητικού σας, 24 ώρες το 24ωρο.

**ΠΟΤΕ ΠΡΕΠΕΙ ΝΑ ΑΝΑΚΑΛΕΣΩ ΤΟ ΠΙΣΤΟΠΟΙΗΤΙΚΟ ΜΟΥ;**

Πρέπει να ζητήσετε **αμέσως** την ανάκληση του πιστοποιητικού σας εάν:
-   Χάσατε ή σας έκλεψαν τη συσκευή σας (USB token, smart card).
-   Υποπτεύεστε ότι κάποιος άλλος γνωρίζει το PIN ή τον κωδικό πρόσβασής σας.
-   Ο υπολογιστής σας έχει μολυνθεί από ιό.
-   Τα στοιχεία του πιστοποιητικού σας (π.χ. το όνομά σας) δεν είναι πλέον σωστά.

Η ανάκληση είναι η οριστική ακύρωση του πιστοποιητικού σας για την προστασία σας από μη εξουσιοδοτημένη χρήση.

---

## 1. Τρόποι Ανάκλησης (24/7)

### Α. Τηλεφωνική Γραμμή (Συνιστάται για έκτακτη ανάγκη)
Ιδανικό για άμεση δράση, οποιαδήποτε στιγμή της ημέρας.
-   **Καλέστε στο:** **<a href="tel:[REVOCATION_HOTLINE]">[REVOCATION_HOTLINE]</a>** (χωρίς χρέωση)
-   **Ώρες:** 24/7/365
-   **Διαδικασία:** Ένας εκπρόσωπός μας θα σας ζητήσει να επιβεβαιώσετε την ταυτότητά σας απαντώντας σε μερικές ερωτήσεις ασφαλείας που ορίσατε κατά την εγγραφή σας.

### Β. Διαδικτυακή Πύλη (Web Portal)
Γρήγορος και εύκολος τρόπος εάν έχετε πρόσβαση στον λογαριασμό σας.
-   **Επισκεφθείτε τη διεύθυνση:** **<a href="https://[WEBSITE_URL]/revoke" target="_blank">[WEBSITE_URL]/revoke</a>**
-   **Πρόσβαση:** Συνδεθείτε με τα διαπιστευτήριά σας.
-   **Διαδικασία:** Επιλέξτε το πιστοποιητικό προς ανάκληση και επιβεβαιώστε την ενέργειά σας.

### Γ. Ηλεκτρονικό Ταχυδρομείο (Email)
Για μη επείγουσες, τεκμηριωμένες αιτήσεις.
-   **Στείλτε email στο:** **[REVOCATION_EMAIL]**
-   **Απαιτήσεις:** Το αίτημά σας πρέπει να είναι ψηφιακά υπογεγραμμένο με ένα άλλο έγκυρο πιστοποιητικό σας. Αιτήματα χωρίς υπογραφή δεν θα γίνονται δεκτά για λόγους ασφαλείας.

---

## 2. Χρόνος Επεξεργασίας και Επιβεβαίωση

Μόλις το αίτημά σας επικυρωθεί, το πιστοποιητικό σας ανακαλείται αμέσως. Η κατάσταση ανάκλησης δημοσιεύεται στις υπηρεσίες ελέγχου (OCSP) εντός **15 λεπτών**, διασφαλίζοντας ότι κανείς δεν μπορεί πλέον να το εμπιστευτεί. Θα λάβετε επιβεβαίωση μέσω email και SMS.

---

## 3. Πώς να Ελέγξετε την Κατάσταση ενός Πιστοποιητικού (Για Αποδέκτες)

Ως αποδέκτης μιας ηλεκτρονικής υπογραφής, είναι κρίσιμο να ελέγχετε πάντα εάν το πιστοποιητικό του υπογράφοντος είναι έγκυρο. Το λογισμικό που χρησιμοποιείτε (π.χ. Adobe Reader) το κάνει αυτό αυτόματα, χρησιμοποιώντας τις παρακάτω υπηρεσίες μας:

-   **Υπηρεσία OCSP (Online Certificate Status Protocol):** Παρέχει μια άμεση απάντηση "έγκυρο" ή "άκυρο/ανακληθέν".
    -   `http://ocsp.[DOMAIN].gr`
-   **Λίστες Ανάκλησης Πιστοποιητικών (CRLs):** Λίστες με όλα τα πιστοποιητικά που έχουν ανακληθεί.
    -   Πλήρης CRL: `http://crl.[DOMAIN].gr/crl/full.crl`
    -   Delta CRL: `http://crl.[DOMAIN].gr/crl/delta.crl`

Δεν χρειάζεται να κάνετε κάτι χειροκίνητα. Απλώς βεβαιωθείτε ότι το λογισμικό σας είναι ρυθμισμένο να ελέγχει την κατάσταση ανάκλησης.

---

## 4. Συχνές Ερωτήσεις (FAQ)

**Ε: Μπορώ να ακυρώσω μια ανάκληση;**  
**Α:** Όχι. Η ανάκληση είναι οριστική και μη αναστρέψιμη για την προστασία όλων των μερών. Εάν ανακαλέσετε ένα πιστοποιητικό κατά λάθος, θα πρέπει να υποβάλετε αίτηση για την έκδοση ενός νέου.

**Ε: Τι είναι η προσωρινή αναστολή (suspension);**  
**Α:** Εάν έχετε χάσει προσωρινά τη συσκευή σας (π.χ. ξεχάσατε το USB token στο γραφείο), προσφέρουμε τη δυνατότητα προσωρινής αναστολής για έως και 30 ημέρες. Αυτό καθιστά το πιστοποιητικό προσωρινά άκυρο. Εάν βρείτε τη συσκευή σας εντός 30 ημερών, μπορούμε να το επαναφέρουμε. Διαφορετικά, ανακαλείται οριστικά.

**Ε: Κοστίζει η ανάκληση;**  
**Α:** Όχι, η διαδικασία ανάκλησης παρέχεται δωρεάν.

**Ε: Τι πρέπει να κάνω μετά την ανάκληση;**  
**Α:** Πρέπει να υποβάλετε αίτηση για την έκδοση ενός νέου πιστοποιητικού για να μπορείτε να συνεχίσετε να υπογράφετε ψηφιακά.

Για οποιαδήποτε απορία, επικοινωνήστε με την εξυπηρέτηση πελατών στο **[PUBLIC_PHONE]**.

---
---

# (English Version for International Relying Parties)

_[This section should contain the English translation of the content above, ensuring all links and contact information are relevant for an international audience.]_

## Certificate Revocation & Validity Status

Your security is our top priority. **[LEGAL_NAME_EN]** provides simple, fast, and secure methods to revoke your certificate, 24 hours a day.

**WHEN SHOULD I REVOKE MY CERTIFICATE?**

You must **immediately** request the revocation of your certificate if:
-   Your device (USB token, smart card) is lost or stolen.
-   You suspect that someone else knows your PIN or password.
-   Your computer has been infected with a virus.
-   The information in your certificate (e.g., your name) is no longer correct.

Revocation is the permanent invalidation of your certificate to protect you from unauthorized use.

---

## 1. Revocation Methods (24/7)

### A. Revocation Hotline (Recommended for emergencies)
Ideal for immediate action, any time of day.
-   **Call:** **<a href="tel:[REVOCATION_HOTLINE]">[REVOCATION_HOTLINE]</a>**
-   **Hours:** 24/7/365
-   **Process:** Our representative will ask you to confirm your identity by answering a few security questions you set during registration.

### B. Web Portal
Quick and easy if you have access to your account.
-   **Visit:** **<a href="https://[WEBSITE_URL]/revoke" target="_blank">[WEBSITE_URL]/revoke</a>**
-   **Access:** Log in with your credentials.
-   **Process:** Select the certificate to revoke and confirm your action.

### C. Email
For non-urgent, documented requests.
-   **Send an email to:** **[REVOCATION_EMAIL]**
-   **Requirement:** Your request must be digitally signed with another valid certificate you own. Unsigned requests will not be processed for security reasons.

---

## 2. Processing Time and Confirmation

Once your request is validated, your certificate is revoked immediately. The revocation status is published to our status services (OCSP) within **15 minutes**, ensuring no one can rely on it thereafter. You will receive a confirmation via email and SMS.

---

## 3. How to Check a Certificate's Status (For Relying Parties)

As a recipient of a digital signature, it is critical to always check if the signer's certificate is valid. The software you use (e.g., Adobe Reader) does this automatically by using our public services:

-   **OCSP (Online Certificate Status Protocol):** Provides an immediate "valid" or "revoked" response.
    -   `http://ocsp.[DOMAIN].gr`
-   **Certificate Revocation Lists (CRLs):** Lists of all revoked certificates.
    -   Full CRL: `http://crl.[DOMAIN].gr/crl/full.crl`
    -   Delta CRL: `http://crl.[DOMAIN].gr/crl/delta.crl`

You do not need to do anything manually. Just ensure your software is configured to check revocation status.

---

## 4. Frequently Asked Questions (FAQ)

**Q: Can I undo a revocation?**  
**A:** No. Revocation is permanent and irreversible to protect all parties. If you revoke a certificate by mistake, you will need to apply for a new one.

**Q: What is suspension?**  
**A:** If you have temporarily misplaced your device (e.g., left your USB token at the office), we offer a temporary suspension for up to 30 days. This renders the certificate temporarily invalid. If you find your device within 30 days, we can reinstate it. Otherwise, it is permanently revoked.

**Q: Is there a fee for revocation?**  
**A:** No, the revocation process is provided free of charge.

**Q: What should I do after revocation?**  
**A:** You must apply for a new certificate to continue signing digitally.

For any questions, please contact customer service at **[PUBLIC_PHONE]**.