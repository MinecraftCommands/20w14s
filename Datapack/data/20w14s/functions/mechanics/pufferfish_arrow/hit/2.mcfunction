#Second step for preparing the arrow; copies arrow data, sets IDs
scoreboard players add #puff_arrow.max 20w14s.id 1
scoreboard players operation @s 20w14s.id = #puff_arrow.max 20w14s.id
scoreboard players operation @e[limit=1,distance=..0.0001,type=area_effect_cloud,tag=new] 20w14s.id = #puff_arrow.max 20w14s.id
data modify storage 20w14s: sprunkles.arrow set from entity @e[limit=1,type=arrow,distance=0,tag=old]
data remove storage 20w14s: sprunkles.arrow.life
data remove storage 20w14s: sprunkles.arrow.SoundEvent
data remove storage 20w14s: sprunkles.arrow.pickup
data remove storage 20w14s: sprunkles.arrow.Color
data remove storage 20w14s: sprunkles.arrow.Tags
data modify storage 20w14s: sprunkles.arrow.damage set value 0.1
data modify entity @s {} merge from storage 20w14s: sprunkles.arrow
data remove storage 20w14s: sprunkles.arrow
tag @e[limit=1,distance=..0.0001,type=area_effect_cloud,tag=new] remove new
tag @s remove new