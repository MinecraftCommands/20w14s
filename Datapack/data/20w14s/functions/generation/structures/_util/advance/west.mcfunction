#> 20w14s:generation/structures/_util/advance/west

# east-to-west
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "CLOCKWISE_180" }
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players operation $offset_x temp *= $-1 temp
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players operation $offset_z temp *= $-1 temp

# south-to-west
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "CLOCKWISE_90" }
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players operation $offset_x temp >< $offset_z temp
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players operation $offset_x temp *= $-1 temp

# already west
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "NONE" }

# north-to-west
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "COUNTERCLOCKWISE_90" }
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run scoreboard players operation $offset_x temp >< $offset_z temp
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run scoreboard players operation $offset_z temp *= $-1 temp

scoreboard players remove $offset_x temp 1
