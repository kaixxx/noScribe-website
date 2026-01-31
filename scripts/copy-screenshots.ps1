param(
  [string]$SourceRoot = "..\\noScribe"
)

$ErrorActionPreference = "Stop"

$destDir = "static\\img"
$files = @(
  "img\\noScribe_main_window.png",
  "img\\noScribe_Editor.png"
)

foreach ($rel in $files) {
  $source = Join-Path $SourceRoot $rel
  $dest = Join-Path $destDir (Split-Path $rel -Leaf)

  if (-not (Test-Path $source)) {
    Write-Error "Missing source file: $source"
    exit 1
  }

  Copy-Item -Force $source $dest
  Write-Host "Copied $source -> $dest"
}
