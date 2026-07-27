$ErrorActionPreference = 'Stop'

$encoding = [System.Text.Encoding]::GetEncoding(1252)
$parent = Split-Path -Parent $PSScriptRoot
$grandParent = Split-Path -Parent $parent
$candidates = @(
    (Join-Path $PSScriptRoot 'Morrowind.ini'),
    (Join-Path $parent 'Morrowind.ini'),
    (Join-Path $grandParent 'Morrowind.ini'),
    (Join-Path (Get-Location) 'Morrowind.ini')
) | Select-Object -Unique

$iniPath = $candidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
if (-not $iniPath) {
    throw 'Morrowind.ini não foi encontrado. Coloque a pasta extras dentro da pasta do jogo ou execute este instalador a partir dela.'
}

$fragmentPath = Join-Path $PSScriptRoot 'Morrowind.ini.questionario-classes'
if (-not (Test-Path -LiteralPath $fragmentPath)) {
    throw "Fragmento de tradução não encontrado: $fragmentPath"
}

$original = [System.IO.File]::ReadAllText($iniPath, $encoding)
$fragment = [System.IO.File]::ReadAllText($fragmentPath, [System.Text.Encoding]::UTF8)
$updated = $original

for ($number = 1; $number -le 10; $number++) {
    $sectionName = "Question $number"
    $sectionPattern = "(?ms)^\[$([regex]::Escape($sectionName))\]\r?\n.*?(?=^\[|\z)"
    $fragmentMatch = [regex]::Match($fragment, $sectionPattern)
    if (-not $fragmentMatch.Success) {
        throw "Seção ausente no fragmento: [$sectionName]"
    }

    $replacement = $fragmentMatch.Value.TrimEnd("`r", "`n") + "`r`n`r`n"
    if ([regex]::IsMatch($updated, $sectionPattern)) {
        $updated = [regex]::Replace($updated, $sectionPattern, $replacement, 1)
    }
    else {
        $updated = $updated.TrimEnd("`r", "`n") + "`r`n`r`n" + $replacement
    }
}

if ($updated -eq $original) {
    Write-Host 'O questionário já está instalado em português brasileiro.'
    exit 0
}

$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$backupPath = "$iniPath.backup-$timestamp"
[System.IO.File]::WriteAllText($backupPath, $original, $encoding)
[System.IO.File]::WriteAllText($iniPath, $updated, $encoding)

Write-Host "Questionário instalado com sucesso: $iniPath"
Write-Host "Backup criado em: $backupPath"
