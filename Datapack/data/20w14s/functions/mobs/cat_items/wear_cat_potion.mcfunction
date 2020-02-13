data modify storage 20w14s:cat_items HeadItem set value {id:"minecraft:potion",Count:1b,Slot:0b,tag:{Potion:"thick"}}
data modify storage 20w14s:cat_items HeadItem.tag set from entity @s Inventory[{Slot:103b}].tag
data modify storage 20w14s:cat_items HeadItem.tag.CustomPotionColor set from storage 20w14s:cat_items HeadItem.tag.display.color
data remove block 731031 0 731031 Items
data modify block 731031 0 731031 Items append from storage 20w14s:cat_items HeadItem
loot replace entity @s armor.head 1 mine 731031 0 731031 air{drop_contents:1b}
tag @s remove 20w14s.wear_potion_helmet