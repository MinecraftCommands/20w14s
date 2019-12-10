# Either closes or implodes (if has been put in self)

# Remove open backpacks
clear @s command_block{20w14s:{opened:1b}}
kill @e[type=item,distance=..10,nbt={Item:{tag:{20w14s:{opened:1b}}}}]
tag @s remove 20w14s.has_backpack_open

# Identify my backpack minecart
scoreboard players operation id temp = @s 20w14s.id
execute as @e[type=chest_minecart,tag=20w14s.backpack_minecart] if score @s 20w14s.id = id temp run tag @s add 20w14s.my_backpack_minecart

# Implode if added to self, else close and give item back to player
scoreboard players set implode temp 0
execute store result score implode temp if data entity @e[type=chest_minecart,tag=20w14s.my_backpack_minecart,limit=1,sort=nearest] Items[{id:"minecraft:command_block",tag:{20w14s:{item_id:1,opened:1b}}}]
execute if score implode temp matches 0 run function 20w14s:items/backpack/close
execute if score implode temp matches 1 as @e[type=chest_minecart,tag=20w14s.my_backpack_minecart,limit=1,sort=nearest] at @s run function 20w14s:items/backpack/implode
