#!/usr/bin/env bash
# Baut die hochladbare Datapack-ZIP aus dem Ordner datapack/BroServer-BauWettbewerb
# Die ZIP enthaelt pack.mcmeta + data/ direkt im Wurzelverzeichnis (so will es Minecraft).
set -e
cd "$(dirname "$0")/datapack/BroServer-BauWettbewerb"
OUT="../../BroServer-BauWettbewerb.zip"
rm -f "$OUT"
zip -r "$OUT" pack.mcmeta data >/dev/null
echo "Fertig: BroServer-BauWettbewerb.zip (diese Datei auf Nitrado in world/datapacks hochladen)"
