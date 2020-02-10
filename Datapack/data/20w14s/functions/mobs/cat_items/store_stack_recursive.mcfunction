scoreboard players operation @s temp = $stack_size temp
scoreboard players remove @s temp 1
scoreboard players add $stack_size temp 1
data modify storage 20w14s:cat_items Stack prepend from entity @s {}
data remove storage 20w14s:cat_items Stack[-1].Passengers
tag @s add 20w14s.cat_items.stackPart
execute if score $stack_size temp matches ..20 positioned ~ ~0.665 ~ as @e[type=cat,limit=1,distance=..0.0001] at @s run function 20w14s:mobs/cat_items/store_stack_recursive