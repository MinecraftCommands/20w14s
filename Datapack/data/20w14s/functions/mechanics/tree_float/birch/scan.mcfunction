# Summon fallingsand
execute if block ~ ~ ~ birch_log run summon falling_block ~ ~ ~ {BlockState:{Name:"birch_log"},Time:1,Motion:[0.0,1.5,0.0]}
execute if block ~ ~ ~ birch_leaves run summon falling_block ~ ~ ~ {BlockState:{Name:"birch_leaves"},Time:1,Motion:[0.0,1.5,0.0]}
fill ~ ~ ~ ~ ~ ~ air replace #20w14s:birch_tree

# Scan surrounding blocks
execute positioned ~1 ~ ~ if block ~ ~ ~ #20w14s:birch_tree run function 20w14s:mechanics/tree_float/birch/scan
execute positioned ~ ~1 ~ if block ~ ~ ~ #20w14s:birch_tree run function 20w14s:mechanics/tree_float/birch/scan
execute positioned ~ ~ ~1 if block ~ ~ ~ #20w14s:birch_tree run function 20w14s:mechanics/tree_float/birch/scan
execute positioned ~-1 ~ ~ if block ~ ~ ~ #20w14s:birch_tree run function 20w14s:mechanics/tree_float/birch/scan
execute positioned ~ ~ ~-1 if block ~ ~ ~ #20w14s:birch_tree run function 20w14s:mechanics/tree_float/birch/scan