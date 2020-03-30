#> 20w14s:generation/structures/_common/cancelled

data remove storage 20w14s:generation/structures cancel

tellraw @a [{"text": "All pending structures have been cancelled.", "color": "light_purple"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 2
