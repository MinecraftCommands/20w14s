# Get positions
execute store result score $x1 temp run data get entity @s Pos[0]
execute store result score $z1 temp run data get entity @s Pos[2]
execute store result score $x2 temp run data get entity @s Leash.X
execute store result score $z2 temp run data get entity @s Leash.Z

# Get differences
scoreboard players operation $x1 temp -= $x2 temp
scoreboard players operation $z1 temp -= $z2 temp

# Square values
scoreboard players operation $x1 temp *= $x1 temp
scoreboard players operation $z1 temp *= $z1 temp

# Get sum
scoreboard players operation $x1 temp += $z1 temp

# Get value to compare to (squared pentagram diameter)
scoreboard players operation $compare temp = $pentagram_size temp
scoreboard players operation $compare temp *= 2 const
scoreboard players remove $compare temp 1
scoreboard players operation $compare temp *= $compare temp

# If measured distance is greater than or equal to diameter, test passes
execute if score $x1 temp >= $compare temp run scoreboard players add $line_count temp 1