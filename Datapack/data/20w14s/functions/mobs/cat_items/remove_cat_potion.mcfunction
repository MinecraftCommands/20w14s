execute store result score $mainhand temp if predicate 20w14s:cat_items/cat_potion_mainhand
execute if score $mainhand temp matches 1 run data modify storage 20w14s:cat_items Item set from entity @s SelectedItem
execute if score $mainhand temp matches 0 run data modify storage 20w14s:cat_items Item set from entity @s SelectedItem
data modify storage 20w14s:cat_items Item.Slot set value 0b
data modify storage 20w14s:cat_items Item.id set value "minecraft:leather_helmet"
data remove block 731031 0 731031 Items
data modify block 731031 0 731031 Items append from storage 20w14s:cat_items Item
execute if score $mainhand temp matches 1 run loot replace entity @s weapon.mainhand 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score $mainhand temp matches 0 run loot replace entity @s weapon.offhand 1 mine 731031 0 731031 air{drop_contents:1b}