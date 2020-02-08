execute store result score $CatType temp run data get storage 20w14s:cat_items StoredCat.CatType
data modify storage 20w14s:cat_items ResultItem set value {id:"minecraft:leather_helmet",Count:1b,Slot:0b}
execute store result storage 20w14s:cat_items ResultItem.tag.CustomModelData int 1 run scoreboard players add $CatType temp 10
data remove block 731031 0 731031 Items
data modify block 731031 0 731031 Items append from storage 20w14s:cat_items ResultItem
execute at @s run loot replace entity @a[tag=20w14s.catOwner,limit=1,distance=..6] weapon.mainhand mine 731031 0 731031 air{drop_contents:1b}
execute at @s positioned ~ ~.665 ~ as @e[distance=..0.000001] at @s run tp @s ~ ~ ~ ~ ~
kill @s
tp @s ~ -4 ~
