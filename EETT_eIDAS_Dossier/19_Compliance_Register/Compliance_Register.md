## Compliance Register – Quick Reference

**Master Register:** `19_Master_Compliance_Register.md` / `.pdf` – full traceability matrix mapping every eIDAS article, EETT regulation clause, and ETSI standard requirement to dossier evidence (Doc 01–20).

### Structure Overview
- **Sheet 1:** eIDAS Articles 13–45 → policies, contracts, incident plans, TSPS, etc.
- **Sheet 2:** EETT Regulation Articles 3–12 + Annexes → registry, incident reporting, termination, recordkeeping.
- **Sheet 3:** ETSI EN/TS references (319 401/411/421/612/312) → technical implementation evidence.
- **Sheet 4:** Document cross-reference matrix (consistency checks between Docs 02↔03↔04↔05 etc.).
- **Sheet 5:** Red-team checklist (regulatory, technical, operational, documentation, submission readiness).

### Maintenance Workflow
1. **Update the MD/PDF register** whenever evidence changes (new doc versions, new links).
2. **Export XLSX** (pending) for CAB/EETT review; once signed, store in Doc 15 as well.
3. **Log control tests** (per CAB request) – add “Last Control Test” column capturing date, tester, result for each requirement cluster.
4. **Synchronize with Exec Brief & Doc 16** so milestone/compliance status remains consistent across dossier assets.

### Outstanding Actions
- Add the “Last Control Test” column in the master register (all formats) and populate with latest QA dates.
- Produce the signed XLSX version (`15_Master_Compliance_Register.xlsx`) and note its location in both Doc 15 & Doc 19 readiness notes.
