scoreboard players operation $remaining_bones temp -= @s 20w14s.stack_c
execute store success score $finished temp if score $remaining_bones temp matches ..0
execute if score $finished temp matches 1 store result entity @s Item.Count byte 1 run scoreboard players operation $remaining_bones temp *= -1 const
execute unless score $finished temp matches 1 run kill @s
execute unless score $finished temp matches 1 as @e[type=item,tag=20w14s.item.bone,limit=1,sort=nearest,distance=..2] run function 20w14s:items/craftable_skeleton/convert/recursive