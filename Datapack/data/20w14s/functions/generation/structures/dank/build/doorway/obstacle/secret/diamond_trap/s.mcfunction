#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret/diamond_trap/s

setblock ~ ~1 ~ minecraft:diamond_ore
setblock ~ ~-1 ~ minecraft:piston_head[short=false,type=sticky,facing=north]

setblock ~ ~1 ~1 minecraft:redstone_wall_torch[lit=true,facing=south]
setblock ~ ~-1 ~1 minecraft:sticky_piston[extended=true,facing=north]

setblock ~ ~2 ~1 minecraft:stone_brick_stairs[half=top,shape=straight,facing=north]
setblock ~ ~ ~1 minecraft:stone_brick_stairs[half=bottom,shape=straight,facing=north]

# NOTE Observers are placed in a precise order that does not cause updates.
setblock ~ ~-2 ~1 minecraft:observer[facing=up,powered=false]
setblock ~ ~-2 ~ minecraft:observer[facing=south,powered=false]

setblock ~ ~-2 ~-1 minecraft:tnt
