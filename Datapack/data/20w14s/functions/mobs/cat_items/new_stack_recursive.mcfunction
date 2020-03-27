data remove entity @s ArmorItems[-3]
data modify entity @s {} merge from storage 20w14s:cat_items Stack[-1]
data remove storage 20w14s:cat_items Stack[-1]
scoreboard players remove @e[type=cat,tag=20w14s.cat_items.stackPart] temp 1
tag @s remove 20w14s.cat_items.stackPart
execute as @e[type=cat,tag=20w14s.cat_items.stackPart,scores={temp=0},limit=1] if data storage 20w14s:cat_items Stack[-1] run function 20w14s:mobs/cat_items/new_stack_recursive