# Baut 4 identische Inseln (Grasoberflaeche y=90), weit voneinander entfernt
execute positioned 150 90 150 run function island_battle:island_build
execute positioned -150 90 150 run function island_battle:island_build
execute positioned 150 90 -150 run function island_battle:island_build
execute positioned -150 90 -150 run function island_battle:island_build
