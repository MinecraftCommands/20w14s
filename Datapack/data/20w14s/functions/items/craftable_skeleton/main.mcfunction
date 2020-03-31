scoreboard players reset * 20w14s.nearby_c
execute as @e[type=item,tag=20w14s.item.bone] at @s run function 20w14s:items/craftable_skeleton/update_scores
scoreboard players set $spawned_egg temp 0
execute as @e[type=item,tag=20w14s.item.bone,scores={20w14s.nearby_c=206..},limit=1] at @s run function 20w14s:items/craftable_skeleton/convert/main
execute if score $spawned_egg temp matches 1 run function 20w14s:items/craftable_skeleton/main