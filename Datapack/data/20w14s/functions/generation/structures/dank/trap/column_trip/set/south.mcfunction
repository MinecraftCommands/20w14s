#> 20w14s:generation/structures/dank/trap/column_trip/set/south

setblock ~ ~ ~ minecraft:air

fill ~4 ~-1 ~ ~4 ~1 ~ minecraft:tnt
setblock ~4 ~2 ~ minecraft:tripwire_hook[facing=west,attached=true]

fill ~-4 ~-1 ~ ~-4 ~1 ~ minecraft:tnt
setblock ~-4 ~2 ~ minecraft:tripwire_hook[facing=east,attached=true]

fill ~3 ~-2 ~ ~-3 ~-2 ~ minecraft:tnt replace #20w14s:structures/dank/usable

fill ~3 ~2 ~ ~-3 ~2 ~ minecraft:tripwire
