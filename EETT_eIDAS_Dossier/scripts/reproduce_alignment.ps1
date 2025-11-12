<#
Reproducible alignment script for EETT eIDAS dossier (Windows PowerShell)
Creates/aligns the target ASiC-E directory structure, maps sources, and creates placeholders for missing items.
Also generates an alignment summary and a draft META-INF/manifest.xml with SHA-256 digests.

Usage:
  pwsh -File scripts/reproduce_alignment.ps1 [-DryRun] [-NoManifest]
  powershell -ExecutionPolicy Bypass -File scripts\reproduce_alignment.ps1 -DryRun -NoManifest

Notes:
- This script is idempotent. Re-running it will overwrite files in the target dossier with current sources/placeholders.
- Placeholders contain exactly: "PLACEHOLDER – to be replaced with official document"
- The "mimetype" file is written with exact content (no trailing newline).
- The manifest is a draft; regenerate for the final package and sign with XAdES-LTA as per your signing process.
#>

[CmdletBinding()]
param(
  [switch]$DryRun,
  [switch]$NoManifest
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Get-Timestamp {
  Get-Date -Format "yyyy-MM-ddTHH:mm:sszzz"
}

# Resolve repository paths relative to this script location
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot  = Split-Path -Parent $ScriptDir
Set-Location $RepoRoot

# Constants
$TargetDir     = "EETT_Dossier_GreekTrustCo_2025-06-15.asice"
$AlignLog      = Join-Path $TargetDir "alignment.log"
$AlignSummary  = Join-Path $TargetDir "ALIGNMENT_SUMMARY.md"
$MetaInfDir    = Join-Path $TargetDir "META-INF"
$PlaceHolderLine = "PLACEHOLDER – to be replaced with official document"

# Logging helpers
function Write-Log([string]$Level, [string]$Message) {
  $line = "[{0}] {1} {2}" -f (Get-Timestamp), $Level.ToUpper().PadRight(5), $Message
  Write-Host $line
  if (-not $DryRun) {
    [System.IO.File]::AppendAllText($AlignLog, $line + [Environment]::NewLine)
  }
}

function Write-Info([string]$Message) { Write-Log "INFO" $Message }
function Write-Warn([string]$Message) { Write-Log "WARN" $Message }
function Write-ErrorLog([string]$Message) { Write-Log "ERROR" $Message }

function New-DirSafe([string]$Path) {
  if (Test-Path -LiteralPath $Path) {
    Write-Info ("EXIST {0}" -f $Path)
  } else {
    if ($DryRun) {
      Write-Info ("DRY-RUN MKDIR {0}" -f $Path)
    } else {
      New-Item -ItemType Directory -Path $Path | Out-Null
      Write-Info ("MKDIR {0}" -f $Path)
    }
  }
}

function Write-TextFile([string]$Path, [string]$Content, [System.Text.Encoding]$Encoding = $null) {
  if ($DryRun) {
    Write-Info ("DRY-RUN WRITE {0}" -f $Path)
    return
  }
  $dir = Split-Path -Parent $Path
  if (-not [string]::IsNullOrEmpty($dir)) { New-DirSafe $dir }
  if ($null -eq $Encoding) {
    # Default to UTF-8 without BOM
    $Encoding = New-Object System.Text.UTF8Encoding($false)
  }
  [System.IO.File]::WriteAllText($Path, $Content, $Encoding)
  Write-Info ("WRITE {0}" -f $Path)
}

function Copy-FileForce([string]$Source, [string]$Destination) {
  $destDir = Split-Path -Parent $Destination
  if (-not [string]::IsNullOrEmpty($destDir)) { New-DirSafe $destDir }
  if ($DryRun) {
    Write-Info ("DRY-RUN COPY {0} -> {1}" -f $Source, $Destination)
  } else {
    Copy-Item -LiteralPath $Source -Destination $Destination -Force
    Write-Info ("COPY {0} -> {1}" -f $Source, $Destination)
  }
}

function Append-SummaryHeader {
  $header = @(
    "# Alignment Summary"
    ""
    "Status | File Name | Action Taken | Notes"
    "---|---|---|---"
  ) -join [Environment]::NewLine
  Write-TextFile -Path $AlignSummary -Content $header
}

function Append-SummaryRow([string]$Status, [string]$FileName, [string]$ActionTaken, [string]$Notes) {
  $row = ("| {0} | {1} | {2} | {3} |" -f $Status, $FileName, $ActionTaken, $Notes)
  if ($DryRun) {
    Write-Info ("DRY-RUN SUMMARY: {0}" -f $row)
    return
  }
  [System.IO.File]::AppendAllText($AlignSummary, $row + [Environment]::NewLine)
}

function Bootstrap-Directories {
  New-DirSafe $TargetDir
  New-DirSafe $MetaInfDir
  New-DirSafe (Join-Path $TargetDir "06_Test_Certificates")
  New-DirSafe (Join-Path $TargetDir "Supporting_Docs/Financial")
  New-DirSafe (Join-Path $TargetDir "Supporting_Docs/Certifications")
  New-DirSafe (Join-Path $TargetDir "Supporting_Docs/Legal/Director_IDs")
  New-DirSafe (Join-Path $TargetDir "Supporting_Docs/Personnel/Qualifications")
}

function Ensure-Mimetype {
  $path = Join-Path $TargetDir "mimetype"
  # Write exact content with ASCII, no trailing newline and no BOM
  $ascii = [System.Text.ASCIIEncoding]::new()
  Write-TextFile -Path $path -Content "application/vnd.etsi.asic-e+zip" -Encoding $ascii
  Append-SummaryRow "✅" "mimetype" "Created/Updated" "Fixed content"
}

function Ensure-MetaTemplates {
  $manifest    = Join-Path $MetaInfDir "manifest.xml"
  $signatures  = Join-Path $MetaInfDir "signatures.xml"
  $asicmanifest= Join-Path $MetaInfDir "ASiCManifest.xml"

  $manifestContent = @"
<?xml version="1.0" encoding="UTF-8"?>
<asic:Manifest xmlns:asic="http://uri.etsi.org/02918/v1.2.1#" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
  <!-- Draft manifest. Will be (re)generated by this script unless -NoManifest is used. -->
  <asic:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
</asic:Manifest>
"@
  $signaturesContent = @"
<?xml version="1.0" encoding="UTF-8"?>
<asic:ASiCSignatures xmlns:asic="http://uri.etsi.org/02918/v1.2.1#" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xades="http://uri.etsi.org/01903/v1.3.2#" xmlns:xades141="http://uri.etsi.org/01903/v1.4.1#">
  <!-- Placeholder – replace with XAdES-LTA signature at packaging time -->
</asic:ASiCSignatures>
"@
  $asicmanifestContent = @"
<?xml version="1.0" encoding="UTF-8"?>
<asic:ASiCManifest xmlns:asic="http://uri.etsi.org/02918/v1.2.1#" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
  <!-- Optional metadata file; kept minimal here. -->
  <asic:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
</asic:ASiCManifest>
"@

  Write-TextFile -Path $manifest     -Content $manifestContent
  Write-TextFile -Path $signatures   -Content $signaturesContent
  Write-TextFile -Path $asicmanifest -Content $asicmanifestContent

  Append-SummaryRow "✅" "META-INF/manifest.xml" "Created/Updated" "Template"
  Append-SummaryRow "✅" "META-INF/signatures.xml" "Created/Updated" "Placeholder"
  Append-SummaryRow "✅" "META-INF/ASiCManifest.xml" "Created/Updated" "Optional"
}

function HexToBase64([string]$Hex) {
  if ([string]::IsNullOrWhiteSpace($Hex)) { return "" }
  $len = $Hex.Length
  $bytes = New-Object byte[] ($len/2)
  for ($i = 0; $i -lt $len; $i += 2) {
    $bytes[$i/2] = [Convert]::ToByte($Hex.Substring($i,2),16)
  }
  return [Convert]::ToBase64String($bytes)
}

function Generate-Manifest {
  if ($NoManifest) {
    Write-Warn "Skipping manifest generation (-NoManifest)"
    return
  }

  $manifestPath = Join-Path $MetaInfDir "manifest.xml"
  $targetFull = (Resolve-Path $TargetDir).Path

  $files = Get-ChildItem -Path $TargetDir -Recurse -File |
    Where-Object { $_.FullName -notlike "*\META-INF\*" } |
    Sort-Object FullName

  $lines = New-Object System.Collections.Generic.List[string]
  $lines.Add('<?xml version="1.0" encoding="UTF-8"?>')
  $lines.Add('<asic:Manifest xmlns:asic="http://uri.etsi.org/02918/v1.2.1#" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">')
  $lines.Add('  <asic:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>')

  foreach ($f in $files) {
    $rel = $f.FullName.Substring($targetFull.Length + 1).Replace('\','/')
    try {
      $h = Get-FileHash -Algorithm SHA256 -Path $f.FullName
      $b64 = HexToBase64 $h.Hash
      $lines.Add(("  <asic:DataObjectReference URI=""{0}"">" -f $rel))
      $lines.Add(("    <ds:DigestValue>{0}</ds:DigestValue>" -f $b64))
      $lines.Add("  </asic:DataObjectReference>")
    } catch {
      Write-Warn ("Failed to hash {0}: {1}" -f $rel, $_.Exception.Message)
    }
  }

  $lines.Add('</asic:Manifest>')

  if ($DryRun) {
    Write-Info "DRY-RUN generate META-INF/manifest.xml (draft)"
  } else {
    [System.IO.File]::WriteAllLines($manifestPath, $lines, (New-Object System.Text.UTF8Encoding($false)))
    Write-Info "Generated META-INF/manifest.xml (draft)"
  }
}

function Map-Or-Placeholder([string]$TargetRel, [string]$SourceRel) {
  $targetPath = Join-Path $TargetDir $TargetRel
  $targetDir  = Split-Path -Parent $targetPath
  if (-not [string]::IsNullOrEmpty($targetDir)) { New-DirSafe $targetDir }

  if ($SourceRel -ne "-" ) {
    $sourcePath = Join-Path $RepoRoot $SourceRel
    if (Test-Path -LiteralPath $sourcePath) {
      Copy-FileForce -Source $sourcePath -Destination $targetPath
      Append-SummaryRow "📝" $TargetRel ("Mapped from {0}" -f $SourceRel) "Normalized"
      return
    }
  }

  Write-TextFile -Path $targetPath -Content $PlaceHolderLine
  Append-SummaryRow "⚠️" $TargetRel "Placeholder created" "Missing or not provided"
}

function Seed-Supporting-Placeholders {
  Map-Or-Placeholder "Supporting_Docs/Financial/Balance_Sheet_2024.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Financial/Insurance_Policy.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Certifications/ISO27001_Certificate.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Certifications/ISO9001_Certificate.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Certifications/Datacenter_Certification.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Certifications/HSM_FIPS_Certification.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Certifications/CAB_Accreditation_Certificate.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Legal/GEMH_Company_Registration.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Legal/AFM_Tax_Registration.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Legal/Articles_of_Association.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Legal/Director_IDs/CEO_ID_Card.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Legal/Director_IDs/QTS_Manager_ID_Card.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Personnel/DPO_Appointment_Letter.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Personnel/Qualifications/QTS_Manager_CV_Certifications.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Personnel/Qualifications/Crypto_Officer_Qualifications.pdf" "-"
  Map-Or-Placeholder "Supporting_Docs/Personnel/Qualifications/RA_Operator_Training_Certificates.pdf" "-"
}

# Initialize/clear log
if (-not $DryRun) {
  if (-not (Test-Path -LiteralPath $TargetDir)) { New-DirSafe $TargetDir }
  # Truncate log file
  [System.IO.File]::WriteAllText($AlignLog, "", (New-Object System.Text.UTF8Encoding($false)))
}
Write-Info ("Running in: {0}" -f $RepoRoot)

# Prepare target structure and summaries
Append-SummaryHeader
Bootstrap-Directories
Ensure-Mimetype
Ensure-MetaTemplates

# Define mappings: Target => Source (relative to repo root). Use "-" to force placeholder.
$mappings = @(
  @{ Target="01_Registry_Application_GreekTrustCo_SIGNED.pdf";         Source="01_Registry/01_Registry_Application_[LEGAL_NAME_GR].docx.md" }
  @{ Target="01a_Registry_Fee_Proof_300EUR.pdf";                        Source="01_Registry/01a_Fee_Proof.pdf.md" }
  @{ Target="01b_Change_Notification_Template_SIGNED.pdf";              Source="01_Registry/01b_Change_Notice_Template.md" }
  @{ Target="02_EETT_Qualified_Service_Start_Application_SIGNED.pdf";   Source="02_Qualified_Service_Application/02_EETT_Qualified_Service_Start_Application.md" }
  @{ Target="02a_Cover_Letter_Electronic_System_Access_SIGNED.pdf";     Source="-" }
  @{ Target="03_Conformity_Assessment_Report_TUV_2025.pdf";             Source="-" }
  @{ Target="03a_Traceability_Matrix.pdf";                              Source="-" }
  @{ Target="04_TSP_Policy_GR_EN_SIGNED.pdf";                           Source="04_Policies/04_TSP_Policy_EN.docx.md" }
  @{ Target="05_TSPS_Qualified_Services_GR_EN_SIGNED.pdf";              Source="05_Policies/05_TSPS_EN.docx.md" }

  @{ Target="06_Test_Certificates/Root_CA_Certificate.pem";             Source="-" }
  @{ Target="06_Test_Certificates/Issuing_CA_QES_Certificate.pem";      Source="05_Test_Certificates/samples/3_QWAC_Sample.cer" }
  @{ Target="06_Test_Certificates/Issuing_CA_QSeal_Certificate.pem";    Source="05_Test_Certificates/samples/2_QSeal_Sample.cer" }
  @{ Target="06_Test_Certificates/TSA_CA_Certificate.pem";              Source="-" }
  @{ Target="06_Test_Certificates/Sample_QES_Certificate.pem";          Source="05_Test_Certificates/samples/1_QES_Natural_Person_Sample.cer" }
  @{ Target="06_Test_Certificates/Sample_OCSP_Response.der";            Source="05_Test_Certificates/samples/4_OCSP_Response_Sample.ors" }
  @{ Target="06_Test_Certificates/Sample_CRL.crl";                      Source="05_Test_Certificates/samples/5_CRL_Sample.crl" }
  @{ Target="06_Test_Certificates/Certificate_Profiles_Guide.pdf";      Source="05_Test_Certificates/Documentation/20_Certificate_Profiles_Guide.md" }

  @{ Target="07_Risk_Assessment_GR_EN.pdf";                             Source="06_Risk_Incident/07_Risk_Assessment_Report_GR.docx.md" }
  @{ Target="07a_Incident_Response_Plan_GR_EN.pdf";                     Source="06_Risk_Incident/07a_Incident_Response_Plan_GR.docx.md" }
  @{ Target="07b_Incident_Report_Forms.pdf";                            Source="06_Risk_Incident/07b_Incident_Forms_GR.xlsx.md" }
  @{ Target="08_User_Notification_Templates_GR_EN.pdf";                 Source="07_User_Notifications/08_User_Notification_Plan_GR_EN.docx.md" }
  @{ Target="09_Service_Termination_Plan_GR_EN.pdf";                    Source="08_Termination/09_Termination_Plan_GR_EN.docx.md" }
  @{ Target="10_End_User_Agreement_GR_EN_SIGNED.pdf";                   Source="09_Contracts/10_Standard_End_User_Agreement_GR_EN.docx.md" }
  @{ Target="11_Revocation_SOP_GR_EN.pdf";                              Source="10_Revocation_Status/11_Revocation_Status_SOP_GR.docx.md" }
  @{ Target="11a_Revocation_Forms.pdf";                                 Source="10_Revocation_Status/11a_Web_Disclosure_Text_GR.md" }
  @{ Target="12_Recordkeeping_Policy_GR_EN.pdf";                        Source="11_Records_Access/12_Records_and_Access_Policy_GR.docx.md" }
  @{ Target="13_EETT_Communication_Templates_GR.pdf";                   Source="12_EETT_Communications/13_EETT_Notification_Templates_GR.docx.md" }
  @{ Target="14_NTL_Publication_Datasheet.pdf";                         Source="13_NTL/14_NTL_Publication_Datasheet.xlsx.md" }
  @{ Target="17_Executive_Brief_GR_EN_SIGNED.pdf";                      Source="00_EXECUTIVE_BRIEF.md" }
  @{ Target="18_Gantt_Chart_Project_Timeline.pdf";                      Source="-" }
  @{ Target="19_Master_Compliance_Register.pdf";                        Source="15_Compliance_Master/Master_Compliance_Register.xlsx.md" }
  @{ Target="20_README_and_Placeholder_Table.zip";                      Source="-" }
)

# Apply mappings
foreach ($m in $mappings) {
  Map-Or-Placeholder -TargetRel $m.Target -SourceRel $m.Source
}

# Seed supporting document placeholders
Seed-Supporting-Placeholders

# Generate draft manifest
Generate-Manifest

Write-Info ("Alignment completed.")
Write-Info ("Summary: {0}" -f $AlignSummary)
Write-Info ("Log:     {0}" -f $AlignLog)
Write-Info ("Root:    {0}" -f (Resolve-Path $TargetDir).Path)
Write-Info ("Next: Package as ASiC-E (ZIP) ensuring 'mimetype' is stored with no compression, then sign with XAdES-LTA.")
