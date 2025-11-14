#!/bin/bash
# ========================================================================
#  create_package.sh
#  ----------------------------------------------------------------------
#  One-shot utility that produces an “EETT submission” ZIP along with
#  a SHA-256 manifest from the dossier’s *rendered* content.
#
#  1. Ensures rendered Markdown & PDFs exist (runs renderer + PDF build).
#  2. Generates       manifest-SHA256.txt  (RFC-6234 compliant).
#  3. Creates          dossier-YYYYMMDD.zip  with:
#        /docs   → all rendered *.md
#        /pdf    → all generated *.pdf
#        manifest-SHA256.txt
#  4. Prints          manifest line-count  and resulting ZIP size.
#
#  Usage:  ./scripts/create_package.sh  [--force]
#
#  Dependencies:
#     • python3 + PyYAML
#     • zip
#     • shasum (macOS)  OR  sha256sum (GNU/Linux, Git-Bash, WSL)
#
#  Exit codes:
#     0  success
#     1  missing dependency
#     2  unresolved placeholders (renderer strict-mode failed)
# ========================================================================

set -euo pipefail

# ------------------------------------------------------------------------
# Locations
# ------------------------------------------------------------------------
DOSSIER_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../"; pwd)"
RENDER_DIR="${DOSSIER_ROOT}/rendered"
PDF_DIR="${DOSSIER_ROOT}/generated_pdfs"
PACKAGE_DIR="${DOSSIER_ROOT}/packages"
TIMESTAMP="$(date +%Y%m%d)"
PACKAGE_NAME="dossier-${TIMESTAMP}.zip"
MANIFEST_NAME="manifest-SHA256.txt"

# Colours
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'

log(){ echo -e "${GREEN}[==]${NC} $*"; }
warn(){ echo -e "${YELLOW}[!!]${NC} $*"; }
err(){ echo -e "${RED}[xx]${NC} $*" 1>&2; }

# ------------------------------------------------------------------------
# Dependency checking
# ------------------------------------------------------------------------
need_cmd() {
  if ! command -v "$1" &>/dev/null; then
      err "Dependency '$1' not found"; exit 1
  fi
}

detect_sha() {
  if command -v sha256sum &>/dev/null; then
      SHA_CMD="sha256sum"
  elif command -v shasum &>/dev/null; then
      SHA_CMD="shasum -a 256"
  else
      err "Neither sha256sum nor shasum found"; exit 1
  fi
}

need_cmd zip
need_cmd python3
need_cmd pandoc   || true  # PDF build script checks again internally
detect_sha

# ------------------------------------------------------------------------
# Step 1 — Render placeholders (strict mode)
# ------------------------------------------------------------------------
log "Running template renderer"
python3 "${DOSSIER_ROOT}/scripts/render.py" --strict
log "Renderer finished OK"

# ------------------------------------------------------------------------
# Step 2 — Generate PDFs
# ------------------------------------------------------------------------
log "Generating PDFs from rendered docs"
bash "${DOSSIER_ROOT}/scripts/generate_pdfs.sh" >/dev/null
log "PDF generation complete"

# ------------------------------------------------------------------------
# Step 3 — Build manifest (SHA-256)
# ------------------------------------------------------------------------
log "Creating SHA-256 manifest"
MANIFEST_PATH="${DOSSIER_ROOT}/${MANIFEST_NAME}"
> "${MANIFEST_PATH}"  # truncate

# Hash rendered markdown + PDFs only
find "${RENDER_DIR}" -type f -name "*.md" -print0 | while IFS= read -r -d '' f; do
    $SHA_CMD "$f" | awk '{print $1 "  " substr($0,index($0,$2))}' >> "${MANIFEST_PATH}"
done

find "${PDF_DIR}" -type f -name "*.pdf" -print0 | while IFS= read -r -d '' f; do
    $SHA_CMD "$f" | awk '{print $1 "  " substr($0,index($0,$2))}' >> "${MANIFEST_PATH}"
done

log "Manifest lines: $(wc -l < "${MANIFEST_PATH}")"

# ------------------------------------------------------------------------
# Step 4 — Build ZIP package
# ------------------------------------------------------------------------
mkdir -p "${PACKAGE_DIR}"
pushd "${DOSSIER_ROOT}" >/dev/null

log "Creating ZIP package ${PACKAGE_NAME}"
zip -rq "${PACKAGE_DIR}/${PACKAGE_NAME}" \
        "${MANIFEST_NAME}" \
        "$(basename "${RENDER_DIR}")" \
        "$(basename "${PDF_DIR}")"

popd >/dev/null

ZIP_SIZE=$(du -h "${PACKAGE_DIR}/${PACKAGE_NAME}" | cut -f1)
log "Package ready: ${PACKAGE_DIR}/${PACKAGE_NAME} (${ZIP_SIZE})"

# ------------------------------------------------------------------------
# Final notes
# ------------------------------------------------------------------------
echo -e "\n${YELLOW}Next steps:${NC}"
echo "1. Apply qualified e-signature / e-seal to ${PACKAGE_NAME} or manifest as per EETT guidance."
echo "2. Upload via EETT Electronic Submission Portal before the protocol deadline."

exit 0
