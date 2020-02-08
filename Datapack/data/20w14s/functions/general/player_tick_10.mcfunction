# If there's an item selected, and it doesn't already have an ID, apply id (for fast detection in player_tick in future)
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.20w14s.item_id run function 20w14s:items/new_item

# Clicked trigger
execute if entity @s[scores={20w14s.lnch_rokt=1..}] run function 20w14s:mechanics/rocket/try_launch

# In void
execute if entity @s[y=-4,dy=-255] run function 20w14s:mechanics/void_save/save_from_void

# Force generation if player has outran chunk generation. Most generation should be done in advance by tick_100
execute if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align