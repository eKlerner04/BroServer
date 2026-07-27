#!/usr/bin/env bash
# =====================================================================
#  BroServer – Bau-Wettbewerb : BEQUEME EINRICHTUNG
#  Baut das Datapack und laedt es automatisch per FTP auf den
#  Nitrado-Server (world/datapacks). EIN Befehl, fertig.
#
#  Aufruf:   bash einrichten.sh
# =====================================================================
set -euo pipefail
cd "$(dirname "$0")"

echo "======================================================"
echo "  BroServer Bau-Wettbewerb  –  Einrichtung"
echo "======================================================"

# --- 1) Zugangsdaten laden (nitrado.env) oder abfragen -------------
ENVFILE="nitrado.env"
if [ -f "$ENVFILE" ]; then
  # shellcheck disable=SC1090
  source "$ENVFILE"
  echo "-> Zugangsdaten aus $ENVFILE geladen."
fi
FTP_HOST="${FTP_HOST:-}"
FTP_PORT="${FTP_PORT:-21}"
FTP_USER="${FTP_USER:-}"
FTP_PASS="${FTP_PASS:-}"
WORLD="${WORLD:-world}"

if [ -z "$FTP_HOST" ]; then read -rp "FTP-Host (aus Nitrado 'FTP/SFTP', oft 134.255.208.91): " FTP_HOST; fi
if [ -z "$FTP_PORT" ]; then read -rp "FTP-Port [21]: " FTP_PORT; FTP_PORT="${FTP_PORT:-21}"; fi
if [ -z "$FTP_USER" ]; then read -rp "FTP-Benutzer (z.B. ni13337689_1): " FTP_USER; fi
if [ -z "$FTP_PASS" ]; then read -rsp "FTP-Passwort: " FTP_PASS; echo; fi
if [ -z "$WORLD" ]; then read -rp "Weltname (level-name) [world]: " WORLD; WORLD="${WORLD:-world}"; fi

# --- 2) Datapack-ZIP bauen ----------------------------------------
echo "-> Baue Datapack-ZIP ..."
bash build-zip.sh

# --- 3) Hochladen -------------------------------------------------
echo "-> Lade Datapack hoch nach  /$WORLD/datapacks/  ..."
if curl -fsS --ftp-create-dirs -u "${FTP_USER}:${FTP_PASS}" -T BroServer-BauWettbewerb.zip \
     "ftp://${FTP_HOST}:${FTP_PORT}/${WORLD}/datapacks/BroServer-BauWettbewerb.zip"; then
  echo "   ... erfolgreich hochgeladen!"
else
  echo "!! Upload fehlgeschlagen. Pruefe Host/Port/Benutzer/Passwort und den Weltnamen."
  echo "   (FTP-Daten findest du in Nitrado unter 'FTP/SFTP'. Bei SFTP ggf. Port anpassen.)"
  exit 1
fi

echo
echo "======================================================"
echo "  FAST FERTIG – nur noch 2 Befehle IM SPIEL / in der"
echo "  Nitrado-Server-Konsole (Webinterface):"
echo "     /reload"
echo "     /function island_battle:setup"
echo "  Wenn alle Freunde online sind:"
echo "     /function island_battle:start"
echo "======================================================"
