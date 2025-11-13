#!/bin/bash
# EETT eIDAS Dossier - Comprehensive Validation Script
# Version: 1.0
# Purpose: Pre-submission quality assurance validation

set -e
set -u

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Directories
DOSSIER_DIR="/Users/spirospilafas/Documents/OpenStateStack/eIDAS/EETT_eIDAS_Dossier"
LOG_FILE="${DOSSIER_DIR}/scripts/validation_report_$(date +%Y%m%d_%H%M%S).log"

# Counters
PASS_COUNT=0
FAIL_COUNT=0
WARN_COUNT=0

# Function to log messages
log() {
    echo -e "${1}" | tee -a "$LOG_FILE"
}

# Function to check test result
check_result() {
    local test_name="$1"
    local result="$2"

    if [ "$result" = "PASS" ]; then
        log "${GREEN}✓ PASS${NC} - ${test_name}"
        ((PASS_COUNT++))
    elif [ "$result" = "FAIL" ]; then
        log "${RED}✗ FAIL${NC} - ${test_name}"
        ((FAIL_COUNT++))
    else
        log "${YELLOW}⚠ WARN${NC} - ${test_name}"
        ((WARN_COUNT++))
    fi
}

# Function to count placeholders
count_placeholders() {
    local count=$(find "$DOSSIER_DIR" -name "*.md" -not -path "*/backups/*" -not -path "*/scripts/*" \
        -exec grep -oh '\[[A-Z_]*\]' {} \; | sort -u | wc -l | tr -d ' ')
    echo "$count"
}

# Function to check file exists
file_exists_check() {
    local file_path="$1"
    local test_name="$2"

    if [ -f "$file_path" ]; then
        check_result "$test_name" "PASS"
        return 0
    else
        check_result "$test_name - File not found: $file_path" "FAIL"
        return 1
    fi
}

# Function to check PDF is not empty
pdf_not_empty() {
    local pdf_path="$1"
    local test_name="$2"

    if [ -f "$pdf_path" ]; then
        local size=$(stat -f%z "$pdf_path" 2>/dev/null || stat -c%s "$pdf_path" 2>/dev/null)
        if [ "$size" -gt 1000 ]; then
            check_result "$test_name (${size} bytes)" "PASS"
            return 0
        else
            check_result "$test_name - PDF is empty or too small (${size} bytes)" "FAIL"
            return 1
        fi
    else
        check_result "$test_name - PDF not found: $pdf_path" "FAIL"
        return 1
    fi
}

# Main validation
main() {
    log "======================================"
    log "EETT eIDAS SUBMISSION VALIDATION"
    log "Started: $(date)"
    log "======================================"

    # ==========================================
    # A. DOCUMENT COMPLETENESS
    # ==========================================
    log "\n${BLUE}=== A. DOCUMENT COMPLETENESS ===${NC}\n"

    # Folder 01: Registry
    log "${BLUE}Folder 01: Registry Application${NC}"
    file_exists_check "$DOSSIER_DIR/01_Registry/01_Registry_Application_GreekTrustCo_SIGNED.pdf" \
        "01: Registry Application PDF exists"
    file_exists_check "$DOSSIER_DIR/01_Registry/01a_Registry_Fee_Proof_300EUR.pdf" \
        "01a: Fee Proof PDF exists"
    file_exists_check "$DOSSIER_DIR/01_Registry/01b_Change_Notification_Template_SIGNED.pdf" \
        "01b: Change Notice Template PDF exists"

    # Folder 02: Service Start
    log "\n${BLUE}Folder 02: Service Start Application${NC}"
    file_exists_check "$DOSSIER_DIR/02_Service_Start/02_EETT_Qualified_Service_Start_Application_SIGNED.pdf" \
        "02: Service Start Application PDF exists"

    # Folder 03: Conformity Assessment
    log "\n${BLUE}Folder 03: Conformity Assessment${NC}"
    file_exists_check "$DOSSIER_DIR/03_Conformity_Assessment/03_Conformity_Assessment_Report_TUV_2025.pdf" \
        "03: CAR PDF exists"
    file_exists_check "$DOSSIER_DIR/03_Conformity_Assessment/03a_Traceability_Matrix.pdf" \
        "03a: Traceability Matrix PDF exists"

    # Folder 04: TSP Policy
    log "\n${BLUE}Folder 04: TSP Policy${NC}"
    file_exists_check "$DOSSIER_DIR/04_TSP_Policy/04_TSP_Policy_GR_EN_SIGNED.pdf" \
        "04: TSP Policy PDF exists"

    # Folder 05: TSPS
    log "\n${BLUE}Folder 05: TSPS Services${NC}"
    file_exists_check "$DOSSIER_DIR/05_TSPS_Services/05_TSPS_Qualified_Services_GR_EN_SIGNED.pdf" \
        "05: TSPS PDF exists"

    # Folder 06: Test Certificates
    log "\n${BLUE}Folder 06: Test Certificates${NC}"
    file_exists_check "$DOSSIER_DIR/06_Test_Certificates/Root_CA_Certificate.pem" \
        "06: Root CA Certificate exists"
    file_exists_check "$DOSSIER_DIR/06_Test_Certificates/Sample_QES_Certificate.pem" \
        "06: Sample QES Certificate exists"
    file_exists_check "$DOSSIER_DIR/06_Test_Certificates/Sample_OCSP_Response.der" \
        "06: Sample OCSP Response exists"
    file_exists_check "$DOSSIER_DIR/06_Test_Certificates/Sample_CRL.crl" \
        "06: Sample CRL exists"

    # Folder 07: Risk & Incidents
    log "\n${BLUE}Folder 07: Risk & Incidents${NC}"
    file_exists_check "$DOSSIER_DIR/07_Risk_And_Incidents/07_Risk_Assessment_GR_EN.pdf" \
        "07: Risk Assessment PDF exists"
    file_exists_check "$DOSSIER_DIR/07_Risk_And_Incidents/07a_Incident_Response_Plan_GR_EN.pdf" \
        "07a: Incident Response Plan PDF exists"

    # Folders 08-14, 17-19 (similar checks)
    log "\n${BLUE}Folders 08-14, 17-19: Additional Documents${NC}"
    file_exists_check "$DOSSIER_DIR/08_User_Notifications/08_User_Notification_Templates_GR_EN.pdf" \
        "08: User Notifications PDF exists"
    file_exists_check "$DOSSIER_DIR/09_Service_Termination/09_Service_Termination_Plan_GR_EN.pdf" \
        "09: Termination Plan PDF exists"
    file_exists_check "$DOSSIER_DIR/10_End_User_Agreement/10_End_User_Agreement_GR_EN_SIGNED.pdf" \
        "10: End User Agreement PDF exists"
    file_exists_check "$DOSSIER_DIR/11_Revocation_Procedures/11_Revocation_SOP_GR_EN.pdf" \
        "11: Revocation SOP PDF exists"
    file_exists_check "$DOSSIER_DIR/12_Recordkeeping/12_Recordkeeping_Policy_GR_EN.pdf" \
        "12: Recordkeeping Policy PDF exists"
    file_exists_check "$DOSSIER_DIR/13_Communication_Templates/13_EETT_Communication_Templates_GR.pdf" \
        "13: Communication Templates PDF exists"
    file_exists_check "$DOSSIER_DIR/14_NTL_Publication/14_NTL_Publication_Datasheet.pdf" \
        "14: NTL Datasheet PDF exists"
    file_exists_check "$DOSSIER_DIR/17_Executive_Brief/17_Executive_Brief_GR_EN_SIGNED.pdf" \
        "17: Executive Brief PDF exists"
    file_exists_check "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.pdf" \
        "19: Compliance Register PDF exists"

    # ==========================================
    # B. PLACEHOLDER COMPLETION
    # ==========================================
    log "\n${BLUE}=== B. PLACEHOLDER COMPLETION ===${NC}\n"

    local placeholder_count=$(count_placeholders)
    if [ "$placeholder_count" -le 5 ]; then
        check_result "Placeholder count: ${placeholder_count} (acceptable)" "PASS"
    elif [ "$placeholder_count" -le 20 ]; then
        check_result "Placeholder count: ${placeholder_count} (review needed)" "WARN"
    else
        check_result "Placeholder count: ${placeholder_count} (too many!)" "FAIL"
    fi

    # Check specific critical placeholders
    log "\n${BLUE}Checking critical placeholders:${NC}"

    if grep -rq "\[LEGAL_NAME_GR\]" "$DOSSIER_DIR" --include="*.md" --exclude-dir=scripts --exclude-dir=backups; then
        check_result "[LEGAL_NAME_GR] still present" "FAIL"
    else
        check_result "[LEGAL_NAME_GR] replaced" "PASS"
    fi

    if grep -rq "\[SUBMISSION_DATE\]" "$DOSSIER_DIR" --include="*.md" --exclude-dir=scripts --exclude-dir=backups; then
        check_result "[SUBMISSION_DATE] still present" "FAIL"
    else
        check_result "[SUBMISSION_DATE] replaced" "PASS"
    fi

    if grep -rq "\[AFM\]" "$DOSSIER_DIR" --include="*.md" --exclude-dir=scripts --exclude-dir=backups; then
        check_result "[AFM] still present" "FAIL"
    else
        check_result "[AFM] replaced" "PASS"
    fi

    # ==========================================
    # C. TECHNICAL VALIDATION
    # ==========================================
    log "\n${BLUE}=== C. TECHNICAL VALIDATION ===${NC}\n"

    # Check test certificates validity
    if [ -f "$DOSSIER_DIR/06_Test_Certificates/Sample_QES_Certificate.pem" ]; then
        if command -v openssl &> /dev/null; then
            log "${BLUE}Validating Sample QES Certificate:${NC}"
            if openssl x509 -in "$DOSSIER_DIR/06_Test_Certificates/Sample_QES_Certificate.pem" -noout -text &> /dev/null; then
                check_result "Sample QES Certificate is valid X.509" "PASS"
            else
                check_result "Sample QES Certificate is NOT valid X.509" "FAIL"
            fi
        else
            check_result "OpenSSL not available - skipping certificate validation" "WARN"
        fi
    fi

    # Check CRL validity
    if [ -f "$DOSSIER_DIR/06_Test_Certificates/Sample_CRL.crl" ]; then
        if command -v openssl &> /dev/null; then
            log "${BLUE}Validating Sample CRL:${NC}"
            if openssl crl -in "$DOSSIER_DIR/06_Test_Certificates/Sample_CRL.crl" -noout -text &> /dev/null; then
                check_result "Sample CRL is valid" "PASS"

                # Check nextUpdate < 24 hours (per SOP §11)
                local next_update=$(openssl crl -in "$DOSSIER_DIR/06_Test_Certificates/Sample_CRL.crl" -noout -nextupdate | cut -d= -f2)
                log "  CRL nextUpdate: ${next_update}"
                check_result "CRL nextUpdate extracted (verify <24h manually)" "WARN"
            else
                check_result "Sample CRL is NOT valid" "FAIL"
            fi
        fi
    fi

    # ==========================================
    # D. CROSS-REFERENCE INTEGRITY
    # ==========================================
    log "\n${BLUE}=== D. CROSS-REFERENCE INTEGRITY ===${NC}\n"

    # Check contact harmonization
    log "${BLUE}Checking contact harmonization:${NC}"

    # Extract revocation phone from different folders
    if [ -f "$DOSSIER_DIR/MASTER_CONTACT_LIST.md" ]; then
        check_result "Master Contact List exists" "PASS"

        # This is a simplified check - in practice, would parse actual phone numbers
        local contacts_in_01=$(grep -c "REVOCATION_PHONE" "$DOSSIER_DIR/01_Registry"/*.md 2>/dev/null || echo "0")
        local contacts_in_11=$(grep -c "REVOCATION_PHONE" "$DOSSIER_DIR/11_Revocation_Procedures"/*.md 2>/dev/null || echo "0")

        if [ "$contacts_in_01" -gt 0 ] && [ "$contacts_in_11" -gt 0 ]; then
            check_result "Revocation contacts present in folders 01 and 11" "PASS"
        else
            check_result "Revocation contacts missing or inconsistent" "WARN"
        fi
    else
        check_result "Master Contact List not found" "FAIL"
    fi

    # ==========================================
    # E. REGULATORY COMPLIANCE
    # ==========================================
    log "\n${BLUE}=== E. REGULATORY COMPLIANCE ===${NC}\n"

    # Check eIDAS Article 24 requirements
    log "${BLUE}eIDAS Article 24 Requirements:${NC}"

    if [ -f "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.md" ]; then
        # Check for key compliance terms
        if grep -q "Article 24(2)(a)" "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.md"; then
            check_result "Article 24(2)(a) - Financial resources referenced" "PASS"
        else
            check_result "Article 24(2)(a) - Financial resources NOT referenced" "FAIL"
        fi

        if grep -q "Article 24(2)(b)" "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.md"; then
            check_result "Article 24(2)(b) - Qualified personnel referenced" "PASS"
        else
            check_result "Article 24(2)(b) - Qualified personnel NOT referenced" "FAIL"
        fi

        if grep -q "Article 24(2)(e)" "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.md"; then
            check_result "Article 24(2)(e) - CAB-audited policies referenced" "PASS"
        else
            check_result "Article 24(2)(e) - CAB-audited policies NOT referenced" "FAIL"
        fi
    else
        check_result "Compliance Register not found" "FAIL"
    fi

    # Check EETT Articles 3-12
    log "\n${BLUE}EETT Regulation Requirements:${NC}"

    if [ -f "$DOSSIER_DIR/01_Registry/01_Registry_Application_GreekTrustCo_SIGNED.pdf" ]; then
        check_result "Article 3.2 - Registry Application present" "PASS"
    else
        check_result "Article 3.2 - Registry Application missing" "FAIL"
    fi

    if [ -f "$DOSSIER_DIR/03_Conformity_Assessment/03_Conformity_Assessment_Report_TUV_2025.pdf" ]; then
        check_result "Article 10 - CAR present" "PASS"
    else
        check_result "Article 10 - CAR missing" "FAIL"
    fi

    if [ -f "$DOSSIER_DIR/11_Revocation_Procedures/11_Revocation_SOP_GR_EN.pdf" ]; then
        check_result "Article 11 - Revocation procedures present" "PASS"
    else
        check_result "Article 11 - Revocation procedures missing" "FAIL"
    fi

    # ==========================================
    # F. PDF QUALITY CHECKS
    # ==========================================
    log "\n${BLUE}=== F. PDF QUALITY CHECKS ===${NC}\n"

    # Check PDFs are not empty
    log "${BLUE}Checking PDF file sizes:${NC}"

    pdf_not_empty "$DOSSIER_DIR/01_Registry/01_Registry_Application_GreekTrustCo_SIGNED.pdf" \
        "Registry Application PDF"
    pdf_not_empty "$DOSSIER_DIR/04_TSP_Policy/04_TSP_Policy_GR_EN_SIGNED.pdf" \
        "TSP Policy PDF"
    pdf_not_empty "$DOSSIER_DIR/17_Executive_Brief/17_Executive_Brief_GR_EN_SIGNED.pdf" \
        "Executive Brief PDF"

    # ==========================================
    # G. ENRICHMENT CONTENT CHECKS
    # ==========================================
    log "\n${BLUE}=== G. ENRICHMENT CONTENT CHECKS ===${NC}\n"

    # Check QSCD Appendix exists
    if [ -f "$DOSSIER_DIR/04_TSP_Policy/APPENDIX_A_QSCD_Remote_Signing.md" ]; then
        check_result "QSCD Appendix exists" "PASS"
    else
        check_result "QSCD Appendix missing" "WARN"
    fi

    # Check Termination Exercise Annex exists
    if [ -f "$DOSSIER_DIR/09_Service_Termination/ANNEX_E_Termination_Exercise_Evidence.md" ]; then
        check_result "Termination Exercise Annex exists" "PASS"
    else
        check_result "Termination Exercise Annex missing" "WARN"
    fi

    # ==========================================
    # SUMMARY
    # ==========================================
    log "\n======================================"
    log "VALIDATION SUMMARY"
    log "======================================"
    log "${GREEN}PASSED: ${PASS_COUNT}${NC}"
    log "${YELLOW}WARNINGS: ${WARN_COUNT}${NC}"
    log "${RED}FAILED: ${FAIL_COUNT}${NC}"
    log "======================================"

    # Overall assessment
    if [ "$FAIL_COUNT" -eq 0 ] && [ "$WARN_COUNT" -le 5 ]; then
        log "\n${GREEN}✓ SUBMISSION READY${NC}"
        log "The dossier appears ready for submission to EETT."
        log "Review warnings and proceed with ASiC-E packaging."
    elif [ "$FAIL_COUNT" -eq 0 ] && [ "$WARN_COUNT" -gt 5 ]; then
        log "\n${YELLOW}⚠ REVIEW REQUIRED${NC}"
        log "No critical failures, but multiple warnings detected."
        log "Review warnings before submission."
    else
        log "\n${RED}✗ NOT READY${NC}"
        log "${FAIL_COUNT} critical failure(s) detected."
        log "Address all failures before submission."
    fi

    log "\n======================================"
    log "Log file: ${LOG_FILE}"
    log "Completed: $(date)"
    log "======================================"

    # Exit code
    if [ "$FAIL_COUNT" -gt 0 ]; then
        exit 1
    else
        exit 0
    fi
}

# Run main function
main "$@"
