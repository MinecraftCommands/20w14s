#> Copies an item from the player's mainhand to a skulker box, then copies it pack to their mainhand

setblock 731031 0 731031 minecraft:air
setblock 731031 0 731031 yellow_shulker_box{Items:[{id:"minecraft:stick",Count:1b}]}
data modify block 731031 0 731031 Items[0] set from entity @s SelectedItem
loot replace entity @s weapon.offhand 1 mine 731031 0 731031 air{drop_contents:1b}