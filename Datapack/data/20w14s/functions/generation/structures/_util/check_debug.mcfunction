#> 20w14s:generation/structures/_util/check_debug

scoreboard players set $continue temp 1
execute if data storage 20w14s:generation/structures {debug: true} store success score $continue temp run clear @p minecraft:diamond 1
execute if data storage 20w14s:generation/structures {debug: true} if score $continue temp matches ..0 run scoreboard players set $continue temp -1
execute if data storage 20w14s:generation/structures {debug: true} if entity @p[nbt={ SelectedItem: { id: "minecraft:barrier" } }] run setblock ~ ~ ~ minecraft:purple_glazed_terracotta
execute if data storage 20w14s:generation/structures {debug: true} if entity @p[nbt={ SelectedItem: { id: "minecraft:barrier" } }] run scoreboard players set $continue temp -2
