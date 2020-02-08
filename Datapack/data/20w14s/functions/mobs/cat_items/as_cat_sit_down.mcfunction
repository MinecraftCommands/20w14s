scoreboard players set $player_found temp 0
execute store succes score $passenger_number temp if data entity @s Passengers
data modify storage 20w14s:cat_items StoredCat set from entity @s {}
tag @a[distance=..6] remove 20w14s.catOwner
execute at @s anchored eyes as @a[distance=..6] facing entity @s eyes positioned as @s positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1] run function 20w14s:mobs/cat_items/as_player_outer

# if the cat isn't being picked up or stacked on, it just remains sitting.
execute if score $player_found temp matches 0 run tag @s add 20w14s.sittingPermanent

# if the player has an empty hand and no cat in the offhand, the cat is being picked up.
execute if score $player_found temp matches 1 run function 20w14s:cat_items/pick_up

# if the player is holding a cat, the cat is being stacked on.
execute if score $player_found temp matches 2 run function 20w14s:cat_items/stack_on
