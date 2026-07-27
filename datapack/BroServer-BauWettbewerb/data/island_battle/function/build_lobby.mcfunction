# === LOBBY bauen (Zentrum 0 200 0) ===
fill -7 199 -7 7 199 7 minecraft:smooth_quartz
fill -7 200 -7 7 205 7 minecraft:air
fill -7 200 -7 -7 205 7 minecraft:glass
fill 7 200 -7 7 205 7 minecraft:glass
fill -7 200 -7 7 205 -7 minecraft:glass
fill -7 200 7 7 205 7 minecraft:glass
fill -7 206 -7 7 206 7 minecraft:glass
setblock 0 201 0 minecraft:sea_lantern
setblock 0 202 0 minecraft:beacon
setblock 0 201 4 minecraft:oak_sign{front_text:{messages:['{"text":"BroServer"}','{"text":"Bau-Wettbewerb"}','{"text":"Warte hier -"}','{"text":"Admin startet"}']}}
