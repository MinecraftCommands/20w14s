# Get positions
execute store result score $x1 temp run data get entity @s Pos[0]
execute store result score $z1 temp run data get entity @s Pos[2]
data modify storage 20w14s:temp sheepPos set from entity @e[type=sheep,distance=..9,sort=nearest,limit=1] Pos
execute store result score $x2 temp run data get storage 20w14s:temp sheepPos[0]
execute store result score $z2 temp run data get storage 20w14s:temp sheepPos[2]

# Get differences
scoreboard players operation $x1 temp -= $x2 temp
scoreboard players operation $z1 temp -= $z2 temp

# Square values
scoreboard players operation $x1 temp *= $x1 temp
scoreboard players operation $z1 temp *= $z1 temp

# Get sum
scoreboard players operation $x1 temp += $z1 temp

# Get square root through small table
execute if score $x1 temp matches 4..8 run scoreboard players set $pentagram_size temp 2
execute if score $x1 temp matches 9..15 run scoreboard players set $pentagram_size temp 3
execute if score $x1 temp matches 16..24 run scoreboard players set $pentagram_size temp 4
execute if score $x1 temp matches 25..35 run scoreboard players set $pentagram_size temp 5
execute if score $x1 temp matches 36..48 run scoreboard players set $pentagram_size temp 6
execute if score $x1 temp matches 49..63 run scoreboard players set $pentagram_size temp 7
execute if score $x1 temp matches 64..80 run scoreboard players set $pentagram_size temp 8
execute if score $x1 temp matches 81.. run scoreboard players set $pentagram_size temp 9

# Start counting
execute facing entity @e[type=sheep,distance=..9,sort=nearest,limit=1] feet rotated ~ 0 run function 20w14s:mobs/skylinerw/summon/count/check_range
