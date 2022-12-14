#> 20w14s:-user/generation/structures/debug

execute store success storage 20w14s:generation/structures debug byte 1.0 if data storage 20w14s:generation/structures {debug: false}

execute if data storage 20w14s:generation/structures {debug: true} run tellraw @s [{"text": "Structure debugging enabled.", "color": "green"}]
execute if data storage 20w14s:generation/structures {debug: true} run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
execute if data storage 20w14s:generation/structures {debug: true} run scoreboard players set $20w14s.structure_throttle global 0

execute unless data storage 20w14s:generation/structures {debug: true} run tellraw @s [{"text": "Structure debugging disabled.", "color": "red"}]
execute unless data storage 20w14s:generation/structures {debug: true} run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
