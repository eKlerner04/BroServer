# Nach dem Rundgang: alle zurueck auf ihre eigene Insel zum Weiterbauen
gamemode survival @a
execute as @a[tag=ib_isl1] run tp @s 150 91 150
execute as @a[tag=ib_isl2] run tp @s -150 91 150
execute as @a[tag=ib_isl3] run tp @s 150 91 -150
execute as @a[tag=ib_isl4] run tp @s -150 91 -150
title @a actionbar {"text":"Weiterbauen!","color":"green"}
