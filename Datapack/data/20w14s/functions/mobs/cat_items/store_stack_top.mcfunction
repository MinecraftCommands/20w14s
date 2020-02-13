# set return value to 2
scoreboard players set $player_found temp 2


# test which hand holds the cat
execute store success score $mainhand temp if predicate 20w14s:cat_items/cat_item_mainhand
# copy and clear mainhand
execute if score $mainhand temp matches 1 run data modify storage 20w14s:cat_items StackTop set from entity @s SelectedItem.tag.20w14s.StoredCat
# copy and clear offhand
execute if score $mainhand temp matches 0 run data modify storage 20w14s:cat_items StackTop set from entity @s Inventory[{Slot:-106b}].tag.20w14s.StoredCat

data remove storage 20w14s:cat_items StackTop.Passengers