scoreboard players set @s 20w14s.chop_oak 0

# Start scanning tree, transforming all logs/leaves
execute at @e[type=item,nbt={PickupDelay:10s,Item:{id:"minecraft:oak_log"}},distance=..9,limit=1,sort=nearest] align xyz positioned ~0.5 ~1.5 ~0.5 if block ~ ~ ~ #20w14s:oak_tree run function 20w14s:mechanics/tree_float/oak/scan