# Reverse motion in direction of wall
execute unless block ~-0.5 ~ ~ #20w14s:no_hitbox store result entity @s Motion[0] double 0.0000305175781 run data get entity @s Motion[0] -32768
execute unless block ~0.5 ~ ~ #20w14s:no_hitbox store result entity @s Motion[0] double 0.0000305175781 run data get entity @s Motion[0] -32768
execute unless block ~ ~-0.5 ~ #20w14s:no_hitbox store result entity @s Motion[1] double 0.0000305175781 run data get entity @s Motion[1] -32768
execute unless block ~ ~0.5 ~ #20w14s:no_hitbox store result entity @s Motion[1] double 0.0000305175781 run data get entity @s Motion[1] -32768
execute unless block ~ ~ ~-0.5 #20w14s:no_hitbox store result entity @s Motion[2] double 0.0000305175781 run data get entity @s Motion[2] -32768
execute unless block ~ ~ ~0.5 #20w14s:no_hitbox store result entity @s Motion[2] double 0.0000305175781 run data get entity @s Motion[2] -32768
data modify entity @s inGround set value 0b

# Add to bounce count, turn into item if over max
scoreboard players add @s 20w14s.bounce 1
execute if score @s 20w14s.bounce matches 10.. run function 20w14s:mechanics/bouncy_arrow/die

