#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret/diamond_trap/w

setblock ~ ~1 ~ minecraft:diamond_ore
setblock ~ ~-1 ~ minecraft:piston_head[short=false,type=sticky,facing=east]

setblock ~-1 ~1 ~ minecraft:redstone_wall_torch[lit=true,facing=west]
setblock ~-1 ~-1 ~ minecraft:sticky_piston[extended=true,facing=east]

setblock ~-1 ~2 ~ minecraft:stone_brick_stairs[half=top,shape=straight,facing=east]
setblock ~-1 ~ ~ minecraft:stone_brick_stairs[half=bottom,shape=straight,facing=east]

# NOTE Observers are placed in a precise order that does not cause updates.
setblock ~-1 ~-2 ~ minecraft:observer[facing=up,powered=false]
setblock ~ ~-2 ~ minecraft:observer[facing=west,powered=false]

setblock ~1 ~-2 ~ minecraft:tnt
