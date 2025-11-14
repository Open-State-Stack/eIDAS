# 07 — Trust Services Incident Contact Annex

This annex provides the authoritative directory for all roles referenced across the Risk & Incident dossier. Update the entries immediately upon personnel or regulator changes and keep the signed PDF export in `Supporting_Docs/Contacts/` for submissions.

## 1. Core Incident Response Team (IRT)
| Role | Coverage | Primary Contact | Alternate | Channels | Escalation SLA |
|------|----------|----------------|-----------|----------|----------------|
| Incident Manager | 24×7 | [NAME_IM] / [PHONE_IM] / [EMAIL_IM] | [ALT_IM] | Secure voice bridge, Signal, Email | Ack ≤15m, engage ≤30m |
| CISO | 24×7 | [NAME_CISO] / [PHONE_CISO] / [EMAIL_CISO] | [ALT_CISO] | Voice, Signal | Ack ≤15m |
| SOC Lead | 24×7 | [NAME_SOC] / [PHONE_SOC] / [EMAIL_SOC] | [ALT_SOC] | SIEM pager, Slack `#soc-p1` | Pager auto-dispatch |
| DPO / GDPR Liaison | 07:00–23:00 GR (on-call) | [NAME_DPO] / [PHONE_DPO] / [EMAIL_DPO] | [ALT_DPO] | Phone, Email | Ack ≤30m, notify <1h |
| Technical Lead (Crypto Officer) | Business + on-call | [NAME_CRYPTO] / [PHONE_CRYPTO] / [EMAIL_CRYPTO] | [ALT_CRYPTO] | Voice, Matrix `@crypto` | Join war-room ≤30m |

## 2. External Stakeholders & Regulators
| Stakeholder | Purpose | Primary Channel | Backup Channel | Notes |
|-------------|---------|-----------------|----------------|-------|
| ΕΕΤΤ SOC | Art.5 notifications (Levels 3–5) | `eett-portal-url` | `incident@eett.gr` | Submit Initial (24h) + Final report IDs |
| ENISA / NCA | Cross-border escalations | `nca-contact` | Phone hotline | Trigger per Annex 3 Level 5 |
| Hellenic DPA (ΑΠΔΠΧ) | GDPR Art.33/34 | `dpa-portal` | `databreach@dpa.gr` | Copy DPO |
| CAB Lead Auditor | Evidence coordination | [CAB_EMAIL] | [CAB_PHONE] | Provide RCA + CAP |
| Primary Data Center (DC1) NOC | Facilities & power | `noc@primary-dc.com` | +30 xxx xxx xxxx | 15m onsite response |
| DR Site NOC | DR invocation | `drnoc@provider.com` | +30 yyy yyy yyyy | Maintain access list |

## 3. Communication Shortcuts
- **War-room channel:** `incident-YYYYMMDD-XXXX` on Slack; auto-create via `scripts/open_incident.sh`.
- **Bridge:** `+30-XXX-XXXX` (PIN `[BRIDGE_PIN]`).
- **Incident log template:** `Supporting_Docs/IR/incident-log-template.md` (linked in checklist).

## 4. Maintenance & Approvals
| Action | Owner | Frequency | Evidence |
|--------|-------|-----------|----------|
| Validate contact info | Compliance Ops | Quarterly | Signed change log in Supporting_Docs/Contacts |
| Distribution to SOC runbooks | SOC Lead | After every update | Change ticket ID |
| Regulator acknowledgement | DPO | Annual | Email confirmation archived in Records folder 12 |

*Latest update:* [CONTACT_UPDATE_DATE] (record change tickets in `scripts/contact_changelog.csv`).
