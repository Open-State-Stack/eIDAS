# ΔΕΛΤΙΟ ΔΕΔΟΜΕΝΩΝ ΓΙΑ ΔΗΜΟΣΙΕΥΣΗ ΣΤΟΝ ΕΘΝΙΚΟ ΚΑΤΑΛΟΓΟ ΕΜΠΙΣΤΟΣΥΝΗΣ (NTL)
## Datasheet for Publication in the National Trust List (NTL)

**Εταιρεία / Company:** [LEGAL_NAME_GR] / [LEGAL_NAME_EN]  
**Ημερομηνία Υποβολής / Submission Date:** [DATE_POST_APPROVAL]  
**Αριθμός Έγκρισης ΕΕΤΤ / EETT Approval Number:** [EETT_APPROVAL_NUMBER]  
**Έκδοση Εγγράφου / Document Version:** 1.0  
**Κατάσταση / Status:** READY FOR POST-APPROVAL SUBMISSION

---

## 📋 FRONT-MATTER COMPLIANCE CHECKLIST

| Regulation | Requirement | Coverage in This Document |
|:-----------|:------------|:--------------------------|
| **eIDAS Regulation (EU) 910/2014** | | |
| Article 22(1) | Trusted List publication by Member State | NTL datasheet enables EETT to publish TSP information |
| Article 22(3) | Trusted List format per Commission Decision | ETSI TS 119 612 v2.3.1 compliance (XML schema mapping in §6) |
| Article 22(5) | TSP information accuracy | All fields cross-validated with Docs 02, 03, 06 |
| **EETT Κανονισμός Παρόχων Υπηρεσιών Εμπιστοσύνης** | | |
| Article 3.3 | Public contact information for NTL | §1 - Sheet 1: TSP Information |
| Article 6.6 | Post-approval NTL listing | §2 - Sheet 2: Service Information (submitted after approval) |
| **ETSI TS 119 612 v2.3.1** | | |
| §5.3 | TSP Information structure | §1 - Sheet 1 mapping to `TrustServiceProvider` element |
| §5.5 | Service Information structure | §2 - Sheet 2 mapping to `TSPService` element |
| §5.5.3 | Service Digital Identity | §2 - CA certificate PEM format per RFC 7468 |
| §5.5.9 | Service Supply Points | §2 - CP, OCSP, CRL, TSA URLs |
| Annex C | Service Type Identifiers | §2 - OID list with exact identifiers |

---

## 📌 DOCUMENT OVERVIEW

**Σκοπός / Purpose:**  
Αυτό το δελτίο υποβάλλεται στην ΕΕΤΤ **μετά** τη λήψη της έγκρισης για παροχή εγκεκριμένων υπηρεσιών. Προορίζεται για την αυτόματη επεξεργασία και δημοσίευση των στοιχείων του Παρόχου στον Εθνικό Κατάλογο Εμπιστοσύνης (NTL), σύμφωνα με το πρότυπο **ETSI TS 119 612 v2.3.1**.

**Purpose:**  
This datasheet is submitted to EETT **after** receiving approval to provide qualified trust services. It is designed for automated processing and publication of the Provider's information to the National Trust List (NTL), in accordance with **ETSI TS 119 612 v2.3.1** standard.

**Χρόνος Υποβολής / Submission Timing:**  
- ⏰ **Immediately after** EETT approval decision received (target: within 3 working days)
- 🎯 **Before** commencing any qualified service operations
- ✅ **After** all CA certificates are generated and tested (Doc 06 artifacts ready)
- ✅ **After** all service endpoints (OCSP, CRL, TSA) are operational and publicly accessible

**Μορφή Αρχείου / File Format:**  
- **Προτιμώμενο / Preferred:** Excel (.xlsx) με 3 φύλλα / with 3 sheets
- **Εναλλακτικό / Alternative:** XML per ETSI TS 119 612 schema (αυτόματη μετατροπή / automated conversion available)
- **Κωδικοποίηση / Encoding:** UTF-8 (για υποστήριξη ελληνικών χαρακτήρων / for Greek character support)

**Διασύνδεση με Άλλα Έγγραφα / Cross-Document Integration:**
- 📄 **Doc 02:** TSP information must match application (legal name, address, contacts)
- 📄 **Doc 03:** Service types and CAB name must match CAR
- 📄 **Doc 06:** CA certificates (PEM) must match test certificates
- 📄 **Doc 05:** Service URLs must match those declared in TSPS
- 📄 **Doc 19:** OIDs must match Master Compliance Register

---

## 📄 SECTION 1: TSP INFORMATION (Φύλλο 1 / Sheet 1)

**Αντιστοίχιση XML / XML Mapping:** `<TrustServiceProvider>` element per ETSI TS 119 612 §5.3

**GR:** Αυτό το φύλλο περιέχει τις γενικές πληροφορίες που ταυτοποιούν τον Πάροχο Υπηρεσιών Εμπιστοσύνης (ΠΠΥΕ).  
**EN:** This sheet contains the general information identifying the Trust Service Provider (TSP).

### 1.1 TSP IDENTIFICATION FIELDS

| Πεδίο (Field) | GR Value | EN Value | Σημειώσεις / Notes | XML Element | Validation Rules |
|:--------------|:---------|:---------|:-------------------|:------------|:-----------------|
| **TSP Name** | [LEGAL_NAME_GR] | [LEGAL_NAME_EN] | **Υποχρεωτικό / Mandatory.** Πλήρης νομική επωνυμία όπως στο καταστατικό. / Full legal name as in articles of incorporation. **Must match Doc 02 Part A.** | `<Name xml:lang="el-GR">` and `<Name xml:lang="en">` | Max 200 chars. Must not contain special chars: <>"|&. Must match Greek Registry (ΓΕΜΗ). |
| **TSP Trade Name** | [TRADE_NAME_GR] | [TRADE_NAME_EN] | **Προαιρετικό / Optional.** Εμπορική επωνυμία, εάν διαφέρει από τη νομική. / Trade name, if different from legal name. | `<TradeName xml:lang="el-GR">` | If empty, leave blank. Max 200 chars. |
| **TSP Address - Street** | [STREET_ADDRESS_GR] | [STREET_ADDRESS_EN] | **Υποχρεωτικό / Mandatory.** Οδός και αριθμός. / Street and number. **Must match Doc 02 registered address.** | `<AddressLine>` | Max 100 chars. Must include street number. |
| **TSP Address - City** | [CITY_GR] | [CITY_EN] | **Υποχρεωτικό / Mandatory.** Πόλη. / City. | `<Locality>` | Max 50 chars. For Athens, use: "Αθήνα" (GR) / "Athens" (EN). |
| **TSP Address - Postal Code** | [POSTAL_CODE] | [POSTAL_CODE] | **Υποχρεωτικό / Mandatory.** Ταχυδρομικός κώδικας (5ψήφιος). / Postal code (5 digits). | `<PostalCode>` | Format: `^\d{5}$` (exactly 5 digits). E.g., "10564". |
| **TSP Address - State/Region** | [REGION_GR] | [REGION_EN] | **Προαιρετικό / Optional.** Νομός ή Περιφέρεια. / Prefecture or Region. | `<StateOrProvince>` | E.g., "Αττική" / "Attica". Max 50 chars. |
| **TSP Address - Country** | Ελλάδα | Greece | **Υποχρεωτικό / Mandatory.** Πάντα "Ελλάδα" / "Greece" για ελληνικούς παρόχους. / Always "Greece" for Greek TSPs. | `<CountryName>` | Fixed values. Do not translate differently. |
| **TSP Address - Country Code** | GR | GR | **Υποχρεωτικό / Mandatory.** ISO 3166-1 alpha-2. | `<tsl:SchemeTerritory>` (root level) | Fixed: "GR". Do not change. |
| **TSP Information URI** | `https://[WEBSITE_URL]/` | `https://[WEBSITE_URL]/` | **Υποχρεωτικό / Mandatory.** Κεντρική ιστοσελίδα του Παρόχου με πληροφορίες υπηρεσιών. / Main website with service information. **Must be HTTPS.** Must return HTTP 200 (not 404). | `<URI xml:lang="el-GR">` and `<URI xml:lang="en">` | Valid URL format. HTTPS required. Must resolve (test before submission). Max 255 chars. |
| **TSP Contact - Email** | [PUBLIC_EMAIL] | [PUBLIC_EMAIL] | **Υποχρεωτικό / Mandatory.** Δημόσια διεύθυνση email επικοινωνίας (π.χ. info@..., trust@...). / Public contact email. **Must be monitored 24×7 or weekdays 9-17 EET (specify in Doc 13).** | `<ElectronicAddress>` (URI scheme: mailto:) | Valid email format: `^[^@]+@[^@]+\.[^@]+$`. Must be public-facing (not personal). |
| **TSP Contact - Phone** | [PUBLIC_PHONE] | [PUBLIC_PHONE] | **Υποχρεωτικό / Mandatory.** Δημόσιος αριθμός τηλεφώνου με διεθνή κωδικό. / Public phone with intl code. | `<TelephoneNumber>` | Format: `+30 XXX XXXXXXX` (include +30). Must be reachable during business hours. |
| **EETT Registration Number** | [EETT_REG_NUMBER] | [EETT_REG_NUMBER] | **Υποχρεωτικό / Mandatory.** Αριθμός Μητρώου Παρόχων της ΕΕΤΤ (λαμβάνεται μετά την εγγραφή Doc 01). / EETT Provider Registry Number (received after Doc 01 registration). | `<Extension><ProviderRegistrationID>` (custom extension) | Format: "EETT-TSP-YYYY-NNN" (e.g., "EETT-TSP-2025-001"). Verify with EETT confirmation letter. |
| **TSP Status** | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` | **Υποχρεωτικό / Mandatory.** Κατάσταση "χορηγήθηκε" (granted) μετά την έγκριση. / Status "granted" after approval. | `<Status>` | **Fixed URI** (do not modify). Other values: `.../undersupervision`, `.../accredited`, `.../withdrawn`, `.../revoked` - use only if EETT directs status change. |
| **TSP Status Starting Date** | [APPROVAL_DATE] | [APPROVAL_DATE] | **Υποχρεωτικό / Mandatory.** Ημερομηνία απόφασης ΕΕΤΤ για έγκριση (από το έγγραφο έγκρισης). / Date of EETT approval decision. | `<StartingTime>` | Format: `YYYY-MM-DDTHH:MM:SSZ` (UTC). E.g., "2025-06-15T09:00:00Z". Must match EETT approval letter date. |
| **Scheme Territory** | GR | GR | **Υποχρεωτικό / Mandatory.** Κωδικός χώρας. / Country code. | `<tsl:SchemeTerritory>` | Fixed: "GR". |
| **Scheme Name** | Ελληνικός Κατάλογος Εμπιστοσύνης | Greek Trust List | **Υποχρεωτικό / Mandatory.** Όνομα του εθνικού καταλόγου. / Name of national trust list. | `<tsl:SchemeName>` | Fixed values. EETT will populate. |
| **Scheme Operator** | Εθνική Επιτροπή Τηλεπικοινωνιών και Ταχυδρομείων (ΕΕΤΤ) | Hellenic Telecommunications and Post Commission (EETT) | **Υποχρεωτικό / Mandatory.** Εποπτική αρχή. / Supervisory authority. | `<tsl:SchemeOperatorName>` | Fixed values. Do not modify. |

### 1.2 VALIDATION CHECKLIST FOR SHEET 1

Before submitting, verify:

- ☐ **Legal Name** matches Doc 02 Part A and ΓΕΜΗ registry
- ☐ **Address** matches Doc 02 and company registration documents
- ☐ **Website URL** is accessible via HTTPS (test: `curl -I https://[WEBSITE_URL]/` returns 200)
- ☐ **Email** is monitored (send test email, confirm receipt)
- ☐ **Phone** is reachable (place test call during business hours)
- ☐ **EETT Reg Number** matches Doc 01 approval letter
- ☐ **Status Starting Date** matches EETT approval decision date
- ☐ **Greek/English fields** are accurate translations (no Google Translate artifacts)
- ☐ **No placeholder brackets** remain (e.g., `[LEGAL_NAME_GR]`)

---

## 📄 SECTION 2: SERVICE INFORMATION (Φύλλο 2 / Sheet 2)

**Αντιστοίχιση XML / XML Mapping:** `<TSPService>` elements per ETSI TS 119 612 §5.5 (one per service)

**GR:** Αυτός ο πίνακας περιέχει μία γραμμή για κάθε εγκεκριμένη υπηρεσία που παρέχεται, με όλες τις απαραίτητες τεχνικές και εποπτικές πληροφορίες.  
**EN:** This table contains one row for each qualified service provided, with all necessary technical and supervisory information.

### 2.1 SERVICE ENTRY STRUCTURE

**Σημαντικό / Important:** Συμπληρώστε μία γραμμή για κάθε **διακριτή υπηρεσία**. Εάν παρέχετε πολλούς τύπους υπηρεσιών (π.χ. QES + QSeal + QTS + QWAC), προσθέστε 4 γραμμές.  
**Important:** Fill one row per **distinct service**. If you provide multiple service types (e.g., QES + QSeal + QTS + QWAC), add 4 rows.

---

### 2.2 SERVICE FIELDS TABLE

| Field Name | Service 1 Example (QES) | Field Description & Validation | XML Element |
|:-----------|:------------------------|:-------------------------------|:------------|
| **Service Type Identifier (OID)** | `0.4.0.194112.1.0` | **Υποχρεωτικό / Mandatory.** Service type OID per **ETSI TS 119 612 v2.3.1 Annex C**. **Must match Doc 02 Part B checkboxes and Doc 06 certificate profiles.** | `<ServiceTypeIdentifier>` |
| | | **Valid OIDs for Greek TSPs:** | |
| | | • `0.4.0.194112.1.0` - Qualified certificates for electronic signatures (natural persons) | |
| | | • `0.4.0.194112.1.1` - Qualified certificates for electronic signatures (legal persons) | |
| | | • `0.4.0.194112.1.3` - Qualified certificates for electronic seals | |
| | | • `0.4.0.194112.1.5` - Qualified time-stamping | |
| | | • `0.4.0.194112.1.6` - Qualified electronic delivery service (REM) | |
| | | • `0.4.0.194112.1.7` - Qualified validation service for qualified e-signatures | |
| | | • `0.4.0.194112.1.8` - Qualified preservation service for qualified e-signatures | |
| | | • `0.4.0.194112.1.9` - Qualified website authentication certificates | |
| | | **Validation:** Must be exact OID from list above. **Cross-check with Doc 19 Master Register.** | |
| **Service Name (GR)** | Εγκεκριμένα Πιστοποιητικά Ηλεκτρονικής Υπογραφής | **Υποχρεωτικό / Mandatory.** Greek name of the service. **Use standard terminology from eIDAS Greek translation.** | `<Name xml:lang="el-GR">` |
| | | Max 200 chars. Must match terminology in Doc 04 (TSP Policy). | |
| **Service Name (EN)** | Qualified Certificates for Electronic Signatures | **Υποχρεωτικό / Mandatory.** English name of the service. **Use standard ETSI terminology.** | `<Name xml:lang="en">` |
| | | Max 200 chars. Must match eIDAS Regulation official English text. | |
| **Service Status** | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` | **Υποχρεωτικό / Mandatory.** Status URI per ETSI TS 119 612 §5.5.6. | `<ServiceStatus>` |
| | | **Fixed value:** `.../granted` (after approval). Do not change unless EETT instructs (e.g., `.../withdrawn`). | |
| **Status Starting Time (UTC)** | `2025-06-15T09:00:00Z` | **Υποχρεωτικό / Mandatory.** Date/time when service status became effective. **Use UTC timezone (Z suffix).** | `<StatusStartingTime>` |
| | | Format: `YYYY-MM-DDTHH:MM:SSZ` per ISO 8601. **Must match EETT approval decision datetime.** | |
| | | Validation: Must be ≤ current date. Must be ≥ company registration date. | |
| **Service Digital Identity** | `-----BEGIN CERTIFICATE-----`<br>`MIIFxTCCA62gAwIBAgIQABCD...`<br>`...`<br>`-----END CERTIFICATE-----` | **Υποχρεωτικό / Mandatory.** X.509 certificate of the **Issuing CA** that issues end-entity certificates for this service, in **PEM format** (RFC 7468). | `<DigitalIdentity><X509Certificate>` (base64, no PEM headers in XML) |
| | | **Source:** Extract from Doc 06 test certificates. **Must be the CA cert, NOT end-entity cert.** | |
| | | **For QES/QSeal/QWAC:** Issuing CA certificate (signs subscriber certs). | |
| | | **For QTS:** TSA CA certificate (signs TSA signing cert). | |
| | | **For Multi-Level PKI:** Use Sub-CA cert (not Root CA), unless Root directly issues. | |
| | | **Format:** Include full PEM-encoded cert with headers/footers. Each line max 64 chars (PEM standard). | |
| | | **Validation:** Parse as X.509 v3. Verify `BasicConstraints: CA=TRUE`. Verify not expired. Verify matches Doc 06 artifact. | |
| **Supply Point: CP (Certificate Policy)** | `https://[WEBSITE_URL]/repository/cp.pdf` | **Υποχρεωτικό / Mandatory.** URL to Certificate Policy (Doc 04) or Certificate Practice Statement (Doc 05). **Must be HTTPS. Must return HTTP 200 (PDF or HTML).** | `<ServiceSupplyPoint>` (repeated element) |
| | | **Must match URL declared in Doc 05 Section 1.** Test accessibility before submission. | |
| **Supply Point: OCSP (QES/QSeal/QWAC only)** | `http://ocsp.[DOMAIN_NAME]/` | **Υποχρεωτικό για QES/QSeal/QWAC / Mandatory for QES/QSeal/QWAC.** OCSP responder URL. **HTTP (not HTTPS) is standard for OCSP.** | `<ServiceSupplyPoint>` |
| | | **Must match URL in CA certificate AIA extension.** Test with: `openssl ocsp -issuer ca.crt -url http://ocsp... -serial 0x...` | |
| | | **Performance requirement:** Must respond within 200ms (99th percentile). | |
| **Supply Point: CRL (QES/QSeal/QWAC only)** | `http://crl.[DOMAIN_NAME]/issuing-ca.crl` | **Υποχρεωτικό για QES/QSeal/QWAC / Mandatory for QES/QSeal/QWAC.** CRL distribution point URL. **HTTP (not HTTPS) is standard for CRL.** | `<ServiceSupplyPoint>` |
| | | **Must match URL in CA certificate CRL Distribution Point extension.** Test with: `curl http://crl... -o test.crl && openssl crl -in test.crl -text` | |
| | | **Update frequency:** Must publish new CRL every 24 hours minimum (even if no revocations). | |
| **Supply Point: TSA (QTS only)** | `http://tsa.[DOMAIN_NAME]/` or `https://tsa.[DOMAIN_NAME]/` | **Υποχρεωτικό για QTS / Mandatory for QTS.** Timestamp Authority URL (RFC 3161 endpoint). **HTTPS recommended but HTTP acceptable.** | `<ServiceSupplyPoint>` |
| | | Test with: `openssl ts -query -data test.txt -cert -out req.tsq && curl -H "Content-Type: application/timestamp-query" --data-binary @req.tsq http://tsa... -o resp.tsr` | |
| | | **Performance requirement:** Must respond within 500ms (99th percentile). | |
| **Supply Point: Additional URLs** | `https://[WEBSITE_URL]/repository/cps.pdf` (link to TSPS/Doc 05) | **Προαιρετικό / Optional.** Additional relevant URLs (e.g., CPS, Revocation info page). | `<ServiceSupplyPoint>` (multiple allowed) |
| **Supervision Info: CAB Name** | [CAB_NAME] | **Υποχρεωτικό / Mandatory.** Name of Conformity Assessment Body (from Doc 03 cover page). | `<Extension><SupervisionInfo><CABName>` (custom extension) |
| | | **Must match CAB accreditation certificate.** E.g., "TÜV Austria Hellas", "SGS Greece", "DEKRA", "Bureau Veritas", etc. | |
| **Supervision Info: CAR URL** | `https://[WEBSITE_URL]/repository/car.pdf` or `https://[CAB_WEBSITE]/reports/[TSP_NAME]-CAR-2025.pdf` | **Υποχρεωτικό / Mandatory.** URL to publicly accessible Conformity Assessment Report (Doc 03). | `<Extension><SupervisionInfo><CARURL>` |
| | | **If CAB does not publish:** Host Doc 03 on your website. **If CAB publishes:** Use CAB's URL. | |
| | | **Must be HTTPS. Must return HTTP 200 (PDF).** Test accessibility. | |

---

### 2.3 SERVICE ENTRY EXAMPLES

Below are complete examples for four common service types:

#### **Example 1: Qualified Certificates for Electronic Signatures (Natural Persons)**

| Field | Value |
|:------|:------|
| **Service Type Identifier** | `0.4.0.194112.1.0` |
| **Service Name (GR)** | Εγκεκριμένα Πιστοποιητικά Ηλεκτρονικής Υπογραφής |
| **Service Name (EN)** | Qualified Certificates for Electronic Signatures |
| **Service Status** | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` |
| **Status Starting Time** | `2025-06-15T09:00:00Z` |
| **Service Digital Identity** | *(PEM-encoded Issuing CA certificate for QES - from Doc 06)* |
| **CP URL** | `https://example.gr/repository/cp-qes.pdf` |
| **OCSP URL** | `http://ocsp-qes.example.gr/` |
| **CRL URL** | `http://crl-qes.example.gr/issuing-ca-qes.crl` |
| **CPS URL** | `https://example.gr/repository/tsps-qes.pdf` |
| **CAB Name** | TÜV Austria Hellas S.A. |
| **CAR URL** | `https://example.gr/repository/car-2025.pdf` |

#### **Example 2: Qualified Certificates for Electronic Seals**

| Field | Value |
|:------|:------|
| **Service Type Identifier** | `0.4.0.194112.1.3` |
| **Service Name (GR)** | Εγκεκριμένα Πιστοποιητικά Ηλεκτρονικής Σφραγίδας |
| **Service Name (EN)** | Qualified Certificates for Electronic Seals |
| **Service Status** | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` |
| **Status Starting Time** | `2025-06-15T09:00:00Z` |
| **Service Digital Identity** | *(PEM-encoded Issuing CA certificate for QSeal - from Doc 06)* |
| **CP URL** | `https://example.gr/repository/cp-qseal.pdf` |
| **OCSP URL** | `http://ocsp-qseal.example.gr/` |
| **CRL URL** | `http://crl-qseal.example.gr/issuing-ca-qseal.crl` |
| **CPS URL** | `https://example.gr/repository/tsps-qseal.pdf` |
| **CAB Name** | TÜV Austria Hellas S.A. |
| **CAR URL** | `https://example.gr/repository/car-2025.pdf` |

#### **Example 3: Qualified Time-Stamping**

| Field | Value |
|:------|:------|
| **Service Type Identifier** | `0.4.0.194112.1.5` |
| **Service Name (GR)** | Εγκεκριμένη Υπηρεσία Ηλεκτρονικής Χρονοσήμανσης |
| **Service Name (EN)** | Qualified Time-Stamping Service |
| **Service Status** | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` |
| **Status Starting Time** | `2025-06-15T09:00:00Z` |
| **Service Digital Identity** | *(PEM-encoded TSA CA certificate - from Doc 06)* |
| **CP URL** | `https://example.gr/repository/tsa-policy.pdf` |
| **TSA URL** | `https://tsa.example.gr/` *(or http://)* |
| **CPS URL** | `https://example.gr/repository/tsps-tsa.pdf` |
| **CAB Name** | TÜV Austria Hellas S.A. |
| **CAR URL** | `https://example.gr/repository/car-2025.pdf` |

*Note: QTS does not require OCSP/CRL for the TSA signing certificate (timestamped tokens are self-contained and immutable).*

#### **Example 4: Qualified Website Authentication Certificates**

| Field | Value |
|:------|:------|
| **Service Type Identifier** | `0.4.0.194112.1.9` |
| **Service Name (GR)** | Εγκεκριμένα Πιστοποιητικά Ταυτοποίησης Ιστοτόπου |
| **Service Name (EN)** | Qualified Website Authentication Certificates |
| **Service Status** | `http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted` |
| **Status Starting Time** | `2025-06-15T09:00:00Z` |
| **Service Digital Identity** | *(PEM-encoded Issuing CA certificate for QWAC - from Doc 06)* |
| **CP URL** | `https://example.gr/repository/cp-qwac.pdf` |
| **OCSP URL** | `http://ocsp-qwac.example.gr/` |
| **CRL URL** | `http://crl-qwac.example.gr/issuing-ca-qwac.crl` |
| **CPS URL** | `https://example.gr/repository/tsps-qwac.pdf` |
| **CAB Name** | TÜV Austria Hellas S.A. |
| **CAR URL** | `https://example.gr/repository/car-2025.pdf` |

---

### 2.4 VALIDATION CHECKLIST FOR SHEET 2

Before submitting, verify for **each service entry**:

- ☐ **Service Type OID** matches Doc 02 Part B (services requested) and Doc 06 certificate profiles
- ☐ **Service Names** (Greek/English) use standard eIDAS terminology (not custom marketing names)
- ☐ **Service Status** is `.../granted` (received EETT approval)
- ☐ **Status Starting Time** matches EETT approval decision datetime (UTC format)
- ☐ **CA Certificate (PEM)** is valid, not expired, has `CA=TRUE`, matches Doc 06
- ☐ **CA Certificate** is the **Issuing CA** (not Root CA, not end-entity cert)
- ☐ **CP URL** is accessible via HTTPS and returns PDF/HTML (not 404)
- ☐ **OCSP URL** responds to test queries (use OpenSSL or DSS validator)
- ☐ **CRL URL** returns valid CRL (download and parse with OpenSSL)
- ☐ **TSA URL** (if QTS) responds to RFC 3161 timestamp requests
- ☐ **All URLs** match those declared in Doc 05 (TSPS)
- ☐ **CAB Name** matches Doc 03 cover page and CAB accreditation certificate
- ☐ **CAR URL** is accessible and points to current CAR (not expired audit)
- ☐ **No placeholder brackets** remain (e.g., `[ISSUING_CA_QES_CERT_PEM]`)

**Cross-Document Validation:**
- ☐ **Doc 02 ↔ Doc 14:** Service checkboxes in application match service entries here
- ☐ **Doc 03 ↔ Doc 14:** CAB name matches CAR
- ☐ **Doc 05 ↔ Doc 14:** URLs match TSPS declarations
- ☐ **Doc 06 ↔ Doc 14:** CA certificates match test artifacts

---

## 📄 SECTION 3: HISTORICAL CHANGES LOG (Φύλλο 3 / Sheet 3)

**Αντιστοίχιση XML / XML Mapping:** Service history entries per ETSI TS 119 612 §5.5.7 `<ServiceHistory>`

**GR:** Αυτό το φύλλο χρησιμοποιείται για τη **μελλοντική** καταγραφή οποιασδήποτε αλλαγής στις πληροφορίες του παρόχου ή των υπηρεσιών του, ώστε να διατηρείται ένα πλήρες ιστορικό. **Κατά την πρώτη υποβολή (μετά την έγκριση), αυτό το φύλλο παραμένει κενό.**

**EN:** This sheet is used for **future** logging of any changes to the provider's or its services' information, in order to maintain a complete history. **Upon first submission (after approval), this sheet remains empty.**

### 3.1 CHANGE LOG STRUCTURE

| Column Name | Description | Example Value | Validation |
|:------------|:------------|:--------------|:-----------|
| **Change ID** | Unique identifier for this change | `CHG-2026-001` | Format: `CHG-YYYY-NNN` |
| **Change Date** | Date when change becomes effective | `2026-03-15` | Format: `YYYY-MM-DD`. Cannot be in the past (relative to submission). |
| **Change Type** | Category of change | See §3.2 below | Must be from predefined list. |
| **Affected Entity** | What was changed | `TSP Information`, `Service: QES`, `Service: QTS`, etc. | Be specific. For service changes, include service type. |
| **Field(s) Changed** | Specific field(s) modified | `TSP Contact Email`, `OCSP URL`, `CA Certificate`, etc. | List all affected fields. |
| **Old Value** | Previous value (before change) | `info@oldcompany.gr` | Record for audit trail. |
| **New Value** | New value (after change) | `trust@newcompany.gr` | This becomes current value in Sheets 1-2. |
| **Reason for Change** | Justification | `Rebranding`, `CA Key Rollover`, `URL Migration`, `Contact Update`, etc. | Brief explanation (max 200 chars). |
| **EETT Notification Date** | When EETT was notified | `2026-03-08` | Must be ≥7 days before change (per Article 3.4 - 7-day advance notice required). |
| **EETT Approval Required?** | Yes/No | `No` (for contact changes), `Yes` (for new services) | Some changes require EETT approval (see §3.3). |
| **EETT Approval Date** | If approval required | `2026-03-14` | Leave blank if approval not required. |
| **Status** | Change implementation status | `Planned`, `Notified`, `Approved`, `Implemented`, `Published to NTL` | Track progress. |
| **Updated By** | Person who made the change | `[Name], [Role]` | For internal accountability. |

### 3.2 CHANGE TYPE CATEGORIES

**GR Τύποι Αλλαγών / EN Change Types:**

| Change Type | GR Description | EN Description | EETT Notification Required? | EETT Approval Required? |
|:------------|:---------------|:---------------|:----------------------------|:------------------------|
| **Service Addition** | Προσθήκη νέας υπηρεσίας | Adding a new qualified service | ✅ Yes (7 days advance) | ✅ Yes (new application) |
| **Service Termination** | Τερματισμός υπηρεσίας | Terminating a service | ✅ Yes (per Doc 09 timeline) | ⚠️ Notification only (per Article 7-8) |
| **Service Status Change** | Αλλαγή κατάστασης υπηρεσίας | Changing service status (e.g., granted → withdrawn) | ✅ Yes | ⚠️ Depends (EETT may direct status change) |
| **CA Certificate Rollover** | Ανανέωση πιστοποιητικού CA | Replacing CA certificate (key rollover) | ✅ Yes (7 days advance) | ⚠️ CAB must audit new CA first |
| **Supply Point URL Change** | Αλλαγή URL (OCSP, CRL, TSA, CP) | Changing service endpoint URLs | ✅ Yes (7 days advance) | ❌ No (but must update Doc 05) |
| **TSP Contact Change** | Αλλαγή στοιχείων επικοινωνίας | Changing TSP contact information | ✅ Yes (7 days advance) | ❌ No |
| **TSP Address Change** | Αλλαγή διεύθυνσης | Moving TSP registered address | ✅ Yes (7 days advance) | ⚠️ May require on-site audit if datacenter moves |
| **TSP Name Change** | Αλλαγή επωνυμίας | Legal name change (merger, rebranding) | ✅ Yes | ✅ Yes (requires legal docs) |
| **CAB Change** | Αλλαγή φορέα αξιολόγησης | Switching to different Conformity Assessment Body | ✅ Yes | ⚠️ New CAB must issue fresh CAR |
| **CAR Update** | Ανανέωση έκθεσης CAR | Annual CAR renewal (same CAB) | ✅ Yes (submit new CAR) | ❌ No (routine annual audit) |
| **Technical Information Update** | Ενημέρωση τεχνικών στοιχείων | Other technical changes (e.g., HSM model, datacenter certification renewal) | ✅ Yes (7 days advance) | ⚠️ Depends on materiality |

### 3.3 WHEN TO UPDATE THIS SHEET

**Update this sheet in the following scenarios:**

1. **Immediately after implementing a change** (within 3 working days)
2. **After EETT publishes the change to NTL** (update Status column to "Published to NTL")
3. **When planning future changes** (create "Planned" entries for tracking)

**Submit updated datasheet to EETT:**
- ✅ After any change that affects NTL data (Sheets 1-2)
- ✅ Within 7 days of change implementation (per Article 3.4)
- ✅ As part of annual CAR submission (even if no changes, submit updated CAR URL)

### 3.4 EXAMPLE CHANGE LOG ENTRIES

**Example 1: URL Change (No Approval Required)**

| Change ID | Change Date | Change Type | Affected Entity | Field Changed | Old Value | New Value | Reason | EETT Notification Date | Approval Required? | Status |
|:----------|:------------|:------------|:----------------|:--------------|:----------|:----------|:-------|:-----------------------|:-------------------|:-------|
| CHG-2026-001 | 2026-03-20 | Supply Point URL Change | Service: QES | OCSP URL | `http://ocsp-old.example.gr/` | `http://ocsp.example.gr/` | Server migration to new infrastructure | 2026-03-10 | No | Implemented |

**Example 2: CA Certificate Rollover (CAB Audit Required)**

| Change ID | Change Date | Change Type | Affected Entity | Field Changed | Old Value | New Value | Reason | EETT Notification Date | Approval Required? | Status |
|:----------|:------------|:------------|:----------------|:--------------|:----------|:----------|:-------|:-----------------------|:-------------------|:-------|
| CHG-2027-005 | 2027-08-01 | CA Certificate Rollover | Service: QSeal | Service Digital Identity (CA Cert) | *(Cert serial 0x1A2B, expires 2027-07-31)* | *(Cert serial 0x9F8E, expires 2037-07-31)* | CA key approaching expiry (10-year lifecycle) | 2027-06-15 | CAB audit of new CA required | Planned |

**Example 3: Service Addition (Full Approval Process)**

| Change ID | Change Date | Change Type | Affected Entity | Field Changed | Old Value | New Value | Reason | EETT Notification Date | Approval Required? | Status |
|:----------|:------------|:------------|:----------------|:--------------|:----------|:----------|:-------|:-----------------------|:-------------------|:-------|
| CHG-2026-010 | 2026-12-01 | Service Addition | New Service: REM (Registered Electronic Mail) | All fields (new row in Sheet 2) | N/A - New service | *(OID: 0.4.0.194112.1.6, Name: Qualified Electronic Registered Mail, CA Cert: ..., URLs: ...)* | Business expansion | 2026-09-01 (application submitted) | Yes - New Doc 02 application | EETT Review |

---

## 📄 SECTION 4: SUBMISSION CHECKLIST

**Πριν υποβάλετε αυτό το δελτίο στην ΕΕΤΤ / Before submitting this datasheet to EETT:**

### 4.1 TIMING VERIFICATION

- ☐ **EETT approval received** (have approval decision letter/email)
- ☐ **All CA certificates generated** and tested (Doc 06 complete)
- ☐ **All service endpoints operational:**
  - ☐ OCSP responders returning valid responses
  - ☐ CRL distribution points serving fresh CRLs (published within last 24h)
  - ☐ TSA endpoint (if applicable) responding to RFC 3161 requests
  - ☐ Website URLs (CP, CPS, CAR) accessible via HTTPS
- ☐ **Submission timing:** Within 7 days of EETT approval (target: 3 working days)

### 4.2 DATA ACCURACY VERIFICATION

- ☐ **Sheet 1 (TSP Info):**
  - ☐ All fields completed (no `[PLACEHOLDERS]` remain)
  - ☐ Legal name matches ΓΕΜΗ registry
  - ☐ Address matches company registration
  - ☐ Contact email/phone tested and working
  - ☐ EETT Registration Number matches Doc 01 approval
- ☐ **Sheet 2 (Service Info):**
  - ☐ One row per qualified service
  - ☐ OIDs correct per ETSI TS 119 612 Annex C
  - ☐ Service names use standard eIDAS terminology (not marketing names)
  - ☐ CA certificates in valid PEM format
  - ☐ CA certificates are Issuing CA (not Root, not end-entity)
  - ☐ All URLs tested and accessible
  - ☐ CAB name and CAR URL correct
- ☐ **Sheet 3 (Change Log):**
  - ☐ Empty (for initial submission)
  - ☐ Structure ready for future use

### 4.3 CROSS-DOCUMENT CONSISTENCY

- ☐ **Doc 02 ↔ Doc 14:** Services listed match application (Part B checkboxes)
- ☐ **Doc 03 ↔ Doc 14:** CAB name matches CAR cover page
- ☐ **Doc 05 ↔ Doc 14:** All URLs match TSPS declarations (CP, OCSP, CRL, TSA)
- ☐ **Doc 06 ↔ Doc 14:** CA certificate PEM matches test certificate artifacts
- ☐ **Doc 13 ↔ Doc 14:** Contact information matches notification templates
- ☐ **Doc 19 ↔ Doc 14:** Service type OIDs match Master Compliance Register

### 4.4 TECHNICAL VALIDATION

Run these technical tests:

**Test 1: CA Certificate Parsing**
```bash
# Extract PEM cert from Sheet 2, save as ca.crt
openssl x509 -in ca.crt -text -noout

# Verify:
# - Issuer and Subject match expected CA DN
# - BasicConstraints: CA=TRUE (critical)
# - KeyUsage: keyCertSign, cRLSign
# - Not expired (Valid Until date > today)
```

**Test 2: OCSP Connectivity**
```bash
# Test OCSP responder
openssl ocsp -issuer ca.crt -cert test-end-entity.crt -url http://ocsp.example.gr/ -text

# Verify: Response status "successful", Certificate status "good" or "revoked"
```

**Test 3: CRL Download**
```bash
# Download and verify CRL
curl http://crl.example.gr/issuing-ca.crl -o test.crl
openssl crl -in test.crl -inform DER -text -noout

# Verify:
# - Issuer matches CA
# - thisUpdate ≤ now
# - nextUpdate > now (CRL not stale)
```

**Test 4: TSA Timestamp Request (if QTS)**
```bash
# Generate test timestamp
echo "test data" > test.txt
openssl ts -query -data test.txt -cert -sha256 -out request.tsq
curl -H "Content-Type: application/timestamp-query" \
     --data-binary @request.tsq \
     http://tsa.example.gr/ -o response.tsr
openssl ts -reply -in response.tsr -text

# Verify: Status "granted", timestamp returned
```

**Test 5: URL Accessibility**
```bash
# Test all HTTPS URLs return 200
curl -I https://example.gr/repository/cp.pdf  # Should return "HTTP/2 200"
curl -I https://example.gr/repository/tsps.pdf
curl -I https://example.gr/repository/car.pdf
```

### 4.5 FILE FORMAT VALIDATION

- ☐ **File format:** Excel (.xlsx) with UTF-8 encoding
- ☐ **Sheet count:** Exactly 3 sheets (TSP Info, Service Info, Change Log)
- ☐ **Sheet names:** Exact (case-sensitive):
  - Sheet 1: `TSP_Information`
  - Sheet 2: `Service_Information`
  - Sheet 3: `Change_Log`
- ☐ **No macros** (security requirement)
- ☐ **No password protection** (must be readable by EETT automated systems)
- ☐ **File size:** < 5 MB (should be ~50-200 KB typically)

### 4.6 LINGUISTIC QUALITY

- ☐ **Greek text:**
  - ☐ Correct spelling (no typos)
  - ☐ Proper diacritics (accents: ά, έ, ή, etc.)
  - ☐ Standard legal/technical terminology (not colloquial)
- ☐ **English text:**
  - ☐ Correct spelling (UK or US English, be consistent)
  - ☐ Standard eIDAS/ETSI terminology (from official translations)
  - ☐ No machine translation artifacts (awkward phrasing)
- ☐ **Greek ↔ English consistency:**
  - ☐ Service names match official eIDAS translations
  - ☐ Technical terms consistent (e.g., "qualified" = "εγκεκριμένη", not "ειδική")

### 4.7 FINAL QUALITY ASSURANCE

- ☐ **Legal representative review:** Authorized person has reviewed and approved
- ☐ **Technical officer review:** CTO/CIO/Security Officer has verified technical details
- ☐ **DPO review:** Data Protection Officer confirms GDPR-compliant contact info
- ☐ **Backup created:** Save version-controlled copy (e.g., `14_NTL_v1.0_2025-06-15.xlsx`)
- ☐ **Submission method confirmed:** Follow Doc 15 (Submission Packaging Guide)

---

## 📄 SECTION 5: BILINGUAL FIELD MAPPING REFERENCE

**Quick reference for accurate Greek ↔ English translations:**

| English Term | Greek Term | Notes |
|:-------------|:-----------|:------|
| Qualified electronic signature | Εγκεκριμένη ηλεκτρονική υπογραφή | NOT "ειδική" (special) |
| Qualified electronic seal | Εγκεκριμένη ηλεκτρονική σφραγίδα | |
| Qualified time-stamp | Εγκεκριμένη ηλεκτρονική χρονοσήμανση | |
| Qualified website authentication certificate | Εγκεκριμένο πιστοποιητικό ταυτοποίησης ιστοτόπου | |
| Qualified electronic registered delivery service | Εγκεκριμένη υπηρεσία ηλεκτρονικής συστημένης παράδοσης | REM |
| Qualified validation service | Εγκεκριμένη υπηρεσία επικύρωσης | |
| Qualified preservation service | Εγκεκριμένη υπηρεσία διατήρησης | |
| Trust service provider | Πάροχος υπηρεσιών εμπιστοσύνης | Acronym: ΠΠΥΕ |
| Conformity Assessment Body | Φορέας Αξιολόγησης Συμμόρφωσης | Acronym: ΦΑΣ |
| Conformity Assessment Report | Έκθεση Αξιολόγησης Συμμόρφωσης | Acronym: ΕΑΣ |
| Certificate Policy | Πολιτική Πιστοποίησης | |
| Certification Practice Statement | Δήλωση Πρακτικών Πιστοποίησης | |
| Issuing CA | Αρχή Πιστοποίησης Έκδοσης | Issues end-entity certs |
| Root CA | Ρίζα Αρχής Πιστοποίησης | Trust anchor |
| OCSP responder | Εξυπηρετητής OCSP | |
| CRL distribution point | Σημείο διανομής λίστας ανακλήσεων | |
| Timestamp Authority | Αρχή Χρονοσήμανσης | TSA |

---

## 📄 SECTION 6: XML SCHEMA MAPPING (For Automated Processing)

**ETSI TS 119 612 v2.3.1 XML Trust List Schema Mapping**

This section documents how the datasheet fields map to the XML elements in the ETSI TS 119 612 schema, enabling EETT to automatically generate the National Trust List XML from this datasheet.

### 6.1 ROOT STRUCTURE

```xml
<TrustServiceStatusList xmlns="http://uri.etsi.org/02231/v2#">
  <SchemeInformation>
    <TSLVersionIdentifier>5</TSLVersionIdentifier>
    <TSLSequenceNumber>[Incremental]</TSLSequenceNumber>
    <TSLType>http://uri.etsi.org/TrstSvc/TrustedList/TSLType/EUgeneric</TSLType>
    <SchemeOperatorName>
      <Name xml:lang="el-GR">Εθνική Επιτροπή Τηλεπικοινωνιών και Ταχυδρομείων</Name>
      <Name xml:lang="en">Hellenic Telecommunications and Post Commission</Name>
    </SchemeOperatorName>
    <SchemeName>
      <Name xml:lang="el-GR">Ελληνικός Κατάλογος Εμπιστοσύνης</Name>
      <Name xml:lang="en">Greek Trust List</Name>
    </SchemeName>
    <SchemeTerritory>GR</SchemeTerritory>
    <!-- ... other scheme-level fields populated by EETT ... -->
  </SchemeInformation>
  
  <TrustServiceProviderList>
    <!-- Each TSP becomes a <TrustServiceProvider> element (see §6.2) -->
  </TrustServiceProviderList>
  
</TrustServiceStatusList>
```

### 6.2 TSP INFORMATION MAPPING (Sheet 1 → XML)

**Sheet 1 fields map to:**

```xml
<TrustServiceProvider>
  <TSPInformation>
    
    <!-- TSP Name -->
    <TSPName>
      <Name xml:lang="el-GR">[LEGAL_NAME_GR from Sheet 1]</Name>
      <Name xml:lang="en">[LEGAL_NAME_EN from Sheet 1]</Name>
    </TSPName>
    
    <!-- TSP Trade Name (optional) -->
    <TSPTradeName>
      <Name xml:lang="el-GR">[TRADE_NAME_GR from Sheet 1, if present]</Name>
      <Name xml:lang="en">[TRADE_NAME_EN from Sheet 1, if present]</Name>
    </TSPTradeName>
    
    <!-- TSP Address -->
    <TSPAddress>
      <PostalAddress>
        <StreetAddress>[STREET_ADDRESS from Sheet 1]</StreetAddress>
        <Locality>[CITY from Sheet 1]</Locality>
        <StateOrProvince>[REGION from Sheet 1, if present]</StateOrProvince>
        <PostalCode>[POSTAL_CODE from Sheet 1]</PostalCode>
        <CountryName>[Always "Ελλάδα" / "Greece"]</CountryName>
      </PostalAddress>
      <ElectronicAddress>
        <URI xml:lang="el-GR">[WEBSITE_URL from Sheet 1]</URI>
        <URI xml:lang="en">[WEBSITE_URL from Sheet 1]</URI>
      </ElectronicAddress>
    </TSPAddress>
    
    <!-- TSP Contact -->
    <TSPInformationURI>
      <URI xml:lang="el-GR">[WEBSITE_URL from Sheet 1]</URI>
      <URI xml:lang="en">[WEBSITE_URL from Sheet 1]</URI>
    </TSPInformationURI>
    
    <TSPContact>
      <ElectronicAddress>
        <URI>mailto:[PUBLIC_EMAIL from Sheet 1]</URI>
      </ElectronicAddress>
      <TelephoneNumber>[PUBLIC_PHONE from Sheet 1]</TelephoneNumber>
    </TSPContact>
    
  </TSPInformation>
  
  <TSPServices>
    <!-- Each service (Sheet 2 row) becomes a <TSPService> element (see §6.3) -->
  </TSPServices>
  
</TrustServiceProvider>
```

### 6.3 SERVICE INFORMATION MAPPING (Sheet 2 → XML)

**Each row in Sheet 2 maps to:**

```xml
<TSPService>
  <ServiceInformation>
    
    <!-- Service Type Identifier -->
    <ServiceTypeIdentifier>[Service Type Identifier OID from Sheet 2]</ServiceTypeIdentifier>
    <!-- Example: 0.4.0.194112.1.0 -->
    
    <!-- Service Name -->
    <ServiceName>
      <Name xml:lang="el-GR">[Service Name (GR) from Sheet 2]</Name>
      <Name xml:lang="en">[Service Name (EN) from Sheet 2]</Name>
    </ServiceName>
    
    <!-- Service Digital Identity -->
    <ServiceDigitalIdentity>
      <DigitalId>
        <X509Certificate>
          [Base64-encoded CA certificate from Sheet 2, WITHOUT PEM headers/footers]
        </X509Certificate>
      </DigitalId>
    </ServiceDigitalIdentity>
    
    <!-- Service Status -->
    <ServiceStatus>[Service Status URI from Sheet 2]</ServiceStatus>
    <!-- Example: http://uri.etsi.org/TrstSvc/TrustedList/Svcstatus/granted -->
    
    <!-- Status Starting Time -->
    <StatusStartingTime>[Status Starting Time from Sheet 2 in ISO 8601 UTC]</StatusStartingTime>
    <!-- Example: 2025-06-15T09:00:00Z -->
    
    <!-- Service Supply Points -->
    <ServiceSupplyPoints>
      <ServiceSupplyPoint>[CP URL from Sheet 2]</ServiceSupplyPoint>
      <ServiceSupplyPoint>[OCSP URL from Sheet 2, if applicable]</ServiceSupplyPoint>
      <ServiceSupplyPoint>[CRL URL from Sheet 2, if applicable]</ServiceSupplyPoint>
      <ServiceSupplyPoint>[TSA URL from Sheet 2, if QTS]</ServiceSupplyPoint>
      <!-- Additional URLs as needed -->
    </ServiceSupplyPoints>
    
    <!-- Service Information Extensions (CAB info, etc.) -->
    <ServiceInformationExtensions>
      <!-- Critical=false (informational) -->
      <Extension Critical="false">
        <!-- CAB Name and CAR URL (custom extension for Greek NTL) -->
        <AdditionalServiceInformation>
          <CABName>[CAB Name from Sheet 2]</CABName>
          <CARURL>[CAR URL from Sheet 2]</CARURL>
        </AdditionalServiceInformation>
      </Extension>
    </ServiceInformationExtensions>
    
  </ServiceInformation>
  
  <!-- Service History (from Sheet 3, if changes exist) -->
  <ServiceHistory>
    <!-- Populated when service status changes or key rollover occurs -->
    <!-- Each change becomes a <ServiceHistoryInstance> element -->
  </ServiceHistory>
  
</TSPService>
```

### 6.4 PEM TO BASE64 CONVERSION

**Important:** In the Excel datasheet (Sheet 2), CA certificates are stored in **PEM format** (human-readable):

```
-----BEGIN CERTIFICATE-----
MIIFxTCCA62gAwIBAgIQABCDefgh...
...base64 lines (64 chars each)...
...ending line...
-----END CERTIFICATE-----
```

**In the XML Trust List**, the certificate must be **base64-encoded WITHOUT PEM headers**:

```xml
<X509Certificate>MIIFxTCCA62gAwIBAgIQABCDefgh...all-on-one-line-or-wrapped...ending</X509Certificate>
```

**EETT's automated processing script must:**
1. Extract PEM block from Excel cell
2. Remove `-----BEGIN CERTIFICATE-----` header
3. Remove `-----END CERTIFICATE-----` footer
4. Remove all newlines (or keep, both valid)
5. Insert into XML `<X509Certificate>` element

---

## 📄 SECTION 7: REGULATORY REFERENCES

This datasheet fulfills the following regulatory requirements:

### 7.1 eIDAS REGULATION (EU) 910/2014

- **Article 22(1):** Member States shall establish, maintain and publish trusted lists
- **Article 22(3):** Trusted lists shall be published in a secure manner signed or sealed by the Member State; format per Commission Decision
- **Article 22(5):** Member States shall ensure TSP information is accurate

**Implementation:** EETT publishes Greek NTL at https://eett.gr/trusted-list based on data collected via this datasheet.

### 7.2 COMMISSION IMPLEMENTING DECISION (EU) 2015/1505

Laying down technical specifications and formats relating to trusted lists per Article 22(5) of eIDAS.

**Implementation:** This datasheet follows ETSI TS 119 612 v2.3.1, which is the normative standard referenced by Decision 2015/1505.

### 7.3 ETSI TS 119 612 V2.3.1 (2020-04)

"Electronic Signatures and Infrastructures (ESI); Trusted Lists"

**Normative sections covered:**
- §5.3: TSP Information structure (Sheet 1)
- §5.5: TSP Service Information structure (Sheet 2)
- §5.5.3: Service digital identity (CA certificates)
- §5.5.6: Service current status
- §5.5.7: Service history information (Sheet 3)
- §5.5.9: Service supply points (URLs)
- Annex C: Service type identifier (OID list)

### 7.4 EETT ΚΑΝΟΝΙΣΜΟΣ ΠΑΡΟΧΩΝ (Greek TSP Regulation)

- **Article 3.3:** TSP must provide public contact information for NTL publication
- **Article 3.4:** TSP must notify EETT within 7 days of any changes to registered information
- **Article 6.6:** Post-approval, TSP information published to NTL
- **Article 7-8:** Service termination notifications trigger NTL status updates

---

## 📄 SECTION 8: SUBMISSION INSTRUCTIONS

### 8.1 WHEN TO SUBMIT

**Initial Submission (This Document):**
- ⏰ **Timing:** Immediately after EETT approval decision (target: within 3 working days, max 7 days)
- 📋 **Prerequisites:** All service endpoints operational, CA certificates generated and tested
- 🎯 **Purpose:** Enable EETT to publish TSP information to National Trust List (NTL)
- 📦 **Package with:** Cover letter referencing EETT approval decision number

**Update Submissions (Future):**
- ⏰ **Timing:** Within 7 days of any change to TSP information or service information (per Article 3.4)
- 📋 **Prerequisites:** Change implemented and tested; EETT notified 7 days in advance
- 🎯 **Purpose:** Keep NTL information current
- 📦 **Package with:** Cover letter explaining change (reference Change ID from Sheet 3)

**Annual Submissions:**
- ⏰ **Timing:** Within 30 days of receiving updated CAR from CAB (annual audit cycle)
- 📋 **Prerequisites:** CAB annual surveillance audit completed, new CAR issued
- 🎯 **Purpose:** Update CAR URL with current year's report
- 📦 **Package with:** Copy of new CAR (or URL if CAB publishes it)

### 8.2 HOW TO SUBMIT

**Submission Method:**

Follow the instructions in **Doc 15 (Submission Packaging Guide)** for the complete submission process. In summary:

1. **Prepare Excel File:**
   - File name: `14_NTL_Publication_Datasheet_[LEGAL_NAME_EN]_[DATE].xlsx`
   - Example: `14_NTL_Publication_Datasheet_GreekTrustCo_2025-06-15.xlsx`
   - Complete all 3 sheets (even if Sheet 3 is empty for initial submission)
   - Run validation checklist (Section 4)

2. **Convert to PDF (for archival):**
   - Print Excel to PDF: `14_NTL_Publication_Datasheet_[LEGAL_NAME_EN]_[DATE].pdf`
   - Ensure all content visible (no truncated cells)

3. **Prepare Cover Letter:**
   - Reference EETT approval decision (number and date)
   - State purpose: "NTL publication datasheet submission per Article 6.6"
   - List any special notes (e.g., "Service QTS will go live on [DATE], 7 days after NTL listing")
   - Sign by legal representative

4. **Apply Qualified Signature:**
   - Sign cover letter PDF with qualified signature (QES or QSeal)
   - Use PAdES-B-LTA format
   - Timestamp with qualified timestamp (if available)

5. **Package Files:**
   - Create ASiC-E container (per Doc 15) containing:
     - Cover letter (signed PDF)
     - Datasheet (Excel .xlsx)
     - Datasheet (PDF copy)
   - Sign ASiC-E container with qualified signature

6. **Submit via EETT Portal:**
   - Log in to EETT Electronic Submission System (credentials from Article 6.4 access grant)
   - Navigate to: "TSP Management" → "NTL Publication" → "Submit/Update Datasheet"
   - Upload ASiC-E container
   - Receive confirmation email (auto-generated)

7. **Verify Publication:**
   - Check EETT NTL within 5 working days: https://eett.gr/trusted-list
   - Verify your TSP information appears correctly
   - Download XML and validate your service entries
   - If errors: Contact EETT immediately (use contacts from Doc 13)

**Alternative Submission Methods (if electronic submission unavailable):**
- **Email:** Send to [EETT_TSP_EMAIL] (from Doc 13) with qualified signature
- **Postal mail:** Send USB drive with signed ASiC-E container + printed copy to EETT address

### 8.3 WHAT TO INCLUDE IN SUBMISSION PACKAGE

**For Initial Submission:**
- ✅ This datasheet (Excel .xlsx + PDF)
- ✅ Cover letter (signed)
- ✅ EETT approval decision (copy for reference)
- ✅ ASiC-E container signature

**For Update Submissions:**
- ✅ Updated datasheet (Excel .xlsx + PDF)
- ✅ Cover letter explaining change
- ✅ Sheet 3 (Change Log) completed with change details
- ✅ Supporting documents (if applicable):
  - New CA certificate (if CA rollover)
  - Updated CAR (if CAB change or annual renewal)
  - Legal documents (if name/address change)
- ✅ ASiC-E container signature

**For Annual CAR Updates:**
- ✅ Updated datasheet with new CAR URL (Excel .xlsx + PDF)
- ✅ Cover letter: "Annual CAR update per Article 10"
- ✅ Copy of new CAR (or confirmation CAB published it)
- ✅ ASiC-E container signature

---

## 📄 SECTION 9: MAINTENANCE PROCEDURES

### 9.1 ONGOING RESPONSIBILITIES

**As a qualified TSP, you must maintain this datasheet and notify EETT of changes:**

**Quarterly Reviews (Every 3 Months):**
- ☐ Verify all URLs still accessible (HTTPS test, OCSP/CRL/TSA functionality test)
- ☐ Check CA certificate expiry dates (alert if < 6 months remaining → plan rollover)
- ☐ Verify contact information still current (email/phone monitored)
- ☐ Review CAR validity (alert if < 3 months until annual audit due)

**Annual Activities:**
- ☐ **CAB Audit:** Undergo annual surveillance audit (Article 10 requirement)
- ☐ **CAR Update:** Submit updated datasheet with new CAR URL within 30 days of receiving CAR
- ☐ **Compliance Review:** Review all NTL data with legal counsel (confirm still accurate)
- ☐ **Archive:** Save snapshot of current datasheet version with date stamp

**Event-Driven Updates (Within 7 Days of Change):**

| Triggering Event | Action Required | EETT Notification | EETT Approval Required? |
|:-----------------|:----------------|:------------------|:------------------------|
| Contact email/phone change | Update Sheet 1, notify EETT | Yes (7 days advance) | No |
| Website URL change | Update Sheet 1, notify EETT | Yes (7 days advance) | No |
| Address change (same city) | Update Sheet 1, notify EETT | Yes (7 days advance) | No |
| Address change (different city) | Update Sheet 1, notify EETT, may require audit | Yes | Possibly (if datacenter moves) |
| Legal name change | Update Sheet 1, submit legal docs | Yes | Yes |
| OCSP/CRL/TSA URL change | Update Sheet 2, test new URLs | Yes (7 days advance) | No (but update Doc 05) |
| CA certificate rollover | Update Sheet 2, CAB must audit new CA | Yes (with CAB report) | Yes (CAB audit required) |
| Service addition | Submit new Doc 02 application | Full application process | Yes |
| Service termination | Follow Doc 09 procedure | Yes (per termination timeline) | Notification only |
| CAB change | Submit new CAR from new CAB | Yes | Yes (new CAB must be accredited) |
| CAR annual renewal | Update Sheet 2 CAR URL | Yes (routine) | No |

### 9.2 CHANGE MANAGEMENT WORKFLOW

**Step-by-step process for implementing a change:**

**Phase 1: Planning (Weeks 1-2)**
1. Identify need for change (e.g., CA expiring, URL migration, new service)
2. Assess impact:
   - Does it require EETT approval? (See table above)
   - Does it require CAB involvement? (e.g., new CA must be audited)
   - Will it cause service downtime? (If yes, minimize and notify users per Doc 08)
3. Create change ticket in Sheet 3 (Status: "Planned")
4. Prepare technical implementation plan
5. Obtain management approval

**Phase 2: EETT Notification (Week 3)**
1. Prepare notification letter (use templates from Doc 13)
2. Include:
   - What will change (specific fields)
   - When it will change (effective date, ≥7 days in future)
   - Why it's changing (business reason)
   - Impact assessment (users affected, downtime expected)
   - Supporting documents (if applicable)
3. Submit to EETT via electronic system or email
4. Update Sheet 3: Change ticket Status → "Notified", record notification date
5. Wait for EETT acknowledgment (3-5 working days)

**Phase 3: CAB Involvement (If Required, Weeks 4-6)**
1. If new CA or material security change: Schedule CAB audit
2. CAB conducts focused assessment (not full annual audit, unless coinciding)
3. CAB issues supplementary report or updated CAR
4. Submit CAB report to EETT if approval required

**Phase 4: Implementation (Week 7)**
1. Implement change in production:
   - Deploy new CA (if applicable)
   - Update URLs (with 301 redirects from old to new)
   - Test all endpoints
2. Update internal documentation (Doc 05, etc.)
3. Update this datasheet (Sheets 1-2 with new values, Sheet 3 Status → "Implemented")

**Phase 5: Datasheet Submission (Week 7)**
1. Complete updated datasheet
2. Run validation checklist (Section 4)
3. Prepare cover letter (reference Change ID from Sheet 3)
4. Submit to EETT (per Section 8.2)
5. Update Sheet 3: Status → "Submitted to EETT"

**Phase 6: NTL Publication (Week 8)**
1. EETT reviews submission (1-5 working days)
2. EETT publishes update to NTL
3. Verify publication: Check https://eett.gr/trusted-list
4. Update Sheet 3: Status → "Published to NTL"
5. Archive: Save dated copy of datasheet

**Phase 7: User Notification (If Applicable, Week 8)**
1. If change affects subscribers (e.g., URL change): Notify per Doc 08
2. Update website with new information
3. Send email to active certificate holders (if material change)

### 9.3 VERSION CONTROL

**File Naming Convention:**
```
14_NTL_Publication_Datasheet_[LEGAL_NAME_EN]_v[MAJOR].[MINOR]_[DATE].xlsx
```

**Examples:**
- `14_NTL_Publication_Datasheet_GreekTrustCo_v1.0_2025-06-15.xlsx` (initial submission)
- `14_NTL_Publication_Datasheet_GreekTrustCo_v1.1_2025-09-10.xlsx` (minor update: URL change)
- `14_NTL_Publication_Datasheet_GreekTrustCo_v2.0_2026-06-15.xlsx` (major update: new service added)

**Version Numbering Rules:**
- **Major version (X.0):** Service addition/termination, legal name change, major restructuring
- **Minor version (0.X):** URL changes, contact updates, CA rollover, CAR renewal

**Archive Location:**
Store all versions in secure, backed-up location:
```
/eIDAS_Dossier/13_NTL_Publication/Archive/
  ├── v1.0_2025-06-15_Initial_Submission/
  │   ├── 14_NTL_v1.0.xlsx
  │   ├── 14_NTL_v1.0.pdf
  │   ├── Cover_Letter_Signed.pdf
  │   └── EETT_Confirmation_Email.eml
  ├── v1.1_2025-09-10_URL_Update/
  │   └── ...
  └── v2.0_2026-06-15_Service_Addition/
      └── ...
```

**Retention Period:** 7 years after service termination (align with Doc 12 recordkeeping requirements)

---

## 📄 SECTION 10: FREQUENTLY ASKED QUESTIONS

**Q1: Can I submit this datasheet before receiving EETT approval?**
**A:** No. This datasheet is submitted **after** EETT grants approval (Article 6 decision). First, complete and submit Doc 02 (Qualified Service Start Application) with all attachments. After approval, submit this datasheet for NTL publication.

**Q2: Do I need to translate all fields to both Greek and English?**
**A:** Yes, for TSP name, service names, and address. Technical fields (URLs, OIDs, certificates) are language-neutral. Providing both languages ensures your listing is useful to Greek citizens and cross-border EU users.

**Q3: What if my CA certificate hasn't been generated yet?**
**A:** Do not submit this datasheet until all CA certificates are generated, tested, and match the profiles in Doc 06. EETT needs the actual production CA certificate (PEM format) to publish to NTL. If you submit placeholder data, EETT will reject it.

**Q4: Can I use the same CA certificate for multiple services (e.g., QES and QSeal)?**
**A:** Technically possible, but **not recommended**. Best practice: Use separate Issuing CAs for each service type to enable:
- Service-specific revocation (if one service has issues, others unaffected)
- Service-specific certificate profiles (different OIDs, policies)
- Clearer audit trails

If you must use one CA for multiple services, create multiple rows in Sheet 2 (one per service type) with the same CA certificate PEM.

**Q5: What if my OCSP/CRL URLs change frequently (e.g., load balancing)?**
**A:** Use **stable DNS names** that don't change, even if backend servers do. Example:
- ❌ Don't use: `http://server1.internal.example.gr/ocsp` (server-specific)
- ✅ Use: `http://ocsp.example.gr/` (DNS name, can point to different servers via DNS/load balancer)

If you must change URLs, notify EETT 7 days in advance and implement 301 redirects from old to new URLs for at least 90 days.

**Q6: How often do I need to update this datasheet?**
**A:** 
- **Annual minimum:** When you receive updated CAR from CAB (update CAR URL)
- **Event-driven:** Within 7 days of any change to TSP/service information
- **Quarterly review recommended:** Check for expired/expiring elements proactively

**Q7: What happens if I don't notify EETT within 7 days of a change?**
**A:** Violation of Article 3.4 (notification obligation). EETT may:
- Issue warning (first offense, minor change)
- Impose administrative fine (repeated violations)
- Suspend services (material changes affecting trust/security not reported)

**Q8: Can I add a new service without a full Doc 02 application?**
**A:** No. Adding a qualified service requires:
1. Submit new Doc 02 application (or addendum) with new service checked
2. CAB audit of the new service
3. EETT approval decision
4. Update this datasheet with new service entry (Sheet 2)

**Q9: What if my CAB's accreditation expires?**
**A:** 
1. **Before expiry:** Switch to a new accredited CAB (submit new CAR)
2. **If CAB lets accreditation lapse:** EETT may suspend your qualified status until you engage a new CAB
3. **Annual CAR must always be from accredited CAB** (check ESYD website for Greek CAB accreditations)

**Q10: How do I handle CA certificate rollover (key rotation)?**
**A:**
1. Generate new CA key pair and certificate (overlap period with old CA)
2. CAB audits new CA (issue supplementary report)
3. Notify EETT 7 days in advance
4. Deploy new CA (both old and new CAs operate during transition)
5. Update this datasheet: New CA cert PEM in Sheet 2, log change in Sheet 3
6. Gradually migrate subscribers to new CA-issued certificates
7. Retire old CA after all certificates under it expire

---

## 📄 SECTION 11: DOCUMENT CONTROL

### 11.1 DOCUMENT INFORMATION

| Field | Value |
|:------|:------|
| **Document Title** | NTL Publication Datasheet |
| **Document ID** | 14_NTL_Publication_Datasheet.xlsx |
| **Version** | 1.0 (Template) |
| **Date** | 2025-06-15 (Replace with actual submission date) |
| **Status** | TEMPLATE - Ready for completion |
| **Language** | Bilingual (Greek / English) |
| **Classification** | Public (will be published to NTL) |
| **Owner** | [LEGAL_NAME_EN] |
| **Responsible Officer** | [Name], [Role] (e.g., QTS Manager, Compliance Officer) |
| **Reviewer** | [Name], [Role] (e.g., Legal Counsel, CTO) |
| **Approver** | [Name], [Role] (Legal Representative, CEO) |

### 11.2 REVISION HISTORY

| Version | Date | Author | Changes | Reason |
|:--------|:-----|:-------|:--------|:-------|
| 1.0 | 2025-06-15 | [Author Name] | Initial creation | Template for EETT submission |
| 1.1 | [Future] | [Name] | [Describe changes] | [Reason for update] |
| | | | | |

**Instructions for maintaining revision history:**
- Add a new row for each submission to EETT
- Increment version number per Section 9.3 rules
- Describe what changed (reference Sheet 3 Change IDs)
- Keep history for full 7-year retention period

### 11.3 RELATED DOCUMENTS

This datasheet cross-references and must remain consistent with:

| Doc ID | Document Title | Relationship |
|:-------|:---------------|:-------------|
| Doc 00 | Intake Questionnaire | Source of placeholder replacement values |
| Doc 01 | EETT Registry Application | EETT Registration Number must match |
| Doc 02 | Qualified Service Start Application | Services listed must match Part B checkboxes |
| Doc 03 | Conformity Assessment Report | CAB name and CAR URL must match |
| Doc 04 | TSP Policy | Service names and terminology must align |
| Doc 05 | Trust Service Practice Statement | URLs (CP, OCSP, CRL, TSA) must match |
| Doc 06 | Test Certificates and Artifacts | CA certificate PEM must match |
| Doc 08 | User Notification Templates | Contact information must align |
| Doc 09 | Service Termination Plan | Termination triggers NTL status update |
| Doc 13 | EETT Communication Templates | Notification procedures for changes |
| Doc 15 | Submission Packaging Guide | Submission method and ASiC-E packaging |
| Doc 19 | Master Compliance Register | Service type OIDs must match |

### 11.4 APPROVAL SIGNATURES

**I certify that the information in this datasheet is accurate, complete, and consistent with the TSP's approved application and current operations.**

---

**Prepared by:**

Name: ________________________________  
Role: ________________________________  
Date: ________________________________  
Signature: ________________________________

---

**Reviewed by (Technical):**

Name: ________________________________  
Role: ________________________________ (CTO / IT Security Manager)  
Date: ________________________________  
Signature: ________________________________

---

**Reviewed by (Legal):**

Name: ________________________________  
Role: ________________________________ (Legal Counsel / Compliance Officer)  
Date: ________________________________  
Signature: ________________________________

---

**Approved by (Legal Representative):**

Name: ________________________________  
Role: ________________________________ (CEO / Managing Director)  
Date: ________________________________  
Signature: ________________________________  
(Apply Qualified Electronic Signature to PDF version)

---

## 📄 SECTION 12: FINAL NOTES AND DISCLAIMERS

### 12.1 DATA ACCURACY RESPONSIBILITY

**The Trust Service Provider is solely responsible for the accuracy of all information provided in this datasheet.** Per eIDAS Article 22(5) and EETT Κανονισμός Article 3.4, the TSP must ensure that:

- All information is current, accurate, and complete
- Changes are notified to EETT within 7 days
- Public contact information is monitored and responsive
- Service endpoints (OCSP, CRL, TSA) are operational 24×7

**Consequences of inaccurate information:**
- Relying parties may fail to validate certificates (service disruption)
- EETT may suspend qualified status (Article 8)
- TSP may face administrative fines
- TSP may incur liability per eIDAS Article 13 (failure to meet obligations)

### 12.2 NTL PUBLICATION CONSENT

By submitting this datasheet, the TSP:
- ✅ Consents to publication of all information in Sheets 1-2 to the public National Trust List
- ✅ Acknowledges that the NTL will be publicly accessible at https://eett.gr/trusted-list
- ✅ Acknowledges that the Greek NTL will be synchronized to the EU Trusted List (LOTL) at https://ec.europa.eu/tools/lotl
- ✅ Acknowledges that CA certificates (Sheet 2) will be published in full (public key, subject DN, issuer, extensions)
- ✅ Consents to EETT's use of this data for automated XML generation per ETSI TS 119 612

**Data protection note:** The information in this datasheet is **public data** necessary for the provision of qualified trust services. It is not subject to GDPR's right to erasure (Article 17(3)(b) - legal obligation). Personal data (contact person names) should be role-based (e.g., "Trust Services Manager") rather than personal names where possible.

### 12.3 ONGOING COMPLIANCE OBLIGATION

Submission of this datasheet does not relieve the TSP of any obligations under eIDAS, EETT Κανονισμός, or other applicable regulations. The TSP must continue to:

- Maintain compliance with all requirements (eIDAS Article 24, EETT Articles 4-12)
- Undergo annual CAB audits (Article 10)
- Report incidents to EETT (Article 5, Doc 07a/07b)
- Notify changes within 7 days (Article 3.4)
- Maintain records for 7 years (Article 12, Doc 12)
- Protect user data per GDPR (Doc 10, Doc 12)

### 12.4 TECHNICAL SUPPORT

**If you encounter issues completing this datasheet:**

- 📧 **Email EETT:** [EETT_TSP_EMAIL from Doc 13]
- 📞 **Call EETT:** [EETT_PHONE from Doc 13] (weekdays 9-17 EET)
- 🌐 **EETT Website:** https://eett.gr/trust-services
- 📄 **Consult Doc 15:** Submission Packaging Guide (detailed instructions)

**Common technical issues:**
- **Excel compatibility:** Use Excel 2016+ or LibreOffice Calc 6.0+ (UTF-8 support for Greek characters)
- **PEM format errors:** Validate CA certs with `openssl x509 -in ca.crt -text -noout` before pasting
- **URL inaccessibility:** Test all URLs from external network (not just internal) before submission
- **EETT portal access:** If cannot log in, contact EETT help desk (reference Article 6.4 access grant)

### 12.5 DOCUMENT AUTHENTICITY

**This template is the official EETT-approved format for NTL publication datasheets.** 

- ✅ **Authentic version:** Available from EETT at https://eett.gr/trust-services/forms
- ⚠️ **Do not use modified templates:** EETT's automated processing requires exact structure
- ✅ **Acceptable formats:** Excel (.xlsx), XML (per ETSI TS 119 612 schema)
- ❌ **Not acceptable:** Word documents, PDF forms, CSV files, custom databases

**Template version:** This is **Template v1.0 (2025-06-15)**, aligned with:
- ETSI TS 119 612 v2.3.1 (2020-04)
- Commission Implementing Decision (EU) 2015/1505
- eIDAS Regulation (EU) 910/2014
- EETT Κανονισμός Παρόχων Υπηρεσιών Εμπιστοσύνης (current as of 2025)

If ETSI publishes a new version of TS 119 612 or EETT updates requirements, this template may be revised. Check EETT website for latest version before each submission.

---

## ✅ PRE-SUBMISSION FINAL CHECKLIST

**Before submitting to EETT, confirm:**

- ☐ **EETT approval received** (have decision letter)
- ☐ **All services operational** (endpoints tested)
- ☐ **All placeholders replaced** (no `[BRACKETS]` remain)
- ☐ **Sheet 1 complete** (TSP information accurate)
- ☐ **Sheet 2 complete** (one row per service, all fields filled)
- ☐ **Sheet 3 structure ready** (empty for initial submission)
- ☐ **Cross-document validation passed** (Docs 02, 03, 05, 06 consistency)
- ☐ **Technical tests passed** (OCSP, CRL, TSA, URLs accessible)
- ☐ **Bilingual quality checked** (Greek/English accurate)
- ☐ **Legal representative approval** (signatures obtained)
- ☐ **Qualified signature ready** (QES/QSeal available)
- ☐ **Cover letter prepared** (references approval decision)
- ☐ **ASiC-E packaging ready** (per Doc 15)
- ☐ **Backup created** (version-controlled copy archived)

**Final step:** Submit via EETT Electronic Submission System → Monitor for EETT confirmation → Verify NTL publication → Notify team → Go live! 🚀

---

## 🎯 SUCCESS CRITERIA

**You will know this datasheet is successful when:**

1. ✅ EETT acknowledges receipt (confirmation email within 24 hours)
2. ✅ EETT reviews without requesting corrections (1-5 working days)
3. ✅ Your TSP appears on Greek NTL at https://eett.gr/trusted-list
4. ✅ All service information displays correctly (names, OIDs, URLs)
5. ✅ CA certificates validate successfully (relying parties can build trust chains)
6. ✅ EU Trusted List (LOTL) synchronizes your data (appears at https://ec.europa.eu/tools/lotl within 48 hours)
7. ✅ Relying party validators (DSS, Adobe, Microsoft) recognize your certificates as qualified
8. ✅ You can commence providing qualified services (no compliance blockers)

---

**ΤΕΛΟΣ ΕΓΓΡΑΦΟΥ / END OF DOCUMENT**

---

**Document Completion Checklist for This Template:**
- ☐ Replace all `[PLACEHOLDERS]` with actual values from Doc 00 (Intake Questionnaire)
- ☐ Populate Sheet 2 with your specific services (delete example rows, add your actual services)
- ☐ Insert actual CA certificate PEM blocks (from Doc 06)
- ☐ Test all URLs before submission (CP, OCSP, CRL, TSA, website, CAR)
- ☐ Obtain legal representative signature (digital QES or handwritten + scan)
- ☐ Save completed version with proper filename: `14_NTL_Publication_Datasheet_[YOUR_COMPANY]_v1.0_[DATE].xlsx`
- ☐ Package into ASiC-E container per Doc 15
- ☐ Submit to EETT

**Good luck with your submission! May your services achieve "granted" status swiftly and serve the eIDAS ecosystem reliably. 🎉**

---

*This document was generated as part of the EETT eIDAS Dossier - Comprehensive Implementation Plan.*  
*For questions or support, consult Doc 15 (Submission Guide) or contact EETT directly.*  
*Version: Template 1.0 | Date: 2025-06-15 | Status: Ready for completion and submission*