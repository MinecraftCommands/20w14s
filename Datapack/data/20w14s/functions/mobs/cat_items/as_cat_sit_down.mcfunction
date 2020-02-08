scoreboard players set $player_found temp 0
execute store succes score $passenger_number temp if data entity @s Passengers
data modify storage 20w14s:cat_items StoredCat set from entity @s {}
execute at @s anchored eyes as @a[distance=..6] facing entity @s eyes positioned as @s positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1] run function 20w14s:mobs/cat_items/as_player_outer
execute if score $player_found temp matches 0 run tag @s add 20w14s.sittingPermanent
