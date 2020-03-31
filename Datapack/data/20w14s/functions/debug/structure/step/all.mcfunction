#> 20w14s:-user/generation/structures/step/all

scoreboard players set $20w14s.structure_throttle global 999999999

tellraw @a [{"text": "Forcing generation of all structures.", "color": "aqua"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
