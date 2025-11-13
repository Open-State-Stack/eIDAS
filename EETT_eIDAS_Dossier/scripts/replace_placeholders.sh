#!/bin/bash
# EETT eIDAS Dossier - Placeholder Replacement Script
# Version: 1.0
# Purpose: Systematic replacement of all [PLACEHOLDER] fields across the dossier

set -e  # Exit on error
set -u  # Exit on undefined variable

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Base directory
DOSSIER_DIR="/Users/spirospilafas/Documents/OpenStateStack/eIDAS/EETT_eIDAS_Dossier"
BACKUP_DIR="${DOSSIER_DIR}/backups/$(date +%Y%m%d_%H%M%S)"

# Log file
LOG_FILE="${DOSSIER_DIR}/scripts/placeholder_replacement_$(date +%Y%m%d_%H%M%S).log"

# Function to log messages
log() {
    echo -e "${1}" | tee -a "$LOG_FILE"
}

# Function to create backup
create_backup() {
    log "${BLUE}Creating backup of current state...${NC}"
    mkdir -p "$BACKUP_DIR"

    # Backup all .md files
    find "$DOSSIER_DIR" -name "*.md" -not -path "*/backups/*" -not -path "*/scripts/*" \
        -exec bash -c 'cp --parents "$1" "'$BACKUP_DIR'"' _ {} \;

    log "${GREEN}✓ Backup created at: ${BACKUP_DIR}${NC}"
}

# Function to validate placeholder file exists
validate_config() {
    if [ ! -f "$PLACEHOLDER_CONFIG" ]; then
        log "${RED}ERROR: Placeholder configuration file not found: ${PLACEHOLDER_CONFIG}${NC}"
        log "${YELLOW}Please create the configuration file first using setup_placeholder_config.sh${NC}"
        exit 1
    fi
}

# Function to count remaining placeholders
count_placeholders() {
    local count=$(find "$DOSSIER_DIR" -name "*.md" -not -path "*/backups/*" -not -path "*/scripts/*" \
        -exec grep -o '\[.*\]' {} \; | grep -E '^\[A-Z_]+\]$' | wc -l)
    echo "$count"
}

# Function to replace placeholders
replace_placeholder() {
    local placeholder="$1"
    local value="$2"
    local dry_run="${3:-false}"

    log "${BLUE}Replacing: ${placeholder} → ${value}${NC}"

    if [ "$dry_run" = "false" ]; then
        # Perform actual replacement
        find "$DOSSIER_DIR" -name "*.md" -not -path "*/backups/*" -not -path "*/scripts/*" \
            -exec sed -i.bak "s/${placeholder}/${value}/g" {} \;

        # Remove .bak files
        find "$DOSSIER_DIR" -name "*.md.bak" -delete
    else
        # Dry run - just show what would be replaced
        local file_count=$(find "$DOSSIER_DIR" -name "*.md" -not -path "*/backups/*" -not -path "*/scripts/*" \
            -exec grep -l "${placeholder}" {} \; | wc -l)
        log "${YELLOW}  → Would affect ${file_count} files (dry run)${NC}"
    fi
}

# Main execution
main() {
    log "======================================"
    log "EETT eIDAS Placeholder Replacement"
    log "Started: $(date)"
    log "======================================"

    # Check if running in dry-run mode
    DRY_RUN=false
    if [ "${1:-}" = "--dry-run" ]; then
        DRY_RUN=true
        log "${YELLOW}Running in DRY-RUN mode (no changes will be made)${NC}"
    fi

    # Load placeholder configuration
    PLACEHOLDER_CONFIG="${DOSSIER_DIR}/scripts/placeholder_config.env"
    validate_config

    log "${BLUE}Loading placeholder configuration...${NC}"
    source "$PLACEHOLDER_CONFIG"

    # Count initial placeholders
    initial_count=$(count_placeholders)
    log "${YELLOW}Initial placeholder count: ${initial_count}${NC}"

    # Create backup (only if not dry-run)
    if [ "$DRY_RUN" = "false" ]; then
        create_backup
    fi

    log "\n${BLUE}Starting placeholder replacement...${NC}\n"

    # Replace placeholders (in order of priority)

    # 1. Legal/Corporate placeholders
    log "${GREEN}=== Legal/Corporate Placeholders ===${NC}"
    replace_placeholder "\[LEGAL_NAME_GR\]" "${LEGAL_NAME_GR}" "$DRY_RUN"
    replace_placeholder "\[LEGAL_NAME_EN\]" "${LEGAL_NAME_EN}" "$DRY_RUN"
    replace_placeholder "\[AFM\]" "${AFM}" "$DRY_RUN"
    replace_placeholder "\[GEMI\]" "${GEMI}" "$DRY_RUN"
    replace_placeholder "\[DOY\]" "${DOY}" "$DRY_RUN"

    # 2. Address placeholders
    log "\n${GREEN}=== Address Placeholders ===${NC}"
    replace_placeholder "\[ADDRESS_GR\]" "${ADDRESS_GR}" "$DRY_RUN"
    replace_placeholder "\[ADDRESS_EN\]" "${ADDRESS_EN}" "$DRY_RUN"
    replace_placeholder "\[POSTAL_CODE\]" "${POSTAL_CODE}" "$DRY_RUN"
    replace_placeholder "\[CITY_GR\]" "${CITY_GR}" "$DRY_RUN"
    replace_placeholder "\[CITY_EN\]" "${CITY_EN}" "$DRY_RUN"

    # 3. Contact placeholders
    log "\n${GREEN}=== Contact Placeholders ===${NC}"
    replace_placeholder "\[CEO_NAME\]" "${CEO_NAME}" "$DRY_RUN"
    replace_placeholder "\[CEO_EMAIL\]" "${CEO_EMAIL}" "$DRY_RUN"
    replace_placeholder "\[CEO_PHONE\]" "${CEO_PHONE}" "$DRY_RUN"
    replace_placeholder "\[QTS_MANAGER_NAME\]" "${QTS_MANAGER_NAME}" "$DRY_RUN"
    replace_placeholder "\[QTS_MANAGER_EMAIL\]" "${QTS_MANAGER_EMAIL}" "$DRY_RUN"
    replace_placeholder "\[QTS_MANAGER_PHONE\]" "${QTS_MANAGER_PHONE}" "$DRY_RUN"
    replace_placeholder "\[SYSTEM_ADMIN_NAME\]" "${SYSTEM_ADMIN_NAME}" "$DRY_RUN"
    replace_placeholder "\[SYSTEM_ADMIN_EMAIL\]" "${SYSTEM_ADMIN_EMAIL}" "$DRY_RUN"
    replace_placeholder "\[SYSTEM_ADMIN_ID\]" "${SYSTEM_ADMIN_ID}" "$DRY_RUN"
    replace_placeholder "\[DPO_NAME\]" "${DPO_NAME}" "$DRY_RUN"
    replace_placeholder "\[DPO_EMAIL\]" "${DPO_EMAIL}" "$DRY_RUN"
    replace_placeholder "\[DPO_PHONE\]" "${DPO_PHONE}" "$DRY_RUN"
    replace_placeholder "\[CISO_NAME\]" "${CISO_NAME}" "$DRY_RUN"
    replace_placeholder "\[CISO_EMAIL\]" "${CISO_EMAIL}" "$DRY_RUN"
    replace_placeholder "\[SOC_PHONE_24x7\]" "${SOC_PHONE_24x7}" "$DRY_RUN"
    replace_placeholder "\[SOC_EMAIL\]" "${SOC_EMAIL}" "$DRY_RUN"
    replace_placeholder "\[REVOCATION_PHONE_24x7\]" "${REVOCATION_PHONE_24x7}" "$DRY_RUN"
    replace_placeholder "\[REVOCATION_EMAIL\]" "${REVOCATION_EMAIL}" "$DRY_RUN"

    # 4. Date placeholders
    log "\n${GREEN}=== Date Placeholders ===${NC}"
    replace_placeholder "\[SUBMISSION_DATE\]" "${SUBMISSION_DATE}" "$DRY_RUN"
    replace_placeholder "\[SIGN_DATE\]" "${SIGN_DATE}" "$DRY_RUN"
    replace_placeholder "\[PAYMENT_DATE\]" "${PAYMENT_DATE}" "$DRY_RUN"

    # 5. Financial placeholders
    log "\n${GREEN}=== Financial Placeholders ===${NC}"
    replace_placeholder "\[TRX_ID\]" "${TRX_ID}" "$DRY_RUN"
    replace_placeholder "\[INSURANCE_POLICY_NUMBER\]" "${INSURANCE_POLICY_NUMBER}" "$DRY_RUN"

    # 6. Technical placeholders
    log "\n${GREEN}=== Technical Placeholders ===${NC}"
    replace_placeholder "\[OCSP_URL\]" "${OCSP_URL}" "$DRY_RUN"
    replace_placeholder "\[CRL_URL\]" "${CRL_URL}" "$DRY_RUN"
    replace_placeholder "\[TSA_URL\]" "${TSA_URL}" "$DRY_RUN"

    # 7. CAB placeholders
    log "\n${GREEN}=== CAB Placeholders ===${NC}"
    replace_placeholder "\[CAB_NAME\]" "${CAB_NAME}" "$DRY_RUN"
    replace_placeholder "\[CAB_ACCREDITATION_NUMBER\]" "${CAB_ACCREDITATION_NUMBER}" "$DRY_RUN"
    replace_placeholder "\[AUDIT_WINDOW\]" "${AUDIT_WINDOW}" "$DRY_RUN"

    # 8. Regulatory placeholders (post-submission)
    log "\n${GREEN}=== Regulatory Placeholders (will remain until EETT response) ===${NC}"
    log "${YELLOW}Note: These will be populated after EETT registration:${NC}"
    log "  - [PROTOCOL_NUMBER]"
    log "  - [EETT_REG_NUMBER]"

    # Count final placeholders
    if [ "$DRY_RUN" = "false" ]; then
        final_count=$(count_placeholders)
        replaced_count=$((initial_count - final_count))

        log "\n======================================"
        log "${GREEN}Replacement Complete!${NC}"
        log "Initial placeholders: ${initial_count}"
        log "Replaced: ${replaced_count}"
        log "Remaining: ${final_count}"
        log "======================================"

        if [ $final_count -gt 0 ]; then
            log "\n${YELLOW}Remaining placeholders:${NC}"
            find "$DOSSIER_DIR" -name "*.md" -not -path "*/backups/*" -not -path "*/scripts/*" \
                -exec grep -Hn '\[.*\]' {} \; | grep -E '\[A-Z_]+\]' | head -20
        fi
    else
        log "\n======================================"
        log "${YELLOW}DRY-RUN Complete - No changes made${NC}"
        log "Run without --dry-run to apply changes"
        log "======================================"
    fi

    log "\nLog file: ${LOG_FILE}"
    log "Backup location: ${BACKUP_DIR}"
    log "\nCompleted: $(date)"
}

# Run main function
main "$@"
