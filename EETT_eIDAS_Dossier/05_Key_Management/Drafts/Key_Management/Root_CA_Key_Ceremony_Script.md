# Root CA Key Ceremony Script (Template)

**TSP:** Ελληνικές Υπηρεσίες Εμπιστοσύνης Α.Ε.  
**Location:** Offline Root Vault, Μαρούσι HQ  
**Date:** 2025-05-05  
**Purpose:** Generation of new Root CA key pair (`CN=Greek Trust Root CA 2025`, RSA-4096, SHA-384)

## 1. Participants (M=3, N=5)
| Role | Name | ID | Arrival | Signature |
|------|------|----|---------|-----------|
| Lead Crypto Officer | Σοφία Παπαδημητρίου | ID-CO-01 | 09:00 | __________ |
| Security Officer | Δημήτρης Καραγιάννης | ID-SO-02 | 09:00 | __________ |
| Compliance Witness | Ελένη Νικολάου | ID-CW-03 | 09:05 | __________ |
| Backup Crypto Officer | Νίκος Γεωργίου | ID-CO-04 | On standby | __________ |

## 2. Pre-Ceremony Checks
- Vault access logs reviewed (last entry 2025-03-28) – no discrepancies.
- HSM firmware verified (Thales Luna 7.6.0) – checksums matched vendor release.
- CCTV recording activated; reference ID: `VID-ROOT-20250505`.
- Hash of ceremony script printed and signed (SHA-256: `abf2...`).

## 3. Key Generation Steps
1. Insert quorum smart-cards (Crypto Officers) + operator card (Security Officer).
2. Authenticate to HSM via PED PINs.
3. Create partition `RootCA2025` with policy set `FIPS Level 3`.
4. Run command `pkcs11-tool --keypairgen --key-type rsa:4096 --label "RootCA2025"` (logged in `HSM_LOG_20250505.txt`).
5. Export public key to `RootCA2025_pub.pem`; verify fingerprint `84:6B:32:...`.
6. Generate self-signed certificate with validity 20 years; store as `RootCA2025.crt`.

## 4. Post-Generation Actions
- Backup private key to PED tokens (3 copies) sealed in tamper-evident bags (#101, #102, #103).
- Store tokens in fireproof safe (shelf B). Entry signed by COO.
- Destroy temporary files and wipe workstation (`sdelete`).
- Update Key Inventory Sheet (SharePoint) with key ID `ROOT-2025`.

## 5. Sign-offs
| Role | Signature | Date |
|------|-----------|------|
| Lead Crypto Officer | __________ | 2025-05-05 |
| Security Officer | __________ | 2025-05-05 |
| Compliance Witness | __________ | 2025-05-05 |

**Note:** Scan signed pages, store in `Evidence/Key_Ceremony_Packets/2025-05-05_ROOT.zip`, and log hash in Annex B (EV-501).
