scoreboard players operation #puff_arrow.current 20w14s.id = @s 20w14s.id
scoreboard players reset #puff_arrow.found 20w14s.id
execute as @e[distance=..10,type=arrow,tag=20w14s.puff_arrow] if score @s 20w14s.id = #puff_arrow.current 20w14s.id run scoreboard players operation #puff_arrow.found 20w14s.id = 1 const
particle falling_dust yellow_terracotta ~ ~ ~ 0.0125 0.0125 0.0125 0 1 normal @a
particle bubble ~ ~ ~
particle bubble_pop ~ ~ ~
execute if block ~ ~ ~ water run function 20w14s:mechanics/pufferfish_arrow/hit/tile
execute unless score #puff_arrow.found 20w14s.id matches 1 run function 20w14s:mechanics/pufferfish_arrow/hit/entity
execute if entity @e[distance=..0.0001,type=arrow,tag=20w14s.puff_arrow,predicate=20w14s:in_ground_true,limit=1] run function 20w14s:mechanics/pufferfish_arrow/hit/tile