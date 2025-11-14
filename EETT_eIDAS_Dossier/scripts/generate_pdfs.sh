#!/bin/bash
# EETT eIDAS Dossier - PDF Generation Workflow
# Version: 1.0
# Purpose: Convert all .md templates to PDF using Pandoc with Greek language support

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
OUTPUT_DIR="${DOSSIER_DIR}/generated_pdfs"
LOG_FILE="${DOSSIER_DIR}/scripts/pdf_generation_$(date +%Y%m%d_%H%M%S).log"
TEMPLATE_DIR="${DOSSIER_DIR}/scripts/pandoc_templates"

# ---------------------------------------------------------------
# Prefer rendered Markdown files if they exist
# ---------------------------------------------------------------
if [ -d "${DOSSIER_DIR}/rendered" ]; then
    echo -e "${YELLOW}Rendered directory detected. PDF generation will use rendered content.${NC}"
    SOURCE_DIR="${DOSSIER_DIR}/rendered"
else
    SOURCE_DIR="${DOSSIER_DIR}"
fi

# PDF generation settings
PANDOC_ENGINE="xelatex"
PANDOC_FONT="DejaVu Sans"  # Supports Greek characters
PANDOC_GEOMETRY="margin=2.5cm"
PANDOC_LINESTRETCH="1.15"

# Function to log messages
log() {
    echo -e "${1}" | tee -a "$LOG_FILE"
}

# Function to check dependencies
check_dependencies() {
    log "${BLUE}Checking dependencies...${NC}"

    # Check Pandoc
    if ! command -v pandoc &> /dev/null; then
        log "${RED}ERROR: Pandoc not found${NC}"
        log "${YELLOW}Install with: brew install pandoc${NC}"
        exit 1
    fi

    # Check XeLaTeX
    if ! command -v xelatex &> /dev/null; then
        log "${RED}ERROR: XeLaTeX not found${NC}"
        log "${YELLOW}Install with: brew install --cask mactex${NC}"
        exit 1
    fi

    # Check fonts
    if ! fc-list | grep -q "DejaVu Sans"; then
        log "${YELLOW}WARNING: DejaVu Sans font not found${NC}"
        log "${YELLOW}Download from: https://dejavu-fonts.github.io/${NC}"
    fi

    log "${GREEN}✓ All dependencies found${NC}"
}

# Function to create output directory
prepare_output_dir() {
    log "${BLUE}Preparing output directory...${NC}"
    mkdir -p "$OUTPUT_DIR"

    # Create folder structure matching source
    for i in {01..20}; do
        folder=$(find "$SOURCE_DIR" -maxdepth 1 -type d -name "${i}_*" | head -1)
        if [ -n "$folder" ]; then
            folder_name=$(basename "$folder")
            mkdir -p "$OUTPUT_DIR/$folder_name"
        fi
    done

    log "${GREEN}✓ Output directory ready: ${OUTPUT_DIR}${NC}"
}

# Function to generate PDF from markdown
generate_pdf() {
    local md_file="$1"
    local output_pdf="$2"
    local title="$3"
    local author="${4:-[LEGAL_NAME_EN]}"

    # ------------------------------------------------------------------
    # If running against a rendered dossier, transparently switch paths
    # ------------------------------------------------------------------
    if [ ! -f "$md_file" ] && [ "$SOURCE_DIR" != "$DOSSIER_DIR" ]; then
        local alt_path="${md_file/$DOSSIER_DIR/$SOURCE_DIR}"
        if [ -f "$alt_path" ]; then
            md_file="$alt_path"
        fi
    fi

    log "${BLUE}Generating: $(basename "$output_pdf")${NC}"

    # Determine if document is bilingual (GR/EN)
    local lang_setting="en"
    if grep -q "Ελληνικά" "$md_file" || grep -q "Greek" "$md_file"; then
        lang_setting="el"
    fi

    # Pandoc command with metadata
    pandoc "$md_file" \
        -o "$output_pdf" \
        --pdf-engine="$PANDOC_ENGINE" \
        --variable mainfont="$PANDOC_FONT" \
        --variable sansfont="$PANDOC_FONT" \
        --variable monofont="DejaVu Sans Mono" \
        --variable fontsize=11pt \
        --variable geometry:"$PANDOC_GEOMETRY" \
        --variable linestretch="$PANDOC_LINESTRETCH" \
        --variable lang="$lang_setting" \
        --variable documentclass=article \
        --variable papersize=a4 \
        --variable title="$title" \
        --variable author="$author" \
        --variable date="$(date +%Y-%m-%d)" \
        --table-of-contents \
        --toc-depth=3 \
        --number-sections \
        --highlight-style=tango \
        --metadata-file="${TEMPLATE_DIR}/metadata.yaml" \
        --template="${TEMPLATE_DIR}/eidas_template.tex" \
        2>&1 | tee -a "$LOG_FILE"

    if [ -f "$output_pdf" ]; then
        local size=$(du -h "$output_pdf" | cut -f1)
        log "${GREEN}✓ Generated: $(basename "$output_pdf") (${size})${NC}"
        return 0
    else
        log "${RED}✗ Failed: $(basename "$output_pdf")${NC}"
        return 1
    fi
}

# Function to process folder
process_folder() {
    local folder_num="$1"
    local folder_name="$2"

    log "\n${GREEN}=== Processing Folder ${folder_num}: ${folder_name} ===${NC}"

    case $folder_num in
        "01")
            # Registry Application
            generate_pdf \
                "$DOSSIER_DIR/01_Registry/01_Registry_Application_GreekTrustCo_SIGNED.md" \
                "$OUTPUT_DIR/01_Registry/01_Registry_Application_[LEGAL_NAME_EN]_SIGNED.pdf" \
                "Registry Application - Article 3.2 EETT"

            generate_pdf \
                "$DOSSIER_DIR/01_Registry/01a_Fee_Proof.md" \
                "$OUTPUT_DIR/01_Registry/01a_Registry_Fee_Proof_300EUR.pdf" \
                "Registration Fee Proof - Article 3.4 EETT"

            generate_pdf \
                "$DOSSIER_DIR/01_Registry/01b_Change_Notice_Template.md" \
                "$OUTPUT_DIR/01_Registry/01b_Change_Notification_Template.pdf" \
                "Change Notification Template - Article 3.5 EETT"
            ;;

        "02")
            # Service Start Application
            if [ -f "$DOSSIER_DIR/02_Service_Start/Service_Start.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/02_Service_Start/Service_Start.md" \
                    "$OUTPUT_DIR/02_Service_Start/02_EETT_Qualified_Service_Start_Application_SIGNED.pdf" \
                    "Qualified Service Start Application - Article 6 & Annex 4 EETT"
            fi
            ;;

        "03")
            # Conformity Assessment
            generate_pdf \
                "$DOSSIER_DIR/03_Conformity_Assessment/03_CAR_Template.md" \
                "$OUTPUT_DIR/03_Conformity_Assessment/03_Conformity_Assessment_Report_[CAB_NAME]_2025.pdf" \
                "Conformity Assessment Report - Article 10 EETT"

            generate_pdf \
                "$DOSSIER_DIR/03_Conformity_Assessment/03_Traceability_Matrix_STRUCTURE.md" \
                "$OUTPUT_DIR/03_Conformity_Assessment/03a_Traceability_Matrix.pdf" \
                "Traceability Matrix - eIDAS & EETT Requirements"
            ;;

        "04")
            # TSP Policy
            if [ -f "$DOSSIER_DIR/04_TSP_Policy/04_TSP_Policy_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/04_TSP_Policy/04_TSP_Policy_GR.md" \
                    "$OUTPUT_DIR/04_TSP_Policy/04_TSP_Policy_GR.pdf" \
                    "Trust Service Policy (Greek)" \
                    "[LEGAL_NAME_GR]"
            fi

            if [ -f "$DOSSIER_DIR/04_TSP_Policy/04_TSP_Policy_EN.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/04_TSP_Policy/04_TSP_Policy_EN.md" \
                    "$OUTPUT_DIR/04_TSP_Policy/04_TSP_Policy_EN.pdf" \
                    "Trust Service Policy (English)"
            fi

            # QSCD Appendix
            if [ -f "$DOSSIER_DIR/04_TSP_Policy/APPENDIX_A_QSCD_Remote_Signing.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/04_TSP_Policy/APPENDIX_A_QSCD_Remote_Signing.md" \
                    "$OUTPUT_DIR/04_TSP_Policy/04a_APPENDIX_A_QSCD_Remote_Signing.pdf" \
                    "Appendix A: QSCD Remote Signing Architecture"
            fi
            ;;

        "05")
            # TSPS Services
            if [ -f "$DOSSIER_DIR/05_TSPS_Services/05_TSPS_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/05_TSPS_Services/05_TSPS_GR.md" \
                    "$OUTPUT_DIR/05_TSPS_Services/05_TSPS_GR.pdf" \
                    "Trust Service Practice Statement (Greek)" \
                    "[LEGAL_NAME_GR]"
            fi

            if [ -f "$DOSSIER_DIR/05_TSPS_Services/05_TSPS_EN.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/05_TSPS_Services/05_TSPS_EN.md" \
                    "$OUTPUT_DIR/05_TSPS_Services/05_TSPS_EN.pdf" \
                    "Trust Service Practice Statement (English)"
            fi
            ;;

        "06")
            # Test Certificates Documentation
            if [ -f "$DOSSIER_DIR/06_Test_Certificates/Documentation/20_Certificate_Profiles_Guide.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/06_Test_Certificates/Documentation/20_Certificate_Profiles_Guide.md" \
                    "$OUTPUT_DIR/06_Test_Certificates/Certificate_Profiles_Guide.pdf" \
                    "Certificate Profiles Guide - ETSI EN 319 412"
            fi
            ;;

        "07")
            # Risk & Incidents
            if [ -f "$DOSSIER_DIR/07_Risk_And_Incidents/07_Risk_Assessment_Report_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/07_Risk_And_Incidents/07_Risk_Assessment_Report_GR.md" \
                    "$OUTPUT_DIR/07_Risk_And_Incidents/07_Risk_Assessment_GR_EN.pdf" \
                    "Risk Assessment Report - ISO 31000"
            fi

            if [ -f "$DOSSIER_DIR/07_Risk_And_Incidents/07a_Incident_Response_Plan_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/07_Risk_And_Incidents/07a_Incident_Response_Plan_GR.md" \
                    "$OUTPUT_DIR/07_Risk_And_Incidents/07a_Incident_Response_Plan_GR_EN.pdf" \
                    "Incident Response Plan - EETT Annex 3"
            fi

            if [ -f "$DOSSIER_DIR/07_Risk_And_Incidents/07b_Incident_Forms_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/07_Risk_And_Incidents/07b_Incident_Forms_GR.md" \
                    "$OUTPUT_DIR/07_Risk_And_Incidents/07b_Incident_Report_Forms.pdf" \
                    "Incident Report Forms - Article 5 EETT"
            fi
            ;;

        "08")
            # User Notifications
            if [ -f "$DOSSIER_DIR/08_User_Notifications/08_User_Notification_Plan_GR_EN.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/08_User_Notifications/08_User_Notification_Plan_GR_EN.md" \
                    "$OUTPUT_DIR/08_User_Notifications/08_User_Notification_Templates_GR_EN.pdf" \
                    "User Notification Plan - eIDAS Article 19(2)"
            fi
            ;;

        "09")
            # Service Termination
            if [ -f "$DOSSIER_DIR/09_Service_Termination/09_Service_Termination_Plan_GR_EN.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/09_Service_Termination/09_Service_Termination_Plan_GR_EN.md" \
                    "$OUTPUT_DIR/09_Service_Termination/09_Service_Termination_Plan_GR_EN.pdf" \
                    "Service Termination Plan - EETT Articles 7-8, Annex 5"
            fi
            ;;

        "10")
            # End User Agreement
            if [ -f "$DOSSIER_DIR/10_End_User_Agreement/10_Standard_End_User_Agreement_GR_EN.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/10_End_User_Agreement/10_Standard_End_User_Agreement_GR_EN.md" \
                    "$OUTPUT_DIR/10_End_User_Agreement/10_End_User_Agreement_GR_EN_SIGNED.pdf" \
                    "End User Agreement - eIDAS Article 13"
            fi
            ;;

        "11")
            # Revocation Procedures
            if [ -f "$DOSSIER_DIR/11_Revocation_Procedures/11_Revocation_Status_SOP_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/11_Revocation_Procedures/11_Revocation_Status_SOP_GR.md" \
                    "$OUTPUT_DIR/11_Revocation_Procedures/11_Revocation_SOP_GR_EN.pdf" \
                    "Revocation Status SOP - Article 11 EETT"
            fi

            if [ -f "$DOSSIER_DIR/11_Revocation_Procedures/11a_Web_Disclosure_Text_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/11_Revocation_Procedures/11a_Web_Disclosure_Text_GR.md" \
                    "$OUTPUT_DIR/11_Revocation_Procedures/11a_Revocation_Forms.pdf" \
                    "Revocation Forms & Web Disclosure"
            fi
            ;;

        "12")
            # Recordkeeping
            if [ -f "$DOSSIER_DIR/12_Recordkeeping/12_Records_and_Access_Policy_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/12_Recordkeeping/12_Records_and_Access_Policy_GR.md" \
                    "$OUTPUT_DIR/12_Recordkeeping/12_Recordkeeping_Policy_GR_EN.pdf" \
                    "Recordkeeping Policy - Article 12 EETT"
            fi
            ;;

        "13")
            # Communication Templates
            if [ -f "$DOSSIER_DIR/13_Communication_Templates/13_EETT_Notification_Templates_GR.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/13_Communication_Templates/13_EETT_Notification_Templates_GR.md" \
                    "$OUTPUT_DIR/13_Communication_Templates/13_EETT_Communication_Templates_GR.pdf" \
                    "EETT Communication Templates - Articles 3.5, 5, 8"
            fi
            ;;

        "14")
            # NTL Publication
            if [ -f "$DOSSIER_DIR/14_NTL_Publication/14_NTL_Submission_Packaging_Guide_GR_EN.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/14_NTL_Publication/14_NTL_Submission_Packaging_Guide_GR_EN.md" \
                    "$OUTPUT_DIR/14_NTL_Publication/14_NTL_Publication_Datasheet.pdf" \
                    "NTL Publication Datasheet - Article 3.3 EETT"
            fi
            ;;

        "17")
            # Executive Brief
            if [ -f "$DOSSIER_DIR/17_Executive_Brief/00_EXECUTIVE_BRIEF.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/17_Executive_Brief/00_EXECUTIVE_BRIEF.md" \
                    "$OUTPUT_DIR/17_Executive_Brief/17_Executive_Brief_GR_EN_SIGNED.pdf" \
                    "Executive Brief - EETT Submission Overview"
            fi
            ;;

        "19")
            # Compliance Register
            if [ -f "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.md" ]; then
                generate_pdf \
                    "$DOSSIER_DIR/19_Compliance_Register/19_Master_Compliance_Register.md" \
                    "$OUTPUT_DIR/19_Compliance_Register/19_Master_Compliance_Register.pdf" \
                    "Master Compliance Register - eIDAS & EETT Mapping"
            fi
            ;;
    esac
}

# Main execution
main() {
    log "======================================"
    log "EETT eIDAS PDF Generation"
    log "Started: $(date)"
    log "======================================"

    # Check dependencies
    check_dependencies

    # Prepare output directory
    prepare_output_dir

    # Process all folders
    local success_count=0
    local fail_count=0

    for i in {01..20}; do
        folder=$(find "$SOURCE_DIR" -maxdepth 1 -type d -name "${i}_*" | head -1)
        if [ -n "$folder" ]; then
            folder_name=$(basename "$folder")
            if process_folder "$i" "$folder_name"; then
                ((success_count++))
            else
                ((fail_count++))
            fi
        fi
    done

    log "\n======================================"
    log "${GREEN}PDF Generation Complete!${NC}"
    log "Successful: ${success_count}"
    log "Failed: ${fail_count}"
    log "Output directory: ${OUTPUT_DIR}"
    log "======================================"

    log "\n${YELLOW}Next Steps:${NC}"
    log "1. Review generated PDFs in: ${OUTPUT_DIR}"
    log "2. Apply qualified signatures using external QTSP"
    log "3. Run QA validation: scripts/validate_pdfs.sh"
    log "4. Package with ASiC-E: scripts/create_asic_package.sh"

    log "\nLog file: ${LOG_FILE}"
    log "Completed: $(date)"
}

# Run main function
main "$@"
