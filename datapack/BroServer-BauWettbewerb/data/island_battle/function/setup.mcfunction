# === EINMALIGER AUFBAU (Admin) ===
say [BroServer] Baue die Bau-Wettbewerb-Welt auf ...
# Bau-freundliche Regeln
gamerule doDaylightCycle false
time set day
gamerule doWeatherCycle false
weather clear 1000000
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule announceAdvancements false
difficulty peaceful
# Weltgrenze weit weg (keine Border-Schaden)
worldborder center 0 0
worldborder set 4000
# Bauten
function island_battle:build_lobby
function island_battle:build_islands
# Spawn in die Lobby
setworldspawn 0 201 0
spawnpoint @a 0 201 0
say [BroServer] Fertig! Alle Spieler in die Lobby holen, dann: /function island_battle:start
