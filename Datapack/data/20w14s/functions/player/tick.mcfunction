# Held item stuff
# TODO: Replace with predicates?
execute store result score item_id temp run data get entity @s SelectedItem.tag.20w14s.item_id
execute if score item_id temp matches 1.. run function 20w14s:items/holding_special_item
execute if score item_id temp matches ..0 if score @s 20w14s.prev_held matches 1.. run function 20w14s:items/stopped_holding_special_item
scoreboard players operation @s 20w14s.prev_held = item_id temp

# Equipped item stuff
execute if predicate 20w14s:wearing_jetpack run function 20w14s:items/jetpack/wearing
execute if predicate 20w14s:wearing_sekernite
execute if predicate 20w14s:wearing_pufferfish

# Right click detection
execute if score @s 20w14s.talk_vlgr matches 1.. run function 20w14s:player/talked_to_villager
execute if score @s 20w14s.use_coas matches 1.. run function 20w14s:player/used_carrot_on_a_stick

# Obsidian boats
execute if score @s 20w14s.obsn_boat matches 1.. run function 20w14s:mechanics/obsidian_boat/placed

# Flying trees
execute if score @s 20w14s.chop_oak matches 1.. run function 20w14s:mechanics/tree_float/oak/chopped_log
execute if score @s 20w14s.chop_brch matches 1.. run function 20w14s:mechanics/tree_float/birch/chopped_log

# Kill emerald experience
execute if score @s 20w14s.mine_lead matches 1.. run function 20w14s:mechanics/mine_lead

# Swap portal gun colors
execute if predicate 20w14s:portal_gun/in_offhand run function 20w14s:items/portal_gun/swap_color

# used a loot bag
execute if score @s 20w14s.lootbag matches 1.. run function 20w14s:player/used_loot_bag

# Convert airships
execute if score @s 20w14s.skyship matches 1.. run function 20w14s:mechanics/skyships/convert_to_skyship/as_player
