# Held item stuff
scoreboard players set item_id temp 0

execute if predicate 20w14s:holding_lens run function 20w14s:items/lens/holding
execute if predicate 20w14s:holding_backpack run function 20w14s:items/backpack/holding
execute if predicate 20w14s:holding_umbrella run function 20w14s:items/umbrella/holding
execute if predicate 20w14s:holding_sunblock run function 20w14s:items/sunblock/holding
execute if predicate 20w14s:holding_sekernite_tool run function 20w14s:items/sekernite/hold_tool

execute if score @s 20w14s.prev_held matches 1.. unless score item_id temp = @s 20w14s.prev_held run function 20w14s:items/stopped_holding_special_item
scoreboard players operation @s 20w14s.prev_held = item_id temp

# Equipped item stuff
tag @s remove 20w14s.in_glow_team
execute if predicate 20w14s:wearing_jetpack run function 20w14s:items/jetpack/wearing
execute if predicate 20w14s:wearing_miners_helmet run function 20w14s:items/miners_helmet/wearing
execute if predicate 20w14s:wearing_puffer_head run function 20w14s:items/puffer_head/wear
execute if predicate 20w14s:wearing_some_sekernite run function 20w14s:items/sekernite/wear_some
execute if predicate 20w14s:wearing_all_sekernite run function 20w14s:items/sekernite/wear_all
team leave @s[tag=!20w14s.in_glow_team]

# Right click detection
execute if score @s 20w14s.talk_vlgr matches 1.. run function 20w14s:player/talked_to_villager
execute if score @s 20w14s.use_coas matches 1.. run function 20w14s:player/used_carrot_on_a_stick

# Swap portal gun colors
execute if predicate 20w14s:portal_gun/in_offhand run function 20w14s:items/portal_gun/swap_color

# Obsidian boats
execute if score @s 20w14s.obsn_boat matches 1.. run function 20w14s:mechanics/obsidian_boat/placed

# Flying trees
execute if score @s 20w14s.chop_oak matches 1.. run function 20w14s:mechanics/tree_float/oak/chopped_log
execute if score @s 20w14s.chop_brch matches 1.. run function 20w14s:mechanics/tree_float/birch/chopped_log

# Used a villager spawn egg
execute if score @s 20w14s.lootbag matches 1.. run function 20w14s:player/loot_bag/check

# Convert airships
execute if score @s 20w14s.skyship matches 1.. run function 20w14s:mechanics/skyships/convert_to_skyship/as_player

# Kill emerald experience
execute if score @s 20w14s.mine_lead matches 1.. run function 20w14s:mechanics/mine_lead
