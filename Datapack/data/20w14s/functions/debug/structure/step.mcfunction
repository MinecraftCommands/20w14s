#> 20w14s:-user/generation/structures/step

scoreboard players set $20w14s.structure_throttle global 1

tellraw @a [{"text": "Forcing generation of a single structure.", "color": "aqua"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
