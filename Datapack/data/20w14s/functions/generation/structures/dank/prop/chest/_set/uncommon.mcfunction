#> 20w14s:generation/structures/dank/prop/chest/_set/uncommon

data modify block ~ ~ ~ LootTable set value "20w14s:chests/dank/uncommon"
data modify block ~ ~ ~ CustomName set value '{"text": "Uncommon ⭐⭐", "color": "dark_green"}'
execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:lime_concrete
