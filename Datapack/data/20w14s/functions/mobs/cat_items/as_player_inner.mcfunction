# check if current player is the cat's owner
data remove block 731031 0 731031 Items
loot insert 731031 0 731031 loot 20w14s:entity/player_head
execute store success score $isNotOwner temp run data modify block 731031 0 731031 Items[0].tag.SkullOwner.Id set from storage 20w14s:cat_items StoredCat.Owner


# if they are the owner of the tag, they are to be remembered for future generations.
execute if score $isNotOwner temp matches 0 run tag @s add 20w14s.catOwner

# if they are the owner and are holding nothing, the return value is 1
execute if score $isNotOwner temp matches 0 if predicate 20w14s:cat_items/hold_air run scoreboard players set $player_found temp 1

# if they are the owner and are holding a cat, the return value is 2 and the held cat is transferred into storage
execute if score $isNotOwner temp matches 0 if score $player_found temp matches 0 if predicate 20w14s:cat_items/hold_cat run function 20w14s:mobs/cat_items/store_stack_top