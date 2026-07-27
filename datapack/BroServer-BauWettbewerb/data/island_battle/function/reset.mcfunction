# Inseln + Truhen fuer eine NEUE Runde zuruecksetzen
say [BroServer] Setze Inseln zurueck ...
function island_battle:build_islands
tag @a remove ib_isl1
tag @a remove ib_isl2
tag @a remove ib_isl3
tag @a remove ib_isl4
gamemode adventure @a
tp @a 0 201 0
say [BroServer] Zurueckgesetzt. Neue Runde mit /function island_battle:start
