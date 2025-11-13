# APPENDIX A: QUALIFIED SIGNATURE CREATION DEVICE (QSCD)
## Remote Signing Architecture & Sole Control Implementation

**Document Reference:** 04_TSP_Policy_GR_EN  
**Version:** 1.0  
**Date:** [SIGN_DATE]  
**Status:** Technical Specification  
**Compliance:** eIDAS Regulation Annex II, CEN EN 419 241-1/2

---

## 1. INTRODUCTION

### 1.1 Purpose
This appendix specifies the technical architecture and operational procedures for [LEGAL_NAME_EN]'s remote Qualified Signature Creation Device (QSCD) solution, ensuring compliance with eIDAS Regulation (EU) No 910/2014 Annex II requirements.

### 1.2 Scope
- Remote QSCD architecture for qualified electronic signatures (QES)
- Sole control implementation mechanisms
- Key generation, storage, and activation procedures
- Security controls preventing key duplication

### 1.3 Regulatory Framework
- **eIDAS Annex II:** Requirements for qualified signature creation devices
- **CEN EN 419 241-1:** Trustworthy Systems Supporting Server Signing - Part 1: General System Security Requirements
- **CEN EN 419 241-2:** Trustworthy Systems Supporting Server Signing - Part 2: Protection Profile for QSCD for Server Signing
- **CEN EN 419 221-5:** Protection Profiles for TSP Cryptographic Modules - Part 5: Cryptographic Module for Trust Services

---

## 2. ARCHITECTURAL OVERVIEW

### 2.1 High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    End User Device                          │
│  ┌──────────────┐   ┌────────────────────────────────┐    │
│  │ Web Browser  │   │  Mobile App (iOS/Android)      │    │
│  │ (WebAuthn)   │   │  (Biometric + PIN)             │    │
│  └──────┬───────┘   └────────┬───────────────────────┘    │
└─────────┼────────────────────┼────────────────────────────┘
          │ TLS 1.3            │ TLS 1.3 + mTLS
          │ (HTTPS)            │ (Certificate Pinning)
          ▼                    ▼
┌─────────────────────────────────────────────────────────────┐
│            Signature Activation Module (SAM)                │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Multi-Factor Authentication Engine                  │  │
│  │  • Knowledge: PIN/Password (6-12 digits)            │  │
│  │  • Possession: Mobile device (TOTP/Push notification)│  │
│  │  │             OR Hardware token (FIDO2)            │  │
│  │  • Inherence: Biometric (fingerprint/face ID)       │  │
│  │               Optional but recommended               │  │
│  └──────────────────────────────────────────────────────┘  │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Signature Authorization Protocol (SAP)              │  │
│  │  • Time-limited authorization token (60 seconds)     │  │
│  │  • Single-use nonce (prevents replay attacks)       │  │
│  │  • Hash-to-be-signed (HTBS) binding                 │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────┬───────────────────────────────────┘
                          │ Internal Network (Isolated VLAN)
                          ▼
┌─────────────────────────────────────────────────────────────┐
│         Server Signing Application (SSA)                    │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Signature Coordination Layer                        │  │
│  │  • Validates authorization token                     │  │
│  │  • Enforces sole control policies                    │  │
│  │  • Logs all signature operations (audit trail)       │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────┬───────────────────────────────────┘
                          │ PKCS#11 / CNG / JCE API
                          ▼
┌─────────────────────────────────────────────────────────────┐
│  Hardware Security Module (HSM) - FIPS 140-2 Level 3       │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  Cryptographic Signing Engine                        │  │
│  │  • Private keys stored in HSM (never exported)       │  │
│  │  │  Key Handle ID linked to user identity           │  │
│  │  • Signature algorithm: RSA-PSS 2048/3072/4096      │  │
│  │  │                       ECDSA P-256/P-384/P-521    │  │
│  │  • Hash algorithm: SHA-256, SHA-384, SHA-512        │  │
│  └──────────────────────────────────────────────────────┘  │
│  Model: [Thales Luna HSM / Utimaco CryptoServer / etc.]    │
│  Certification: FIPS 140-2 Level 3, Common Criteria EAL 4+ │
└─────────────────────────────────────────────────────────────┘
```

### 2.2 Key Components

#### 2.2.1 Signature Activation Module (SAM)
- **Function:** Authenticates user and authorizes signature operations
- **Deployment:** High-availability cluster (minimum 2 nodes)
- **Technology:** REST API with OAuth 2.0 + OpenID Connect
- **Session Management:** Redis (encrypted, ephemeral sessions <5 minutes)

#### 2.2.2 Server Signing Application (SSA)
- **Function:** Coordinates signature creation with HSM
- **Deployment:** Application servers in isolated VLAN
- **Technology:** Java Spring Boot / .NET Core with HSM provider libraries
- **Performance:** <2 second signature latency (p95)

#### 2.2.3 Hardware Security Module (HSM)
- **Model:** [Thales Luna HSM Network 7 / Utimaco CryptoServer CP5]
- **Certification:** FIPS 140-2 Level 3, Common Criteria EAL 4+
- **Key Storage:** Private keys generated and stored exclusively in HSM
- **Redundancy:** N+1 HSM cluster with key replication

---

## 3. SOLE CONTROL IMPLEMENTATION

### 3.1 eIDAS Annex II Requirements

Per eIDAS Annex II, a QSCD must ensure:
1. **Sole control:** Signature creation data can be used only once and its confidentiality is ensured
2. **No duplication:** Signature creation data cannot be derived, duplicated, or reconstructed
3. **Protection:** Signature creation data is reliably protected against use by others

### 3.2 Sole Control Mechanisms

#### 3.2.1 Multi-Factor Authentication (Mandatory)
**Minimum 2 Factors Required:**

| Factor | Type | Implementation | Security Level |
|--------|------|----------------|----------------|
| **Knowledge** | PIN/Password | 6-12 digit PIN, entered on user device | Required |
| **Possession** | Mobile device OR Hardware token | TOTP (time-based one-time password) via mobile app, OR FIDO2 hardware key | Required (one of) |
| **Inherence** | Biometric | Fingerprint or Face ID (on mobile device) | Recommended |

**Authentication Flow:**
1. User enters PIN on trusted device
2. System sends push notification to registered mobile device OR requests FIDO2 hardware key
3. User approves signature request (with biometric if available)
4. SAM generates time-limited authorization token (60-second validity)
5. Token binds to: User identity + Hash-to-be-signed + Nonce + Timestamp

#### 3.2.2 Activation Data Separation
- **PIN Storage:** Hashed with Argon2id (memory-hard function), salted, stored in separate database
- **Device Binding:** Mobile device certificate or FIDO2 attestation bound to user account
- **Key Handle Isolation:** Each user's private key identified by unique handle, access controlled by authorization token

#### 3.2.3 Signature Authorization Protocol (SAP)
```json
{
  "authorization_token": "eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user_id": "uuid-of-user",
  "key_handle_id": "uuid-of-private-key",
  "htbs": "SHA256-hash-of-document-to-be-signed",
  "nonce": "random-single-use-value",
  "timestamp": "2025-01-15T14:32:10Z",
  "expires_at": "2025-01-15T14:33:10Z",
  "mfa_methods": ["pin", "totp", "biometric"]
}
```

**Token Validation (by SSA):**
- Signature valid (ECDSA P-256 signed by SAM)
- Not expired (<60 seconds old)
- Nonce not previously used (checked against Redis cache)
- HTBS matches document hash
- User has active certificate (not revoked/suspended)

#### 3.2.4 Key Isolation & Non-Exportability
- **Key Generation:** Performed exclusively within HSM (never in software)
- **Key Storage:** Private keys never leave HSM secure boundary
- **Key Backup:** Encrypted with M-of-N key splitting (minimum 3-of-5 custodians)
- **Key Usage:** PKCS#11 C_Sign operation called only after successful authorization
- **Audit Logging:** All key usage logged with user identity, timestamp, HTBS, authorization token ID

### 3.3 Prevention of Unauthorized Use

#### 3.3.1 Session Management
- **Session Duration:** Maximum 5 minutes after authentication
- **Signature Limit:** 1 signature per authorization token (single-use)
- **Concurrent Sessions:** Maximum 1 active session per user (enforced by SAM)
- **Idle Timeout:** 2 minutes of inactivity triggers session termination

#### 3.3.2 Rate Limiting & Fraud Detection
- **Authentication Attempts:** Maximum 3 failed PIN attempts → 15-minute lockout
- **Daily Signature Limit:** Configurable per user (default: 100 signatures/day)
- **Velocity Checks:** Maximum 10 signatures per minute per user
- **Anomaly Detection:** ML-based detection of unusual signing patterns (time, location, volume)

#### 3.3.3 Tamper Detection
- **HSM Tamper Response:** Key zeroization upon physical tamper detection
- **Application Integrity:** Code signing with periodic validation
- **Network Monitoring:** IDS/IPS monitoring for PKCS#11 API abuse

---

## 4. KEY LIFECYCLE MANAGEMENT

### 4.1 Key Generation

**Process:**
1. User completes identity verification (per Certificate Policy)
2. User registers mobile device and sets activation PIN
3. SSA sends key generation request to HSM with user metadata
4. HSM generates key pair (RSA 3072-bit or ECDSA P-256) within secure boundary
5. Public key extracted and embedded in X.509 certificate
6. Private key handle ID stored in user profile (encrypted at rest)
7. User receives certificate and performs test signature

**Parameters:**
- **Algorithm:** RSA-PSS 3072-bit (default) or ECDSA P-256 (optional)
- **Curve (ECDSA):** NIST P-256 (secp256r1)
- **Key Usage:** digitalSignature, nonRepudiation
- **Validity:** 1-3 years (configurable per service level)

### 4.2 Key Storage

**HSM Partition Structure:**
```
HSM Partition: QES_PROD
├── User Keys (1:1 mapping)
│   ├── Key Handle ID: 550e8400-e29b-41d4-a716-446655440000
│   │   └── Private Key: RSA-3072 (non-exportable)
│   ├── Key Handle ID: 6ba7b810-9dad-11d1-80b4-00c04fd430c8
│   │   └── Private Key: ECDSA-P256 (non-exportable)
│   └── ...
├── Access Control: Token-based authorization only
└── Audit Log: All operations logged
```

**Encryption at Rest:**
- HSM internal encryption (AES-256 GCM)
- Key backup encrypted with M-of-N key splitting (AES-256)
- Database encryption for user profiles (AES-256 GCM with key rotation every 90 days)

### 4.3 Key Activation

**Per-Signature Activation:**
1. User initiates signature (via web or mobile app)
2. Document hash (HTBS) computed client-side
3. User authenticates with MFA (PIN + TOTP/FIDO2 + optional biometric)
4. SAM generates authorization token (60-second validity)
5. SSA validates token and calls HSM C_Sign with key handle ID
6. HSM performs signature operation (RSA-PSS or ECDSA)
7. Signature returned to client, token invalidated

**No Persistent Activation:** Private key never "unlocked" for extended periods; each signature requires fresh authorization.

### 4.4 Key Revocation

**Triggers:**
- User request (online revocation form or hotline call)
- Certificate expiration
- Compromise notification
- Subscriber agreement termination
- Inactivity >2 years

**Process:**
1. Revocation request received by RA (Registration Authority)
2. Certificate status updated in database (revoked)
3. CRL updated within 1 hour
4. OCSP responder updated immediately
5. HSM key handle marked as inactive (key remains for audit, cannot be used for signing)
6. User notified via email/SMS

**Key Deletion:**
- Retained in HSM for 7 years (audit/legal requirements)
- Securely deleted after retention period using HSM zeroization procedures

---

## 5. SECURITY CONTROLS

### 5.1 Network Security

**Isolation:**
- SAM in DMZ (public-facing)
- SSA in internal VLAN (no direct internet access)
- HSM in crypto VLAN (isolated from all other networks)

**Firewall Rules:**
```
DMZ (SAM) → Internal VLAN (SSA): TCP 8443 (HTTPS with mTLS)
Internal VLAN (SSA) → Crypto VLAN (HSM): TCP 1792 (PKCS#11 over TLS)
All other traffic: DENY
```

**Encryption:**
- Client ↔ SAM: TLS 1.3 with certificate pinning
- SAM ↔ SSA: TLS 1.3 with mutual authentication (client certificates)
- SSA ↔ HSM: PKCS#11 over TLS 1.2+ with HSM client authentication

### 5.2 Access Control

**Role-Based Access Control (RBAC):**

| Role | Permissions | MFA Required |
|------|-------------|--------------|
| **End User** | Initiate signature, view own certificates | Yes (2FA) |
| **RA Operator** | Issue/revoke certificates, verify identities | Yes (2FA + hardware token) |
| **Crypto Officer** | HSM key ceremony, backup/restore | Yes (3FA + physical presence) |
| **System Administrator** | Configure SSA, monitor logs | Yes (2FA + hardware token) |
| **Security Auditor** | Read-only access to logs and configurations | Yes (2FA) |

**Separation of Duties:**
- No single person can generate keys, issue certificates, and revoke certificates
- Minimum 2 Crypto Officers required for HSM key ceremonies (M-of-N)

### 5.3 Audit & Monitoring

**Logged Events:**
- User authentication (success/failure, timestamp, IP, device ID)
- Signature operations (user ID, key handle, HTBS, timestamp, authorization token ID)
- Key lifecycle events (generation, revocation, deletion)
- HSM operations (all PKCS#11 API calls)
- Administrative actions (configuration changes, user provisioning)

**Log Retention:**
- 7 years (compliance with Article 12 EETT Regulation)
- Stored in tamper-evident log system (write-once-read-many storage)
- Daily integrity verification (Merkle tree hashing)

**Real-Time Monitoring:**
- SIEM integration (Splunk, ELK, or equivalent)
- Alerts for:
  - Failed authentication attempts (>3 in 5 minutes)
  - Unusual signature volume (>100/hour per user)
  - HSM tamper detection
  - SSA/SAM service unavailability

### 5.4 Disaster Recovery

**Recovery Time Objective (RTO):** 4 hours  
**Recovery Point Objective (RPO):** 15 minutes

**Backup Strategy:**
- HSM key backup: Weekly, encrypted with M-of-N, stored in geographically separated vaults
- Database backup: Hourly incremental, daily full, encrypted AES-256
- Configuration backup: Version-controlled (Git), daily snapshots

**Failover:**
- Active-passive HSM cluster (automatic failover <30 seconds)
- Active-active SAM/SSA clusters (load-balanced)
- Database replication (synchronous, multi-region)

---

## 6. COMPLIANCE VERIFICATION

### 6.1 CEN EN 419 241-1 Mapping

| Requirement | Implementation | Evidence |
|-------------|----------------|----------|
| **SAM-01:** Unique identification | User ID + Key Handle ID | User database, HSM logs |
| **SAM-02:** Authentication | Multi-factor (PIN + TOTP/FIDO2) | SAM authentication logs |
| **SAM-03:** Authorization | Time-limited token with HTBS binding | Authorization token structure |
| **SAM-04:** Sole control | Single-use token, no persistent activation | Token validation logs |
| **SCDev-01:** Key generation in HSM | PKCS#11 C_GenerateKeyPair | HSM audit logs |
| **SCDev-02:** Non-exportable keys | HSM CKA_EXTRACTABLE=FALSE | HSM partition configuration |
| **SCDev-03:** Tamper detection | HSM tamper sensors, firmware validation | HSM security policy document |

### 6.2 eIDAS Annex II Compliance

| Annex II Requirement | Implementation | Verification Method |
|----------------------|----------------|---------------------|
| **(a) Signature creation data used only once** | Single-use authorization tokens, nonce validation | Token lifecycle logs, penetration testing |
| **(b) Confidentiality of signature creation data** | Private keys never leave HSM, encrypted storage | HSM certification, key export attempt testing |
| **(c) Cannot be derived** | Cryptographic strength (RSA-3072, ECDSA-P256) | Cryptanalysis resistance per FIPS 186-4 |
| **(d) Protected against use by others** | Multi-factor authentication, rate limiting | Authentication logs, fraud detection reports |
| **(e) Reliably protected by legitimate signatory** | User-controlled PIN, device binding | User agreement, device registration process |

### 6.3 Audit Evidence for CAB

**Documentation Package:**
1. This appendix (architecture and security controls)
2. HSM FIPS 140-2 Level 3 certificate
3. CEN EN 419 241-2 Protection Profile self-assessment
4. Penetration testing report (annual, by independent auditor)
5. Disaster recovery test results (bi-annual)
6. User authentication flow diagrams
7. Sample authorization token structure
8. Audit log samples (anonymized)

**CAB Review Focus:**
- Sole control mechanism demonstration (live test during audit)
- Key non-exportability verification (HSM configuration review)
- MFA effectiveness (authentication process walkthrough)
- Audit trail completeness (log sampling)

---

## 7. USER DOCUMENTATION

### 7.1 End-User Guide (Summary)

**Setting Up Remote Signing:**
1. Complete identity verification at Registration Authority
2. Download [LEGAL_NAME_EN] Signature App (iOS/Android) or use web interface
3. Register your mobile device with QR code
4. Set your 6-12 digit activation PIN (never share this!)
5. Enable biometric authentication (recommended)
6. Receive your qualified certificate via email

**Creating a Signature:**
1. Open document to be signed (PDF, XML, etc.)
2. Click "Sign with Qualified Signature"
3. Enter your activation PIN
4. Approve signature request on your mobile device (TOTP code or push notification)
5. Use biometric if enabled (fingerprint/Face ID)
6. Signature created within 2 seconds
7. Signed document returned to you

**Security Best Practices:**
- Never share your activation PIN
- Keep your mobile device secure (screen lock enabled)
- Report lost/stolen devices immediately (24×7 hotline: [REVOCATION_PHONE_24x7])
- Review signature history regularly (available in app/web portal)

### 7.2 RA Operator Guide (Summary)

**User Provisioning:**
1. Verify identity per Certificate Policy (ID document, video call, etc.)
2. Create user account in RA Portal
3. Assign certificate profile (QES Natural Person, Legal Representative, etc.)
4. Generate activation code (valid 7 days)
5. Send activation instructions to user via secure channel
6. Monitor user's device registration and first signature test

**Revocation Processing:**
- Standard revocation: <1 hour from request to CRL/OCSP update
- Emergency revocation (compromise): <15 minutes

---

## 8. CONCLUSION

[LEGAL_NAME_EN]'s remote QSCD solution implements eIDAS Annex II requirements through:

1. **Sole Control:** Multi-factor authentication with single-use authorization tokens
2. **Non-Duplication:** Private keys generated and stored exclusively in FIPS 140-2 Level 3 HSM
3. **Protection:** Cryptographic isolation, tamper detection, comprehensive audit logging

This architecture has been designed to balance regulatory compliance, security, and user experience, enabling qualified electronic signatures with the same legal effect as handwritten signatures across the European Union.

**CAB Attestation:** This appendix will be reviewed by [CAB_NAME] during the conformity assessment audit per Article 10 EETT Regulation.

---

**Document Approval:**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Qualified Trust Services Manager** | [QTS_MANAGER_NAME] | ________________ | [SIGN_DATE] |
| **Chief Information Security Officer** | [CISO_NAME] | ________________ | [SIGN_DATE] |
| **Crypto Officer** | [Crypto Officer Name] | ________________ | [SIGN_DATE] |

**End of Appendix A**
