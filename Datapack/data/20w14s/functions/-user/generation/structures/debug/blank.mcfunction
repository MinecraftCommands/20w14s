#> 20w14s:-user/generation/structures/debug/blank

execute if data storage 20w14s:generation/structures {debug: true} run data modify storage 20w14s:generation/structures/_util/debug temp.blank set value true

execute unless data storage 20w14s:generation/structures {debug: true} run tellraw @s [{"text": "Structure debugging is not currently enabled.", "color": "red"}]
execute unless data storage 20w14s:generation/structures {debug: true} run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
