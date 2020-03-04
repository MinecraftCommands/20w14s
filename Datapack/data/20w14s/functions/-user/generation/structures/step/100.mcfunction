#> 20w14s:-user/generation/structures/step/100

scoreboard players set $20w14s.structure_throttle global 100

tellraw @a [{"text": "Forcing generation of 100 structures.", "color": "aqua"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
