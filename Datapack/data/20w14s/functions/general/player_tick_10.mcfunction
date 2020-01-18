# If there's an item selected, and it doesn't already have an ID, apply id (for fast detection in player_tick in future)
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.20w14s.item_id run function 20w14s:items/new_item

# Clicked trigger
execute if entity @s[scores={20w14s.lnch_rokt=1..}] run function 20w14s:mechanics/rocket/try_launch