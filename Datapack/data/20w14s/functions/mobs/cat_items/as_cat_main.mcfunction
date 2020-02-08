execute store success score $sitting temp if data entity @s {Sitting:1b} 
execute if score $sitting temp matches 1 if entity @s[tag=20w14s.sitting,tag=!20w14s.sittingPermanent] run function 20w14s:mobs/cat_items/as_cat_sit_down
execute if score $sitting temp matches 0 run tag @s remove 20w14s.sittingPermanent
