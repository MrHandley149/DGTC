$ErrorActionPreference = "Stop"

$repoRoot = (Get-Location).Path
$docsPath = Join-Path $repoRoot "docs"
$registerPath = Join-Path $docsPath "project\DOCUMENT_REGISTER.md"
$registerDirectory = Split-Path $registerPath

if (-not (Test-Path $docsPath)) {
    Write-Host "ERROR: Mappen docs hittades inte."
    exit 1
}

if (-not (Test-Path $registerPath)) {
    Write-Host "ERROR: DOCUMENT_REGISTER.md hittades inte."
    exit 1
}

# Hämta alla faktiska Markdown-filer under docs.
$actualFiles = Get-ChildItem -Path $docsPath -Recurse -File -Filter "*.md" |
    ForEach-Object {
        $_.FullName.Replace($repoRoot + "\", "").Replace("\", "/")
    } |
    Sort-Object -Unique

# Läs endast sökvägar från första kolumnen i registertabellerna.
$registerContent = Get-Content -Path $registerPath -Raw

$registeredPaths = [regex]::Matches(
    $registerContent,
    '(?m)^\|\s*`([^`]+\.md)`\s*\|'
) |
    ForEach-Object {
        $pathFromRegister = $_.Groups[1].Value

        $absolutePath = [System.IO.Path]::GetFullPath(
            (Join-Path $registerDirectory $pathFromRegister)
        )

        $absolutePath.Replace($repoRoot + "\", "").Replace("\", "/")
    } |
    Sort-Object -Unique

$missingFromRegister = $actualFiles |
    Where-Object { $_ -notin $registeredPaths }

$missingFromDisk = $registeredPaths |
    Where-Object { $_ -notin $actualFiles }

$duplicateNames = $actualFiles |
    Group-Object {
        [System.IO.Path]::GetFileName($_)
    } |
    Where-Object {
        $_.Count -gt 1
    }

Write-Host ""
Write-Host "DGTC Document Register Validation"
Write-Host "================================="
Write-Host "Faktiska Markdown-filer: $($actualFiles.Count)"
Write-Host "Registrerade sökvägar:   $($registeredPaths.Count)"

$hasErrors = $false

if ($missingFromRegister.Count -gt 0) {
    $hasErrors = $true

    Write-Host ""
    Write-Host "FILER SOM SAKNAS I DOCUMENT_REGISTER.md:"

    $missingFromRegister | ForEach-Object {
        Write-Host "  - $_"
    }
}

if ($missingFromDisk.Count -gt 0) {
    $hasErrors = $true

    Write-Host ""
    Write-Host "REGISTERPOSTER SOM SAKNAR FIL:"

    $missingFromDisk | ForEach-Object {
        Write-Host "  - $_"
    }
}

if ($duplicateNames.Count -gt 0) {
    Write-Host ""
    Write-Host "DUBBLA FILNAMN SOM BEHÖVER GRANSKAS:"

    foreach ($group in $duplicateNames) {
        Write-Host ""
        Write-Host "  $($group.Name)"

        $group.Group | ForEach-Object {
            Write-Host "    - $_"
        }
    }
}

if ($hasErrors) {
    Write-Host ""
    Write-Host "FAILED: Dokumentregistret stämmer inte med repositoryt."
    exit 1
}

Write-Host ""
Write-Host "OK: Alla Markdown-filer under docs finns i dokumentregistret."
exit 0
