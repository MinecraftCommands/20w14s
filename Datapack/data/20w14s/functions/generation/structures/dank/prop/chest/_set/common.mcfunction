#> 20w14s:generation/structures/dank/prop/chest/_set/common

data modify block ~ ~ ~ LootTable set value "20w14s:chests/dank/common"
data modify block ~ ~ ~ CustomName set value '{"text": "Common ⭐", "color": "dark_gray"}'
execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:white_concrete
