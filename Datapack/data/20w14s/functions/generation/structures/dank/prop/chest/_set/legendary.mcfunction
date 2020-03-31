#> 20w14s:generation/structures/dank/prop/chest/_set/legendary

data modify block ~ ~ ~ LootTable set value "20w14s:chests/dank/legendary"
data modify block ~ ~ ~ CustomName set value '{"text": "Legendary ⭐⭐⭐⭐⭐", "color": "dark_purple", "bold": true}'
execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:magenta_concrete
