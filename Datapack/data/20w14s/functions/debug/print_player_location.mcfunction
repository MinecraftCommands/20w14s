execute store result score x temp run data get entity @p Pos[0] 100
execute store result score y temp run data get entity @p Pos[1] 100
execute store result score z temp run data get entity @p Pos[2] 100
execute store result score rx temp run data get entity @p Rotation[0] 100
execute store result score ry temp run data get entity @p Rotation[1] 100

tellraw @a [{"score":{"name":"20w14s.end_boss_tick","objective":"global"}},"\t",{"score":{"name":"x","objective":"temp"}},"x, ",{"score":{"name":"y","objective":"temp"}},"y, ",{"score":{"name":"z","objective":"temp"}},"z, ",{"score":{"name":"rx","objective":"temp"}},"rx, ",{"score":{"name":"ry","objective":"temp"}},"ry, "]

schedule function 20w14s:debug/print_player_location 3t