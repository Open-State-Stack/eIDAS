# IMPLEMENTATION QUICK REFERENCE GUIDE
## Revocation Status Services - Operational Deployment

**Document Type:** Internal Implementation Guide  
**Target Audience:** NOC/SOC Operators, RA Staff, CA Administrators  
**Version:** 1.0  
**Date:** 2025-01-15  
**Status:** Ready for Deployment

---

## 📌 QUICK START OVERVIEW

This guide helps operational teams **implement** the enriched revocation procedures documented in:
- `Drafts/11_Revocation_Status_SOP_GR.md`
- `Drafts/11a_Web_Disclosure_Text_GR.md`

**Implementation Timeline:** 2-4 weeks (depending on system readiness)

---

## ✅ PRE-IMPLEMENTATION CHECKLIST

### Phase 1: Infrastructure (Week 1)

#### OCSP Services
- [ ] Deploy 4 OCSP responders (2 per datacenter)
- [ ] Configure load balancer (round-robin or least-connections)
- [ ] Generate OCSP signing certificates (1 year validity)
- [ ] Store OCSP keys in HSM
- [ ] Configure cache settings (nextUpdate = 4 hours)
- [ ] Test OCSP endpoint: `http://ocsp.[DOMAIN].gr`
- [ ] Verify response time < 150ms (95th percentile)

#### CRL Services
- [ ] Configure CRL generation schedules:
  - Full CRL: Every 12 hours
  - Delta CRL: Every 1 hour
- [ ] Set up CDN distribution or multiple HTTP endpoints
- [ ] Configure CRL signing (CA key in HSM)
- [ ] Test CRL downloads: `http://crl.[DOMAIN].gr/crl/`
- [ ] Verify CRL size tracking (alerts if > 10 MB)

#### Telephone Hotline
- [ ] Provision toll-free number: [REVOCATION_HOTLINE]
- [ ] Configure call routing to NOC/SOC
- [ ] Enable call recording (128 kbps, AES-256 encryption)
- [ ] Set up IVR greeting: "This call will be recorded..."
- [ ] Configure 24×7 coverage (3 shifts, N+1 redundancy)
- [ ] Test inbound/outbound calling

#### Web Portal
- [ ] Deploy revocation portal at: [WEBSITE_URL]/revoke
- [ ] Integrate with authentication system (username + password + 2FA)
- [ ] Configure rate limiting (5 requests/hour per account)
- [ ] Enable WAF (OWASP Top 10 rules)
- [ ] Set session timeout (15 minutes)
- [ ] Test login flow and revocation process

#### Email Service
- [ ] Set up dedicated mailbox: [REVOCATION_EMAIL]
- [ ] Configure automatic digital signature verification
- [ ] Set up auto-reply for unsigned requests
- [ ] Configure rate limiting (3 requests/hour per email)
- [ ] Test email reception and processing

---

### Phase 2: Systems Integration (Week 1-2)

#### ITSM (Ticket System)
- [ ] Configure ticket format: `REV-YYYYMMDD-NNNN`
- [ ] Create workflow states:
  - PENDING_AUTHENTICATION
  - AUTHENTICATED
  - AUTHENTICATION_FAILED
  - REVOCATION_EXECUTED
  - COMPLETED
- [ ] Set up automatic ticket creation from all channels
- [ ] Configure email/SMS notifications
- [ ] Enable SLA tracking (15 min target, 1 hour max)

#### CA Database Integration
- [ ] Create revocation API or stored procedure
- [ ] Implement atomic transaction for status update
- [ ] Configure reason code field (0-10 per RFC 5280)
- [ ] Set up UTC timestamp with millisecond precision
- [ ] Enable audit logging (immutable, append-only)
- [ ] Configure OCSP cache invalidation trigger
- [ ] Schedule CRL inclusion trigger

#### Monitoring & Alerting
- [ ] Set up metrics collection:
  - Revocation count per channel/day
  - MTTR (Mean Time To Revoke)
  - OCSP uptime and response time
  - CRL generation success/failure
  - Queue depth
- [ ] Configure alerts:
  - OCSP/CRL down > 5 min → SMS to NOC
  - Revocation queue > 10 → QTS Manager
  - Spike > 5x average → Security Team
- [ ] Set up dashboards (Grafana, Kibana, or similar)

---

### Phase 3: Documentation & Training (Week 2-3)

#### Internal Documentation
- [ ] Create operator quick reference cards (laminated, desk-ready)
- [ ] Document system access credentials and procedures
- [ ] Create troubleshooting runbook
- [ ] Document escalation contacts and procedures
- [ ] Prepare fraud scenario training materials

#### Staff Training
- [ ] Schedule training sessions (8 hours per operator)
- [ ] Cover topics:
  - Authentication methods A/B/C
  - Fraud detection (Red Flags)
  - System operation (ITSM, CA interface)
  - GDPR and eIDAS basics
  - Escalation procedures
- [ ] Conduct role-play exercises (fraud scenarios)
- [ ] Certify operators (pass/fail assessment)
- [ ] Document training completion in HR records

#### External Publication
- [ ] Publish web disclosure text at: [WEBSITE_URL]/revocation
- [ ] Update certificate policy with revocation URLs
- [ ] Update subscriber agreements with new procedures
- [ ] Announce 24×7 hotline number to existing subscribers
- [ ] Update EETT registry with contact information

---

### Phase 4: Testing (Week 3)

#### Unit Testing
- [ ] Test each authentication method separately
- [ ] Test ticket creation from all channels
- [ ] Test CA database update and rollback
- [ ] Test OCSP cache flush
- [ ] Test CRL generation with new revocation
- [ ] Test email/SMS notifications

#### Integration Testing
- [ ] End-to-end phone revocation (Method A)
- [ ] End-to-end phone revocation (Method B - callback)
- [ ] End-to-end phone revocation (Method C - OTP)
- [ ] End-to-end web portal revocation
- [ ] End-to-end email revocation
- [ ] End-to-end in-person revocation
- [ ] Test fraud detection escalation
- [ ] Test RA Manager escalation flow

#### Performance Testing
- [ ] Load test OCSP (1000 requests/sec)
- [ ] Load test web portal (100 concurrent users)
- [ ] Stress test phone system (10 simultaneous calls)
- [ ] Measure MTTR (target < 15 min)
- [ ] Verify SLA compliance (> 95% within target)

#### Security Testing
- [ ] Penetration test web portal (OWASP Top 10)
- [ ] Test rate limiting effectiveness
- [ ] Test session management and timeout
- [ ] Test authentication bypass attempts
- [ ] Test social engineering resistance (red team)

#### Disaster Recovery Testing
- [ ] Fail over to DR datacenter
- [ ] Test OCSP availability during failover
- [ ] Test CRL generation from DR
- [ ] Verify data replication consistency
- [ ] Measure RTO/RPO (target: < 5 minutes)

---

### Phase 5: Go-Live Preparation (Week 4)

#### Final Checklist
- [ ] All placeholders replaced with actual values
- [ ] All systems tested and operational
- [ ] All staff trained and certified
- [ ] Monitoring dashboards live
- [ ] Escalation contacts confirmed
- [ ] Backup/DR tested
- [ ] SOP approved by QTS Manager
- [ ] Web disclosure published
- [ ] EETT notified of go-live date

#### Go-Live Day
- [ ] Morning briefing with all teams (NOC, RA, CA, Management)
- [ ] Confirm 24×7 coverage schedule
- [ ] Open dedicated Slack/Teams channel for go-live support
- [ ] Enable monitoring alerts (watch for anomalies)
- [ ] Test one revocation from each channel (real or test cert)
- [ ] Monitor queue depth and response times
- [ ] Evening debrief and lessons learned

---

## 👥 OPERATOR QUICK REFERENCE

### For NOC/SOC Operators (Phone/Email)

#### Incoming Phone Call Script:

```
"Good [morning/afternoon/evening], [COMPANY NAME] Revocation Hotline,
[YOUR NAME] speaking. This call will be recorded for quality and security.

To revoke your certificate, I need to verify your identity.
Please have your registration email and certificate serial number ready.

May I have your full name as it appears on the certificate?"

[Retrieve enrollment record]

"Thank you. I will now ask you 2 security questions you set during enrollment."

[Ask 2 of 3 questions]

[If 2/2 correct:]
"Thank you. I can now proceed with the revocation. 
What is the reason for revoking your certificate?
[Options: Lost device, key compromised, job change, replacement, stop using, other]

Your certificate is now revoked. Ticket ID: REV-20250115-XXXX.
You will receive email and SMS confirmation within 1 hour.
The revocation is effective immediately and will appear in OCSP within 15 minutes.

Is there anything else I can help you with today?
Thank you for calling. Goodbye."

[If 1/2 or 0/2 correct:]
"I'm sorry, I cannot verify your identity with the information provided.
For your security, I can:
1. Send a one-time code to your registered email, OR
2. Arrange a callback with our Registration Authority Manager

Which would you prefer?"
```

#### Red Flag Detection:

**If you notice:**
- Hesitation or guessing on security questions
- Background noise suggesting call center
- Pressure to "just do it quickly"
- Voice doesn't match profile (gender, accent)
- Caller doesn't know basic info (email, issuance date)
- Multiple calls from same number for different certs

**Action:**
1. Say calmly: "For your security, I need to verify this with my supervisor. Please hold."
2. Put on hold (do NOT mute - use hold button)
3. Immediately contact RA Manager or NOC Supervisor
4. Do NOT process revocation until cleared
5. Document incident in ticket notes

---

### For RA Operators (In-Person)

#### In-Person Revocation Checklist:

1. **Greet subscriber:** "Hello, welcome to [COMPANY NAME]. How can I help you today?"

2. **Request ID:** "I'll need to see your government-issued ID, please."
   - Acceptable: National ID, Passport, Driver's License (valid)
   - Check photo matches person
   - Check name matches certificate

3. **Retrieve record:** Look up subscriber in system by name + email

4. **Complete form:** Hand subscriber Form 11-REV
   - Subscriber fills: Name, email, cert serial, reason
   - Subscriber signs and dates

5. **Execute revocation:** Enter in system while subscriber present
   - Ticket created
   - Status updated to "revoked"
   - Reason code entered

6. **Provide receipt:** Print receipt with Ticket ID and timestamp
   - Hand to subscriber
   - "Your certificate is now revoked. You'll receive email/SMS confirmation."

7. **Archive:** Scan ID copy + form, attach to ticket
   - Physical form filed in secure cabinet
   - Retention: 7 years

**Time:** 5-10 minutes total

---

### For CA Administrators (System Operation)

#### Revocation Execution Procedure:

1. **Receive authenticated ticket** (status: AUTHENTICATED)

2. **Dual Control (if high-value cert):**
   - Two CA Admins must approve
   - Both sign in system
   - Requires two separate HSM PINs

3. **Execute revocation:**
   ```sql
   BEGIN TRANSACTION;
   
   UPDATE certificates
   SET status = 'revoked',
       revocation_reason = [REASON_CODE],
       revocation_timestamp = CURRENT_TIMESTAMP(3), -- millisecond
       revoked_by = [OPERATOR_ID]
   WHERE serial_number = [CERT_SERIAL];
   
   INSERT INTO audit_log (timestamp, action, cert_serial, operator, reason)
   VALUES (CURRENT_TIMESTAMP(3), 'REVOCATION', [CERT_SERIAL], [OPERATOR_ID], [REASON]);
   
   COMMIT;
   ```

4. **Trigger status services:**
   - OCSP cache flush: `CALL flush_ocsp_cache([CERT_SERIAL]);`
   - CRL schedule: Automatic (next Delta CRL in < 1 hour)

5. **Verify replication:** Check DR database shows same status (< 5 seconds)

6. **Update ticket:** Status → REVOCATION_EXECUTED

7. **Notifications:** System sends email + SMS automatically

**Time:** < 30 seconds per revocation

---

## 🚨 EMERGENCY PROCEDURES

### CA Key Compromise (Code Red)

**If you suspect CA private key compromise:**

1. **IMMEDIATE:** Shut down all CA operations
   - Stop certificate issuance
   - Stop CRL generation (keep last CRL available)
   - Keep OCSP running (uses separate key)

2. **NOTIFY (within 1 hour):**
   - QTS Manager → CEO
   - CEO → ΕΕΤΤ (Level 5 incident report)
   - Activate incident response team

3. **TECHNICAL:**
   - Upper CA revokes compromised CA certificate
   - Generate final CRL with all issued certs (reason: cACompromise)
   - Publish final CRL and keep available indefinitely

4. **COMMUNICATIONS:**
   - Website banner announcement
   - Email to all subscribers
   - Press release (if Level 5)

**Do NOT attempt to handle alone. Escalate immediately.**

---

### Mass Revocation Attack

**If you see abnormal revocation spike (>5x normal):**

1. **VERIFY:** Not legitimate (e.g., company-wide badge replacement)

2. **PAUSE:** Temporarily disable automated email revocation processing

3. **ALERT:** Security Team + QTS Manager

4. **INVESTIGATE:**
   - Check source IPs (DDoS pattern?)
   - Check authentication success rate (brute force?)
   - Check ticket reasons (all same = suspicious)

5. **MITIGATE:**
   - Block offending IPs at firewall
   - Increase rate limiting
   - Require Method B (callback) for all requests temporarily

6. **COMMUNICATE:** Subscribers may experience delays (website notice)

---

## 📊 DAILY OPERATIONS

### Daily Checklist (Each Shift)

- [ ] Check OCSP uptime (target: 100%)
- [ ] Verify latest CRL generated successfully
- [ ] Review revocation queue (should be near zero)
- [ ] Check for alerts/incidents
- [ ] Review yesterday's MTTR (target: < 15 min)
- [ ] Check call recording storage capacity
- [ ] Test one OCSP query manually
- [ ] Download and verify latest CRL

### Weekly Checklist (QTS Manager)

- [ ] Review SLA compliance (target: > 95%)
- [ ] Review fraud incident reports
- [ ] Check staff training status
- [ ] Review monitoring dashboard
- [ ] Test DR failover (monthly, but check weekly that it's scheduled)
- [ ] Review audit log for anomalies

### Monthly Checklist (Compliance)

- [ ] Generate SLA report
- [ ] Review all fraud incidents
- [ ] Check call recording retention (7 years)
- [ ] Verify all staff certifications current
- [ ] Review and update SOP if needed
- [ ] CAB audit preparation (if scheduled)

---

## 🔧 TROUBLESHOOTING

### OCSP Not Responding

**Symptoms:** Clients report "Certificate status unknown"

**Check:**
1. `curl -v http://ocsp.[DOMAIN].gr/` → Should return 200 OK
2. Check load balancer health checks
3. Check OCSP responder logs
4. Check HSM connectivity (OCSP signing key)

**Fix:**
- Restart OCSP responder instances
- Fail over to DR datacenter if primary down
- Check network/firewall rules

**Alert:** If down > 5 minutes, automatic SMS to NOC

---

### CRL Generation Failed

**Symptoms:** Monitoring alert "CRL generation failed"

**Check:**
1. Check CA system logs
2. Check HSM availability (CRL signing key)
3. Check disk space for CRL storage
4. Check previous CRL is still available

**Fix:**
- Manually trigger CRL generation
- If HSM issue, fail over to DR HSM
- Increase nextUpdate time temporarily if cannot fix immediately

**Critical:** Keep latest CRL available. Do not let it expire (nextUpdate).

---

### Revocation Queue Backing Up

**Symptoms:** > 10 tickets in PENDING_AUTHENTICATION state

**Check:**
1. Are operators available? (Staffing issue)
2. Is authentication system down? (OTP not sending)
3. Is there a sudden spike in requests? (Attack?)

**Fix:**
- Call in additional operators if understaffed
- Check email/SMS gateway if OTP issues
- Implement attack mitigation if suspicious

**Escalate:** To QTS Manager if cannot clear queue in 1 hour

---

### Subscriber Cannot Authenticate

**Symptoms:** Subscriber calls, fails all authentication methods

**Options:**
1. **Method C:** Send OTP to registered email
2. **RA Manager:** Schedule video call with ID verification
3. **In-person:** Direct subscriber to nearest RA office

**Document:** All attempts in ticket notes for audit trail

---

## 📞 ESCALATION CONTACTS

| Issue | First Contact | Second Contact | Emergency |
|-------|---------------|----------------|-----------|
| Authentication Failure | RA Manager | QTS Manager | CEO |
| Suspected Fraud | NOC Supervisor | Security Team | CISO |
| CA Key Compromise | QTS Manager | CEO | EETT (within 1h) |
| Mass Attack | Security Team | CISO | CEO + EETT |
| System Outage | NOC Team Lead | Infrastructure Manager | CTO |
| GDPR Complaint | Compliance Officer | DPO | Legal Counsel |

**Contact List:**
- NOC Supervisor: [PHONE], [EMAIL]
- RA Manager: [PHONE], [EMAIL]
- QTS Manager: [PHONE], [EMAIL]
- Security Team: [PHONE], [EMAIL], [SLACK_CHANNEL]
- CEO: [PHONE], [EMAIL]
- EETT: +30 210 XXX XXXX, [EETT_PORTAL]

---

## 🎯 SUCCESS METRICS

### Key Performance Indicators (KPIs)

| Metric | Target | Measurement |
|--------|--------|-------------|
| MTTR (Mean Time To Revoke) | < 15 min | 95th percentile |
| OCSP Uptime | > 99.95% | Monthly |
| OCSP Response Time | < 150ms | 95th percentile |
| CRL Generation Success | 100% | Per scheduled run |
| SLA Compliance | > 95% | % within 1 hour |
| Authentication Fraud Rate | < 0.1% | Per month |
| Subscriber Complaint Rate | < 1% | Per month |

### Reporting

**Daily:** Email to QTS Manager (automatic)
- Revocations processed: [COUNT]
- MTTR: [XX] minutes
- OCSP uptime: [XX]%
- Alerts: [COUNT] (details attached)

**Monthly:** Report to Management
- SLA compliance: [XX]%
- Total revocations: [COUNT]
- By channel: Phone [XX], Web [XX], Email [XX], In-person [XX]
- Fraud incidents: [COUNT]
- System availability: [XX]%

---

## 📚 REFERENCE MATERIALS

### Quick Links
- SOP (Full): `Drafts/11_Revocation_Status_SOP_GR.md`
- Web Disclosure: `Drafts/11a_Web_Disclosure_Text_GR.md`
- Enrichment Summary: `ENRICHMENT_SUMMARY.md`
- Monitoring Dashboard: [GRAFANA_URL]
- ITSM Ticket System: [ITSM_URL]
- CA Management Portal: [CA_PORTAL_URL]

### External Standards
- eIDAS Regulation: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32014R0910
- RFC 5280 (X.509): https://datatracker.ietf.org/doc/html/rfc5280
- ETSI EN 319 401: https://www.etsi.org/standards (search EN 319 401)
- GDPR: https://gdpr-info.eu/

---

## ✅ GO-LIVE APPROVAL

**Required Sign-Offs Before Production:**

- [ ] QTS Manager: _________________ Date: _______
- [ ] RA Manager: _________________ Date: _______
- [ ] Security Manager: _________________ Date: _______
- [ ] Compliance Officer: _________________ Date: _______
- [ ] CEO/CTO: _________________ Date: _______

**Notes:**
_______________________________________________________________
_______________________________________________________________
_______________________________________________________________

---

## 📝 REVISION HISTORY

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-01-15 | eIDAS Consultant | Initial implementation guide |
| | | | |

---

**END OF IMPLEMENTATION GUIDE**

For questions or clarifications, contact: QTS Manager ([EMAIL], [PHONE])