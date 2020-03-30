#> 20w14s:-user/generation/structures/step/reset

scoreboard players set $20w14s.structure_throttle global 0

tellraw @a [{"text": "Halting forced structure generation.", "color": "aqua"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
