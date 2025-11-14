## Revocation & Status Services – Quick Reference

**Last Review:** 2025-11-15  
**Reviewer:** Senior Compliance Officer

### Key Artifacts
- `11_Revocation_Status_SOP_GR.md` – Authoritative bilingual SOP (24×7 channels, SLAs, OCSP/CRL ops, emergency flows).
- `DOC-REVOKE-S01_Revocation_Hotline_Script.md` – Operator script + fraud handling steps.
- `11a_Web_Disclosure_Text_GR.md` – Public disclosure content for website (GR/EN).
- `11a_Revocation_Forms.pdf` – Standard form packages (in-person/email).
- `11_Implementation_Guide.md` – Deployment checklist for NOC/SOC/RA teams.

### Regulation Coverage Snapshot
| Requirement | Evidence |
|-------------|----------|
| eIDAS Art. 24(2)(d),(h) & 24(4)(d) | SOP §§2-7 (revocation acceptance, processing, OCSP/CRL) |
| eIDAS Art. 19(2) | Emergency escalation & incident reporting (SOP §7) |
| EETT Regulation Art. 11 | SOP §§2-6; web disclosure ensures transparency |
| ETSI EN 319 401 §6.4 | SOP §§2-3 (authentication, revocation workflow) |
| RFC 5280 / OCSP profiles | SOP §§5-6, Annex references |

### Outstanding Tasks
1. Align hotline numbers & OCSP/CRL URLs with Docs 01 & 08 once final DNS provisioning is complete (placeholders currently in use per instruction).
2. Validate PDF (`11_Revocation_SOP_GR_EN.pdf`) and `11a_Revocation_Forms.pdf` signatures when PDF tooling is available.
3. Store voice log retention evidence and web publication screenshots in Doc 12 upon go-live.

### Contacts
- **Process Owner:** QTS Manager (Doc 11)
- **Operational Leads:** NOC/SOC Manager, RA Manager
- **Escalation:** CISO / Incident Commander
