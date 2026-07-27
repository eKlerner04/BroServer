# === KLEINE INSEL bauen (relativ zur Ausfuehrungsposition) ===
# --- Barriere-Huelle (Void-sicher + Inselgrenze) ---
fill ~-10 ~-5 ~-10 ~10 ~-5 ~10 minecraft:barrier
fill ~-10 ~60 ~-10 ~10 ~60 ~10 minecraft:barrier
fill ~-10 ~-4 ~-10 ~-10 ~59 ~10 minecraft:barrier
fill ~10 ~-4 ~-10 ~10 ~59 ~10 minecraft:barrier
fill ~-10 ~-4 ~-10 ~10 ~59 ~-10 minecraft:barrier
fill ~-10 ~-4 ~10 ~10 ~59 ~10 minecraft:barrier
# --- Inneres leeren ---
fill ~-9 ~-4 ~-9 ~9 ~59 ~9 minecraft:air
# --- Terrain ---
fill ~-9 ~-4 ~-9 ~9 ~-3 ~9 minecraft:stone
fill ~-9 ~-2 ~-9 ~9 ~-1 ~9 minecraft:dirt
fill ~-9 ~0 ~-9 ~9 ~0 ~9 minecraft:grass_block
# --- Baum ---
setblock ~-6 ~1 ~-6 minecraft:oak_log[axis=y]
setblock ~-6 ~2 ~-6 minecraft:oak_log[axis=y]
setblock ~-6 ~3 ~-6 minecraft:oak_log[axis=y]
setblock ~-6 ~4 ~-6 minecraft:oak_log[axis=y]
setblock ~-8 ~4 ~-8 minecraft:oak_leaves[persistent=true] keep
setblock ~-8 ~4 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-8 ~4 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-8 ~4 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-8 ~4 ~-4 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~4 ~-8 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~4 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~4 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~4 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~4 ~-4 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~4 ~-8 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~4 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~4 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~4 ~-4 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~4 ~-8 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~4 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~4 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~4 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~4 ~-4 minecraft:oak_leaves[persistent=true] keep
setblock ~-4 ~4 ~-8 minecraft:oak_leaves[persistent=true] keep
setblock ~-4 ~4 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-4 ~4 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-4 ~4 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-4 ~4 ~-4 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~5 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~5 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-7 ~5 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~5 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~5 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~5 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~5 ~-7 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~5 ~-6 minecraft:oak_leaves[persistent=true] keep
setblock ~-5 ~5 ~-5 minecraft:oak_leaves[persistent=true] keep
setblock ~-6 ~6 ~-6 minecraft:oak_leaves[persistent=true] keep
# --- Kleiner Teich ---
fill ~5 ~0 ~-6 ~6 ~0 ~-5 minecraft:water
setblock ~3 ~1 ~-6 minecraft:crafting_table
setblock ~4 ~1 ~-6 minecraft:furnace[facing=south]
setblock ~-8 ~1 ~-8 minecraft:torch keep
setblock ~8 ~1 ~-8 minecraft:torch keep
setblock ~-8 ~1 ~8 minecraft:torch keep
setblock ~8 ~1 ~8 minecraft:torch keep
setblock ~0 ~1 ~0 minecraft:torch keep
# --- IDENTISCHE MATERIAL-TRUHEN (fuer alle gleich) ---
setblock ~-2 ~1 ~6 minecraft:chest[facing=north]{Items:[{Slot:0b,id:"minecraft:oak_planks",count:64},{Slot:1b,id:"minecraft:spruce_planks",count:64},{Slot:2b,id:"minecraft:birch_planks",count:64},{Slot:3b,id:"minecraft:dark_oak_planks",count:64},{Slot:4b,id:"minecraft:stone",count:64},{Slot:5b,id:"minecraft:cobblestone",count:64},{Slot:6b,id:"minecraft:stone_bricks",count:64},{Slot:7b,id:"minecraft:smooth_stone",count:64},{Slot:8b,id:"minecraft:bricks",count:64},{Slot:9b,id:"minecraft:sandstone",count:64},{Slot:10b,id:"minecraft:quartz_block",count:64},{Slot:11b,id:"minecraft:deepslate_bricks",count:64},{Slot:12b,id:"minecraft:white_wool",count:64},{Slot:13b,id:"minecraft:light_blue_wool",count:64},{Slot:14b,id:"minecraft:lime_wool",count:64},{Slot:15b,id:"minecraft:red_wool",count:64},{Slot:16b,id:"minecraft:white_concrete",count:64},{Slot:17b,id:"minecraft:gray_concrete",count:64},{Slot:18b,id:"minecraft:black_concrete",count:64},{Slot:19b,id:"minecraft:blue_concrete",count:64},{Slot:20b,id:"minecraft:glass",count:64},{Slot:21b,id:"minecraft:white_stained_glass",count:64},{Slot:22b,id:"minecraft:oak_log",count:64},{Slot:23b,id:"minecraft:spruce_log",count:64},{Slot:24b,id:"minecraft:terracotta",count:64},{Slot:25b,id:"minecraft:mossy_cobblestone",count:64},{Slot:26b,id:"minecraft:moss_block",count:32}]}
setblock ~0 ~1 ~6 minecraft:chest[facing=north]{Items:[{Slot:0b,id:"minecraft:oak_stairs",count:64},{Slot:1b,id:"minecraft:stone_brick_stairs",count:64},{Slot:2b,id:"minecraft:cobblestone_stairs",count:64},{Slot:3b,id:"minecraft:quartz_stairs",count:64},{Slot:4b,id:"minecraft:oak_slab",count:64},{Slot:5b,id:"minecraft:stone_brick_slab",count:64},{Slot:6b,id:"minecraft:smooth_stone_slab",count:64},{Slot:7b,id:"minecraft:oak_fence",count:64},{Slot:8b,id:"minecraft:oak_fence_gate",count:16},{Slot:9b,id:"minecraft:oak_door",count:16},{Slot:10b,id:"minecraft:oak_trapdoor",count:32},{Slot:11b,id:"minecraft:glass_pane",count:64},{Slot:12b,id:"minecraft:iron_bars",count:64},{Slot:13b,id:"minecraft:ladder",count:64},{Slot:14b,id:"minecraft:torch",count:64},{Slot:15b,id:"minecraft:lantern",count:32},{Slot:16b,id:"minecraft:glowstone",count:32},{Slot:17b,id:"minecraft:sea_lantern",count:16},{Slot:18b,id:"minecraft:iron_pickaxe",count:1},{Slot:19b,id:"minecraft:iron_axe",count:1},{Slot:20b,id:"minecraft:iron_shovel",count:1},{Slot:21b,id:"minecraft:shears",count:1},{Slot:22b,id:"minecraft:water_bucket",count:1},{Slot:23b,id:"minecraft:crafting_table",count:4},{Slot:24b,id:"minecraft:furnace",count:2},{Slot:25b,id:"minecraft:chest",count:8},{Slot:26b,id:"minecraft:bread",count:32}]}
setblock ~2 ~1 ~6 minecraft:chest[facing=north]{Items:[{Slot:0b,id:"minecraft:oak_leaves",count:64},{Slot:1b,id:"minecraft:azalea_leaves",count:32},{Slot:2b,id:"minecraft:flowering_azalea_leaves",count:16},{Slot:3b,id:"minecraft:poppy",count:32},{Slot:4b,id:"minecraft:dandelion",count:32},{Slot:5b,id:"minecraft:blue_orchid",count:16},{Slot:6b,id:"minecraft:cornflower",count:16},{Slot:7b,id:"minecraft:rose_bush",count:8},{Slot:8b,id:"minecraft:lilac",count:8},{Slot:9b,id:"minecraft:oak_sapling",count:16},{Slot:10b,id:"minecraft:spruce_sapling",count:16},{Slot:11b,id:"minecraft:grass_block",count:64},{Slot:12b,id:"minecraft:dirt",count:64},{Slot:13b,id:"minecraft:podzol",count:32},{Slot:14b,id:"minecraft:sand",count:64},{Slot:15b,id:"minecraft:gravel",count:32},{Slot:16b,id:"minecraft:flower_pot",count:8},{Slot:17b,id:"minecraft:bookshelf",count:16},{Slot:18b,id:"minecraft:painting",count:8},{Slot:19b,id:"minecraft:item_frame",count:8},{Slot:20b,id:"minecraft:white_bed",count:1},{Slot:21b,id:"minecraft:campfire",count:2},{Slot:22b,id:"minecraft:bell",count:1},{Slot:23b,id:"minecraft:hay_block",count:16},{Slot:24b,id:"minecraft:bamboo",count:32},{Slot:25b,id:"minecraft:vine",count:16},{Slot:26b,id:"minecraft:big_dripleaf",count:8}]}
setblock ~-2 ~2 ~6 minecraft:oak_sign[rotation=8]{front_text:{messages:['{"text":""}','{"text":"Bau-Bloecke"}','{"text":"1"}','{"text":""}']}}
setblock ~0 ~2 ~6 minecraft:oak_sign[rotation=8]{front_text:{messages:['{"text":""}','{"text":"Bau-Bloecke"}','{"text":"2 + Werkzeug"}','{"text":""}']}}
setblock ~2 ~2 ~6 minecraft:oak_sign[rotation=8]{front_text:{messages:['{"text":""}','{"text":"Deko &"}','{"text":"Pflanzen"}','{"text":""}']}}
setblock ~0 ~1 ~-2 minecraft:oak_sign{front_text:{messages:['{"text":"Deine Insel"}','{"text":"Bau das"}','{"text":"Schoenste!"}','{"text":"Viel Spass"}']}}
