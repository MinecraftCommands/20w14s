# Held item stuff
# TODO: Replace with predicates?
execute store result score item_id temp run data get entity @s SelectedItem.tag.20w14s.item_id
execute if score item_id temp matches 1.. run function 20w14s:items/holding_special_item
execute if score item_id temp matches ..0 if score @s 20w14s.prev_held matches 1.. run function 20w14s:items/stopped_holding_special_item
scoreboard players operation @s 20w14s.prev_held = item_id temp

# Right click detection
execute if score @s 20w14s.talk_vlgr matches 1.. run function 20w14s:general/player_talked_to_villager
execute if score @s 20w14s.use_coas matches 1.. run function 20w14s:general/player_used_carrot_on_a_stick

# Obsidian boats
execute if score @s 20w14s.obsn_boat matches 1.. run function 20w14s:mechanics/obsidian_boat/placed

# Flying trees
execute if score @s 20w14s.chop_oak matches 1.. run function 20w14s:mechanics/tree_float/oak/chopped_log
execute if score @s 20w14s.chop_brch matches 1.. run function 20w14s:mechanics/tree_float/birch/chopped_log