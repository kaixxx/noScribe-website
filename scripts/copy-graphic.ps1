param(
  [string]$Source = "..\\noScribe\\graphic_sw.png"
)

$dest = "static\\img\\graphic_sw.png"
if (-not (Test-Path $Source)) {
  Write-Error "Source graphic not found: $Source"
  exit 1
}

Copy-Item -Force $Source $dest
Write-Host "Copied $Source -> $dest"
