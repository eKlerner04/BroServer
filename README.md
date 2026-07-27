# BroServer – Bau-Wettbewerb 🏝️

Ein Minecraft **Java-Edition** Datapack für einen fairen **Bau-Wettbewerb** mit Freunden:
Jeder Spieler landet auf einer **eigenen, exakt identischen kleinen Insel** und bekommt
**drei Truhen mit für alle komplett gleichem Baumaterial + Werkzeug**. Kein Timer, kein Kampf –
ihr baut, und am Ende schaut ihr gemeinsam, wer am schönsten/größten gebaut hat.

> **Deine Freunde müssen NICHTS herunterladen.** Das Datapack liegt nur auf dem Server.
> Alle joinen einfach mit der richtigen Minecraft-Version über die IP (siehe letzter Abschnitt).
> Dieses GitHub-Repo ist nur dafür, dass **du** das Datapack versioniert hast und leicht
> anpassen/neu hochladen kannst.

## Dein Server (Nitrado)

| | |
|---|---|
| **IP zum Joinen** | `134.255.208.91:10070` |
| Typ | Minecraft (Vanilla), 4 Slots |
| Standort | Frankfurt am Main |
| Service-ID | `ni13337689_1` |

---

## Was ist im Repo?

```
BroServer-BauWettbewerb.zip         <- FERTIGES Datapack (wird automatisch hochgeladen)
einrichten.bat                      <- WINDOWS: Doppelklick = alles einrichten
einrichten.ps1                      <- (das PowerShell-Skript dahinter)
einrichten.sh                       <- Mac/Linux-Variante
nitrado.env.example                 <- hier deine FTP-Daten eintragen (-> nitrado.env)
datapack/BroServer-BauWettbewerb/   <- der Datapack-Ordner zum Bearbeiten
server-config/                      <- Void-Welt-Einstellungen für Nitrado
build-zip.sh                        <- baut die ZIP neu, falls du etwas änderst
```

---

## Einrichtung – Schritt für Schritt

### Schritt 1: Void-Welt + Version in Nitrado einstellen
Damit die Inseln im Leeren schweben, muss die Welt eine **leere „Void"-Welt** sein.

1. In Nitrado **Webinterface** öffnen → **Einstellungen**.
2. **Version** auf die **aktuellste** setzen (Vanilla). Merke dir die Nummer.
3. Folgende Werte setzen (Felder im Webinterface oder in `server.properties`,
   Vorlage liegt in `server-config/`):
   ```
   level-type=minecraft:flat
   generator-settings={"layers":[{"block":"minecraft:air","height":1}],"biome":"minecraft:the_void"}
   difficulty=peaceful
   pvp=false
   spawn-monsters=false
   ```
4. **Welt neu generieren** lassen (alte Welt löschen/umbenennen), sonst bleibt die alte Welt.
   Server einmal **stoppen und starten**.

### Schritt 2: FTP-Daten eintragen
1. In Nitrado unter **FTP/SFTP** stehen **Host, Benutzer, Passwort**.
2. Im Repo die Datei `nitrado.env.example` kopieren zu **`nitrado.env`** und ausfüllen:
   ```
   FTP_HOST=134.255.208.91
   FTP_PORT=21
   FTP_USER=ni13337689_1
   FTP_PASS=DEIN_FTP_PASSWORT
   WORLD=world
   ```
   (Die `nitrado.env` bleibt privat – sie wird **nicht** zu GitHub hochgeladen.)
   > Ohne `nitrado.env` geht's auch – das Skript fragt die Daten dann einfach ab.

### Schritt 3: Der EINE Befehl (das Datapack automatisch hochladen)

**Windows:** einfach **Doppelklick auf `einrichten.bat`**.
Oder in PowerShell im Repo-Ordner:
```powershell
./einrichten.ps1
```

**Mac/Linux:** im Terminal im Repo-Ordner:
```bash
bash einrichten.sh
```

Das Skript lädt das Datapack automatisch in `world/datapacks/` auf deinen Server. ✅

### Schritt 4: Im Spiel aktivieren (2 Befehle)
In Nitrado unter **„Konsole"** (oder im Spiel-Chat, wenn du OP bist – `/op DEINNAME`):
```
/reload
/function island_battle:setup
```
Das baut Lobby + alle 4 Inseln. **Einmalig.**

---

## Eine Runde spielen (Admin-Befehle)

| Wann | Befehl | Wirkung |
|---|---|---|
| Alle sind online | `/function island_battle:start` | Verteilt alle zufällig auf die Inseln, Survival |
| — bauen — | | Jeder baut mit dem exakt gleichen Material |
| Gemeinsam anschauen | `/function island_battle:visit_1` … `visit_4` | Alle fliegen (Zuschauer) über je eine Insel |
| Zurück zur Lobby | `/function island_battle:lobby` | Alle in die Lobby |
| Weiterbauen | `/function island_battle:resume` | Jeder zurück auf seine eigene Insel |
| Neue Runde | `/function island_battle:reset` | Inseln + volle Truhen zurücksetzen |

---

## Etwas ändern?

- **Material anpassen:** Listen `BLOCKS_1`, `BLOCKS_2`, `DECO` in `generate.py`, dann
  `python3 generate.py` und `bash build-zip.sh`, neue ZIP hochladen (Schritt 3), im Spiel `/reload`.
- **Inselgröße:** `H`/`I` in `generate.py` (aktuell 10/9 = 21×21).
- **„Datapack inkompatibel"?** In `datapack/BroServer-BauWettbewerb/pack.mcmeta` die Zahl
  `pack_format` auf deine Version setzen (1.21.x ≈ 48–61, 26.1 = 101, 26.2 = 107).

---

## Auf GitHub (BroServer) hochladen (optional)

```bash
cd BroServerMC
git add .
git commit -m "Bau-Wettbewerb Datapack + Anleitung"
git push
```
(Falls noch kein Remote gesetzt ist: `git remote add origin git@github.com:eKlerner04/BroServer.git`,
dann `git branch -M main` und `git push -u origin main`.)

---

## ✅ So joint ihr auf den Server (Minecraft Java)

1. Minecraft **Java Edition** starten – **wichtig: dieselbe Version wie der Server** (die, die du
   in Schritt 1 eingestellt hast).
2. Im Hauptmenü auf **„Mehrspieler"** klicken.
3. **„Server hinzufügen"** wählen.
4. **Servername:** z. B. `BroServer` (frei wählbar).
   **Serveradresse:** exakt eintragen:
   ```
   134.255.208.91:10070
   ```
5. **„Fertig"**, dann den Server in der Liste **doppelklicken** → ihr landet in der Lobby. 🎉

> Falls „Verbindung fehlgeschlagen": prüfen, ob eure **Minecraft-Version = Server-Version** ist,
> und ob der Server in Nitrado **online** ist. Die Adresse muss inkl. `:10070` (Port) eingetragen sein.
# BroServer
