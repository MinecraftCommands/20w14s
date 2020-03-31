# Reset scores
scoreboard players set $sheep_number temp 0
scoreboard players set $item_number temp 0

# Set scores
execute store result score $lead_number temp if entity @e[type=leash_knot,distance=..9,limit=5]
execute if score $lead_number temp matches 5 store result score $sheep_number temp if entity @e[type=sheep,distance=..9,limit=5]
execute if score $sheep_number temp matches 5 store result score $item_number temp if entity @e[type=item,distance=..9,limit=2,nbt={Item:{id:"minecraft:minecart"}}]

execute if score $item_number temp matches 2 align xyz positioned ~.5 ~ ~.5 run function 20w14s:mobs/skylinerw/summon/try_locations