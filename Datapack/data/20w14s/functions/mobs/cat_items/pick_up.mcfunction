execute store result score $CatType temp run data get entity @s CatType
execute store result score $age temp run data get entity @s Age
execute if score $age temp matches ..-1 run scoreboard players add $CatType temp 11
data modify storage 20w14s:cat_items ResultItem set value {id:"minecraft:leather_helmet",Count:1b,Slot:0b,tag:{Unbreakable:1b,HideFlags:63,20w14s:{custom:1b,cat_item:1b},display:{Lore:['{"text":"Drop to deploy","color":"gray","italic":"false"}','{"text":"Use on another cat to stack","color":"gray","italic":"false"}','{"text":"Equippable","color":"gray","italic":"false"}']}}}
execute store result storage 20w14s:cat_items ResultItem.tag.CustomModelData int 1 run scoreboard players add $CatType temp 10
data modify storage 20w14s:cat_items ResultItem.tag.20w14s.StoredCat set from entity @s {}
data remove storage 20w14s:cat_items ResultItem.tag.20w14s.StoredCat.Passengers
data remove storage 20w14s:cat_items ResultItem.tag.20w14s.StoredCat.Pos
data remove storage 20w14s:cat_items ResultItem.tag.20w14s.StoredCat.Sitting
tag @s add 20w14s.executingCat
setblock 731031 0 731030 oak_sign
data modify block 731031 0 731030 Text1 set value '{"italic": false,"selector":"@e[type=cat,limit=1,tag=20w14s.executingCat]"}'
tag @s remove 20w14s.executingCat
data modify storage 20w14s:cat_items ResultItem.tag.display.Name set from block 731031 0 731030 Text1
function 20w14s:mobs/cat_items/collar_to_hex
execute store result storage 20w14s:cat_items ResultItem.tag.display.color int 1 run scoreboard players get $color temp
data remove block 731031 0 731031 Items
data modify block 731031 0 731031 Items append from storage 20w14s:cat_items ResultItem
execute at @s run loot replace entity @a[tag=20w14s.catOwner,limit=1,distance=..6] weapon.mainhand mine 731031 0 731031 air{drop_contents:1b}
particle poof ~ ~.3 ~ 0.25 0.25 0.25 .1 20
data merge entity @s {Health:0f,DeathTime:19s}