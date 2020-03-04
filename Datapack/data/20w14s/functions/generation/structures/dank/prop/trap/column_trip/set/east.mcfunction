#> 20w14s:generation/structures/dank/prop/trap/column_trip/set/east

setblock ~ ~ ~ minecraft:air

fill ~ ~-1 ~-4 ~ ~1 ~-4 minecraft:tnt
setblock ~ ~2 ~-4 minecraft:tripwire_hook[facing=south,attached=true]

fill ~ ~-1 ~4 ~ ~1 ~4 minecraft:tnt
setblock ~ ~2 ~4 minecraft:tripwire_hook[facing=north,attached=true]

fill ~ ~-2 ~-3 ~ ~-2 ~3 minecraft:tnt replace #20w14s:structures/dank/usable

fill ~ ~2 ~-3 ~ ~2 ~3 minecraft:tripwire
