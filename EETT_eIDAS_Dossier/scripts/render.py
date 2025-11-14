#!/usr/bin/env python3
# ======================================================================
#  render.py
#  --------------------------------------------------------------------
#  Templating engine for the EETT / eIDAS dossier
#
#  • Reads `provider.yml` (single-source metadata)
#  • Recursively scans *.md files under dossier root
#  • Replaces placeholders of the form [PLACEHOLDER_NAME]
#    with the corresponding value from provider.yml
#  • Writes the fully-rendered files to `rendered/` while
#    preserving the original directory structure.
#
#  Usage:
#     python scripts/render.py               # normal run
#     python scripts/render.py --dry-run     # preview changes
#     python scripts/render.py --clean       # wipe rendered dir
#
#  Dependencies:
#     PyYAML  (pip install pyyaml)
#
#  Author:   OSS-Compliance Toolkit
#  Version:  0.2  (2025-11-xx)
# ======================================================================

import argparse
import os
import re
import shutil
import sys
from pathlib import Path
from typing import Any, Dict

# ----------------------------------------------------------------------
# Configuration
# ----------------------------------------------------------------------
DOSSIER_ROOT = Path(__file__).resolve().parents[1]  # eIDAS/EETT_eIDAS_Dossier
PROVIDER_FILE = DOSSIER_ROOT / "provider.yml"
RENDER_ROOT = DOSSIER_ROOT / "rendered"
PLACEHOLDER_RE = re.compile(r"\[([A-Z0-9_]+)\]")

EXCLUDE_DIRS = {
    "scripts",
    "backups",
    ".git",
    "rendered",
}


# ----------------------------------------------------------------------
# Helpers
# ----------------------------------------------------------------------
def flatten(d: Dict[str, Any], parent_key: str = "") -> Dict[str, str]:
    """
    Flattens nested YAML dicts into a single-level dict using
    UPPERCASE keys joined by underscores.

    Example:
        { 'legal': { 'name_en': 'Foo' } } → { 'LEGAL_NAME_EN': 'Foo' }
    """
    items: Dict[str, str] = {}
    for k, v in d.items():
        new_key = f"{parent_key}_{k}" if parent_key else k
        if isinstance(v, dict):
            items.update(flatten(v, new_key))
        else:
            items[new_key] = str(v)
    return {k.upper(): v for k, v in items.items()}


def load_provider_data() -> Dict[str, str]:
    if not PROVIDER_FILE.exists():
        sys.exit(f"[ERROR] provider.yml not found at {PROVIDER_FILE}")
    import yaml  # local import to avoid requirement if script unused

    with PROVIDER_FILE.open("r", encoding="utf-8") as f:
        data = yaml.safe_load(f)
    return flatten(data)


def find_markdown_files() -> list[Path]:
    """Locate all *.md under dossier root, excluding EXCLUDE_DIRS."""
    files = []
    for p in DOSSIER_ROOT.rglob("*.md"):
        if any(part in EXCLUDE_DIRS for part in p.relative_to(DOSSIER_ROOT).parts):
            continue
        files.append(p)
    return files


def render_text(text: str, mapping: Dict[str, str], unresolved: set[str]) -> str:
    """Replace placeholders using provided mapping."""

    def repl(match: re.Match) -> str:
        key = match.group(1)
        if key in mapping and mapping[key] not in {"", "TBD"}:
            return mapping[key]
        unresolved.add(key)
        return match.group(0)  # leave placeholder untouched

    return PLACEHOLDER_RE.sub(repl, text)


def write_rendered(src: Path, content: str):
    dst = RENDER_ROOT / src.relative_to(DOSSIER_ROOT)
    dst.parent.mkdir(parents=True, exist_ok=True)
    with dst.open("w", encoding="utf-8") as f:
        f.write(content)


# ----------------------------------------------------------------------
# Main
# ----------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(description="Render dossier templates")
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Only print statistics, do not write files",
    )
    parser.add_argument(
        "--clean", action="store_true", help="Remove the rendered directory and exit"
    )
    parser.add_argument(
        "--strict",
        action="store_true",
        help="Fail with exit code 1 if any unresolved placeholders remain",
    )
    args = parser.parse_args()

    if args.clean:
        if RENDER_ROOT.exists():
            shutil.rmtree(RENDER_ROOT)
            print(f"[INFO] Removed {RENDER_ROOT}")
        else:
            print(f"[INFO] Nothing to clean.")
        return

    mapping = load_provider_data()
    md_files = find_markdown_files()
    total_placeholders = 0
    unresolved_overall: set[str] = set()

    for md in md_files:
        text = md.read_text(encoding="utf-8")
        unresolved_local: set[str] = set()
        rendered = render_text(text, mapping, unresolved_local)
        total_placeholders += len(PLACEHOLDER_RE.findall(text))
        unresolved_overall.update(unresolved_local)

        if not args.dry_run:
            write_rendered(md, rendered)

    # ------------------------------------------------------------------
    # Summary
    # ------------------------------------------------------------------
    print("----------------------------------------------------")
    print(f"[✓] Processed files     : {len(md_files)}")
    print(f"[✓] Placeholders scanned: {total_placeholders}")
    if unresolved_overall:
        print(f"[!] Unresolved placeholders : {len(unresolved_overall)}")
        for key in sorted(unresolved_overall):
            print(f"    - {key}")
    else:
        print("[✓] All placeholders resolved")

    if args.dry_run:
        print("[DRY-RUN] No files written")
    else:
        print(f"[✓] Rendered output root: {RENDER_ROOT}")

    # ------------------------------------------------------------------
    # Strict-mode enforcement for CI
    # ------------------------------------------------------------------
    if args.strict and unresolved_overall:
        print("[STRICT] Unresolved placeholders detected – failing build.")
        sys.exit(1)


if __name__ == "__main__":
    main()
