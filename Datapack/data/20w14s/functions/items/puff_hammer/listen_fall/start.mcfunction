advancement revoke @s only 20w14s:puff_hammer/hit_by_player
scoreboard players set @s 20w14s.pffhmr.fl 0
tag @s add 20w14s.puff_hammer.falling
schedule function 20w14s:items/puff_hammer/listen_fall/loop 10t append