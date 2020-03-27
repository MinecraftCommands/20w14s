summon cat ~ ~ ~ {Tags:["20w14s.tempSpawn"]}
data modify entity @e[type=cat,limit=1,distance=..0.01,tag=20w14s.tempSpawn] {} merge from entity @s Item.tag.20w14s.StoredCat
tag @e[type=cat,limit=1,distance=..0.01,tag=20w14s.tempSpawn] remove 20w14s.tempSpawn
kill @s