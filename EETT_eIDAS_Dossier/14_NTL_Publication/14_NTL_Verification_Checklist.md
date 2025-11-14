# NTL Verification Checklist

**Document ID:** 14_NTL_Verification_Checklist  
**Version:** 1.0  
**Date:** 2025-11-14  
**Prepared by:** Compliance Testing Team  
**Classification:** Internal/Confidential  

---

## Purpose
This document outlines a mock verification process for simulating inclusion in the National Trusted List (NTL) as per ETSI TS 119 612 and eIDAS Art. 22. It includes a step-by-step checklist and simulated script output to verify TSP details (e.g., service OIDs, status) in a test environment. This ensures readiness for actual EETT NTL publication without accessing live systems.

**Note:** This is a simulation for internal testing. Real verification requires official EETT tools or APIs.

---

## Verification Checklist
Use this checklist to guide the mock process. Mark each step as completed (✓) or note issues.

| Step | Description | Status | Notes/Evidence |
|------|-------------|--------|---------------|
| 1. Prepare TSP Data | Gather TSP identifiers (e.g., OID, service URI) from `14_NTL_Publication_Datasheet.md`. | ☐ | Reference: Datasheet Section 2. |
| 2. Simulate NTL Entry Creation | Create a mock XML entry conforming to ETSI TS 119 612 schema (e.g., using local tools). | ☐ | Use template from Folder 14 guides. |
| 3. Validate Schema Compliance | Run XML validation against ETSI schema. | ☐ | Tool: xmllint or similar. |
| 4. Check Service Status | Verify simulated status (e.g., "granted") and timestamps. | ☐ | Ensure dates align with Folder 18 timeline. |
| 5. Mock Publication | Simulate upload to a test repository (e.g., local file system). | ☐ | Log output below. |
| 6. Verify Accessibility | Confirm mock entry is queryable (e.g., via simulated API call). | ☐ | Cross-reference with Folder 06 test certificates. |
| 7. Error Handling | Test invalid scenarios (e.g., wrong OID) and log resolutions. | ☐ | Document fixes for real submission. |
| 8. Final Review | Review for completeness and alignment with EETT guidelines. | ☐ | Sign-off by Compliance Officer. |

**Completion Date:** [Insert Date]  
**Reviewer:** [Name]  

---

## Simulated Script Output
Below is a simulated output from a mock verification script (e.g., a Bash or Python script adapted from Folder 14 guides). This demonstrates successful validation and publication simulation.

```/dev/null/simulated_ntl_verification.sh#L1-25
# Simulated NTL Verification Script
# Run Date: 2025-11-14

# Step 1: Generate Mock XML
echo "Generating mock NTL entry XML..."
cat <<EOF > mock_ntl_entry.xml
<TrustServiceStatusList xmlns="http://uri.etsi.org/01903/v1.3.2#">
  <SchemeInformation>
    <TSLType>http://uri.etsi.org/TrstSvc/Svctype/CA/QC</TSLType>
    <TSPInformation>
      <TSPName>Open State Stack TSP Services Ltd.</TSPName>
      <ServiceInformation>
        <ServiceTypeIdentifier>http://uri.etsi.org/TrstSvc/Svctype/CA/QC</ServiceTypeIdentifier>
        <ServiceStatus>granted</ServiceStatus>
        <StatusStartingTime>2025-11-14T14:00:00Z</StatusStartingTime>
      </ServiceInformation>
    </TSPInformation>
  </SchemeInformation>
</TrustServiceStatusList>
EOF

# Step 2: Validate XML
echo "Validating against ETSI schema..."
# Simulated xmllint output
echo "XML is valid. No errors found."

# Step 3: Mock Publication
echo "Publishing to simulated repository..."
cp mock_ntl_entry.xml /simulated/repo/GR_NTL.xml
echo "Publication successful. Entry ID: GR-TSP-2025-001"
```

**Script Notes:**  
- This simulation assumes a local environment. In production, use EETT's official submission portal.  
- Errors simulated: If OID mismatch, output would show "Validation failed: Invalid ServiceTypeIdentifier."  

---

## Dependencies and References
- **Guides Used:** `14_NTL_Submission_Packaging_Guide_GR_EN.md`  
- **Cross-Links:** Folder 01_Registry (TSP identifiers), Folder 15_Compliance_Master (mapping to ETSI TS 119 612)  
- **Next Steps:** If issues found, update `14_Submission_Readiness.md` and re-run simulation.

This checklist and simulation confirm the process's correctness for NTL inclusion testing.

---
**End of Document**