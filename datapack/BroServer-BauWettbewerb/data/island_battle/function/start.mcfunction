# === SPIEL STARTEN: Spieler auf Inseln verteilen (Admin) ===
# Voraussetzung: alle Spieler sind online (am besten in der Lobby)
tag @a remove ib_isl1
tag @a remove ib_isl2
tag @a remove ib_isl3
tag @a remove ib_isl4
tag @a add ib_pending
gamemode survival @a
effect give @a minecraft:instant_health 1 10 true
# Jeder bekommt zufaellig EINE der identischen Inseln
execute as @r[tag=ib_pending] run function island_battle:assign_1
execute as @r[tag=ib_pending] run function island_battle:assign_2
execute as @r[tag=ib_pending] run function island_battle:assign_3
execute as @r[tag=ib_pending] run function island_battle:assign_4
tag @a remove ib_pending
title @a title {"text":"Los geht's!","color":"green"}
title @a subtitle {"text":"Baue das Schoenste auf deiner Insel!","color":"yellow"}
tellraw @a {"text":"[BroServer] Baut los! In den 3 Truhen ist fuer alle exakt das gleiche Material.","color":"aqua"}
