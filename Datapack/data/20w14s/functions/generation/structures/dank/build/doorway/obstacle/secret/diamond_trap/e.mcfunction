#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret/diamond_trap/e

setblock ~ ~1 ~ minecraft:diamond_ore
setblock ~ ~-1 ~ minecraft:piston_head[short=false,type=sticky,facing=west]

setblock ~1 ~1 ~ minecraft:redstone_wall_torch[lit=true,facing=east]
setblock ~1 ~-1 ~ minecraft:sticky_piston[extended=true,facing=west]

setblock ~1 ~2 ~ minecraft:stone_brick_stairs[half=top,shape=straight,facing=west]
setblock ~1 ~ ~ minecraft:stone_brick_stairs[half=bottom,shape=straight,facing=west]

# NOTE Observers are placed in a precise order that does not cause updates.
setblock ~1 ~-2 ~ minecraft:observer[facing=up,powered=false]
setblock ~ ~-2 ~ minecraft:observer[facing=east,powered=false]

setblock ~-1 ~-2 ~ minecraft:tnt
