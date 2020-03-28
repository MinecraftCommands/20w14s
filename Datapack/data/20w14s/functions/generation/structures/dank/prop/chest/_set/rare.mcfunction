#> 20w14s:generation/structures/dank/prop/chest/_set/rare

data modify block ~ ~ ~ LootTable set value "20w14s:chests/dank/rare"
data modify block ~ ~ ~ CustomName set value '{"text": "Rare ⭐⭐⭐", "color": "gold"}'
execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:yellow_concrete
