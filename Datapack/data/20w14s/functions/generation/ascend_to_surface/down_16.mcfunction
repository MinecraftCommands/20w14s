scoreboard players remove height temp 16
execute if block ~ ~-16 ~ #20w14s:descend_through positioned ~ ~-16 ~ run function 20w14s:generation/ascend_to_surface/down_16
execute unless block ~ ~-16 ~ #20w14s:descend_through run function 20w14s:generation/ascend_to_surface/down_4