# For a copying a bunch of block coords from game log
# Intended usage:
# /fill -10 0 -10 10 20 10 command_block{auto:1b,Command:"function 20w14s:debug/print_coords_from_command_block"} replace purpur_block

tellraw @a ["BLOCK COORDS: ",{"nbt":"x","block":"~ ~ ~"}," ",{"nbt":"y","block":"~ ~ ~"}," ",{"nbt":"z","block":"~ ~ ~"}]