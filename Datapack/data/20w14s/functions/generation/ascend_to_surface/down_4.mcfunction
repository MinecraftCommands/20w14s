scoreboard players remove height temp 4
execute if block ~ ~-4 ~ #20w14s:descend_through positioned ~ ~-4 ~ run function 20w14s:generation/ascend_to_surface/down_4
execute unless block ~ ~-4 ~ #20w14s:descend_through run function 20w14s:generation/ascend_to_surface/down_1