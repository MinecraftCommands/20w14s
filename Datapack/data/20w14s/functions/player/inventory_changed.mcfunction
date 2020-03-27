tag @s add 20w14s.inventory_changed
advancement revoke @s only 20w14s:inventory_changed

# Change cat helmet to cat potion
execute if predicate 20w14s:cat_items/wear_cat_helmet run function 20w14s:mobs/cat_items/schedule_wear_cat_potion