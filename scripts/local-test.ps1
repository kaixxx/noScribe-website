param(
  [string]$Address = "http://localhost:1313/",
  [string]$HugoArgs = "server"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $root

if (-not (Get-Command hugo -ErrorAction SilentlyContinue)) {
  Write-Error "Hugo not found in PATH. Install Hugo Extended and try again."
  exit 1
}

Write-Host "Updating submodules..."
& git submodule update --init --recursive

Write-Host "Opening $Address"
Start-Process $Address | Out-Null

Write-Host "Starting Hugo server..."
& hugo $HugoArgs
