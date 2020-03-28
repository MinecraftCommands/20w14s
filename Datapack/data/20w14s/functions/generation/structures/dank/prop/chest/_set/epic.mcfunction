#> 20w14s:generation/structures/dank/prop/chest/_set/epic

data modify block ~ ~ ~ LootTable set value "20w14s:chests/dank/epic"
data modify block ~ ~ ~ CustomName set value '{"text": "Epic ⭐⭐⭐⭐", "color": "dark_aqua"}'
execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:light_blue_concrete
