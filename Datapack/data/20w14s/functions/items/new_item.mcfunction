# Adds NBT to crafted items, sets 20w14s.item_id for use in player_tick

# Copy string ID to storage for fast comparison
data modify storage 20w14s: temp_item_name set from entity @s SelectedItem.id
scoreboard players set item_id temp -1

execute if data storage 20w14s: {temp_item_name:"minecraft:command_block"} run scoreboard players set item_id temp 1
execute if data storage 20w14s: {temp_item_name:"minecraft:globe_banner_pattern"} run function 20w14s:items/diamond_axe/initiate

# Modify item
setblock 731031 0 731031 air
setblock 731031 0 731031 yellow_shulker_box{Items:[{id:"minecraft:stick",Count:1}]}
data modify block 731031 0 731031 Items[0] set from entity @s SelectedItem
execute store result block 731031 0 731031 Items[0].tag.20w14s.item_id int 1 run scoreboard players get item_id temp
loot replace entity @s weapon.mainhand 1 mine 731031 0 731031 air{drop_contents:1b}
