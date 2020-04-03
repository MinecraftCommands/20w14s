scoreboard players set $found_valid_pentagram temp 0
execute positioned ~.5 ~ ~ run function 20w14s:mobs/skylinerw/summon/get_pentagram_size
execute unless score $found_valid_pentagram temp matches 1 positioned ~-.5 ~ ~ run function 20w14s:mobs/skylinerw/summon/get_pentagram_size
execute unless score $found_valid_pentagram temp matches 1 positioned ~ ~ ~.5 run function 20w14s:mobs/skylinerw/summon/get_pentagram_size
execute unless score $found_valid_pentagram temp matches 1 positioned ~ ~ ~-.5 run function 20w14s:mobs/skylinerw/summon/get_pentagram_size