# If there's an item selected, and it doesn't already have an ID, apply id (for fast detection in player tick in future)
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.20w14s.item_id run function 20w14s:items/new_item

# Clicked trigger
execute if entity @s[scores={20w14s.lnch_rokt=1..}] run function 20w14s:mechanics/rocket/try_launch

# In void
execute if entity @s[y=-12,dy=-255,gamemode=!spectator] run function 20w14s:mechanics/void_save/save_from_void

# Force generation if player has outran chunk generation. Most generation should be done in advance by tick_100
execute if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align

# Replace cat potions potions in off hand or main hand with cat helmets to prevent drinking cats
execute if predicate 20w14s:cat_items/hold_cat_potion run function 20w14s:mobs/cat_items/remove_cat_potion

# Handle relogging and respawning
execute if score @s 20w14s.dead_time matches 1..10 run function 20w14s:player/respawn
execute if score @s 20w14s.quit_game matches 1.. run function 20w14s:player/relog