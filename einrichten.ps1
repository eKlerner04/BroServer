# =====================================================================
#  BroServer - Bau-Wettbewerb : BEQUEME EINRICHTUNG (Windows/PowerShell)
#  Laedt das Datapack automatisch per FTP auf den Nitrado-Server.
#  Start: Doppelklick auf  einrichten.bat   ODER in PowerShell:  ./einrichten.ps1
# =====================================================================
$ErrorActionPreference = "Stop"
Set-Location -Path $PSScriptRoot

Write-Host "======================================================"
Write-Host "  BroServer Bau-Wettbewerb  -  Einrichtung"
Write-Host "======================================================"

# --- 1) Zugangsdaten aus nitrado.env laden (falls vorhanden) ---------
$cfg = @{}
$envFile = Join-Path $PSScriptRoot "nitrado.env"
if (Test-Path $envFile) {
  Get-Content $envFile | ForEach-Object {
    if ($_ -match '^\s*([A-Za-z_]+)\s*=\s*(.+?)\s*$') { $cfg[$matches[1]] = $matches[2] }
  }
  Write-Host "-> Zugangsdaten aus nitrado.env geladen."
}
function Get-Val($key, $prompt, $default) {
  if ($cfg.ContainsKey($key) -and $cfg[$key]) { return $cfg[$key] }
  $inp = Read-Host $prompt
  if (-not $inp -and $default) { return $default }
  return $inp
}

$FTP_HOST = Get-Val "FTP_HOST" "FTP-Host (aus Nitrado 'FTP/SFTP', oft 134.255.208.91)" ""
$FTP_PORT = Get-Val "FTP_PORT" "FTP-Port [21]" "21"
$FTP_USER = Get-Val "FTP_USER" "FTP-Benutzer (z.B. ni13337689_1)" ""
if ($cfg.ContainsKey("FTP_PASS") -and $cfg["FTP_PASS"]) {
  $FTP_PASS = $cfg["FTP_PASS"]
} else {
  $sec = Read-Host "FTP-Passwort" -AsSecureString
  $FTP_PASS = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($sec))
}
$WORLD = Get-Val "WORLD" "Weltname (level-name) [world]" "world"

# --- 2) Datapack-ZIP finden -----------------------------------------
$zip = Join-Path $PSScriptRoot "BroServer-BauWettbewerb.zip"
if (-not (Test-Path $zip)) { throw "ZIP nicht gefunden: $zip" }

# --- 3) Hochladen (curl.exe ist in Windows 10/11 enthalten) ---------
Write-Host "-> Lade Datapack hoch nach  /$WORLD/datapacks/  ..."
$url = "ftp://{0}:{1}/{2}/datapacks/BroServer-BauWettbewerb.zip" -f $FTP_HOST, $FTP_PORT, $WORLD
& curl.exe -fsS --ftp-create-dirs -u "$($FTP_USER):$($FTP_PASS)" -T "$zip" "$url"
if ($LASTEXITCODE -ne 0) {
  throw "Upload fehlgeschlagen - pruefe Host/Port/Benutzer/Passwort und Weltnamen. FTP-Daten stehen in Nitrado unter 'FTP/SFTP'."
}

Write-Host "   ... erfolgreich hochgeladen!"
Write-Host ""
Write-Host "======================================================"
Write-Host "  FAST FERTIG - jetzt im Nitrado-Webinterface unter"
Write-Host "  'Konsole' (oder im Spiel-Chat als OP) eingeben:"
Write-Host "       /reload"
Write-Host "       /function island_battle:setup"
Write-Host "  Wenn alle Freunde online sind:"
Write-Host "       /function island_battle:start"
Write-Host "======================================================"
