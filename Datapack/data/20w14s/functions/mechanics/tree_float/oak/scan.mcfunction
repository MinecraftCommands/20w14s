# Summon fallingsand
execute if block ~ ~ ~ oak_log run summon falling_block ~ ~ ~ {BlockState:{Name:"oak_log"},Time:1,Motion:[0.0,1.5,0.0]}
execute if block ~ ~ ~ oak_leaves run summon falling_block ~ ~ ~ {BlockState:{Name:"oak_leaves"},Time:1,Motion:[0.0,1.5,0.0]}
fill ~ ~ ~ ~ ~ ~ air replace #20w14s:oak_tree

# Scan surrounding blocks
execute positioned ~1 ~ ~ if block ~ ~ ~ #20w14s:oak_tree run function 20w14s:mechanics/tree_float/oak/scan
execute positioned ~ ~1 ~ if block ~ ~ ~ #20w14s:oak_tree run function 20w14s:mechanics/tree_float/oak/scan
execute positioned ~ ~ ~1 if block ~ ~ ~ #20w14s:oak_tree run function 20w14s:mechanics/tree_float/oak/scan
execute positioned ~-1 ~ ~ if block ~ ~ ~ #20w14s:oak_tree run function 20w14s:mechanics/tree_float/oak/scan
execute positioned ~ ~ ~-1 if block ~ ~ ~ #20w14s:oak_tree run function 20w14s:mechanics/tree_float/oak/scan