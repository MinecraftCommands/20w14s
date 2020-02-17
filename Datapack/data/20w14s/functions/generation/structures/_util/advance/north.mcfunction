#> 20w14s:generation/structures/_util/advance/north

# east-to-north
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "COUNTERCLOCKWISE_90" }
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players operation $offset_x temp >< $offset_z temp
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players operation $offset_z temp *= $-1 temp

# south-to-north
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "CLOCKWISE_180" }
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players operation $offset_z temp *= $-1 temp
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players operation $offset_x temp *= $-1 temp

# west-to-north
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "CLOCKWISE_90" }
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run scoreboard players operation $offset_x temp >< $offset_z temp
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run scoreboard players operation $offset_x temp *= $-1 temp

# already north
execute if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "NONE" }

scoreboard players remove $offset_z temp 1
