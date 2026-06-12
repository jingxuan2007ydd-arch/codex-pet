$ErrorActionPreference = 'Stop'

$SourceDir = Join-Path $PSScriptRoot 'outputs\fanblade-chibi'
$PetDir = Join-Path $env:USERPROFILE '.codex\pets\fanblade-chibi'

New-Item -ItemType Directory -Force -Path $PetDir | Out-Null
Copy-Item -LiteralPath (Join-Path $SourceDir 'spritesheet.webp') -Destination (Join-Path $PetDir 'spritesheet.webp') -Force
Copy-Item -LiteralPath (Join-Path $SourceDir 'pet.json') -Destination (Join-Path $PetDir 'pet.json') -Force

Write-Host "Installed fanblade-chibi to $PetDir"

