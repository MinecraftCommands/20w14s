# If there's an item selected, and it doesn't already have an ID, apply id (for fast detection in player_tick in future)
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.20w14s.item_id run function 20w14s:items/new_item

# Clicked trigger
execute if entity @s[scores={20w14s.lnch_rokt=1..}] run function 20w14s:mechanics/rocket/try_launch

# Force generation if player has outran chunk generation. Most generation should be done in advance by tick_100
execute if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align

# replace cat potions potions in off hand or main hand with cat helmets to prevent drinking cats
execute if predicate 20w14s:cat_items/hold_cat_potion run function 20w14s:mobs/cat_items/remove_cat_potion