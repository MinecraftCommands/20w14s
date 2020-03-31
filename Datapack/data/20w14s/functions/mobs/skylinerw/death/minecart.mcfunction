scoreboard players remove 20w14s.skylinerw_num global 1
tp @e[type=slime,tag=20w14s.skylinerw.slime,nbt={AbsorptionAmount:0.0f}] ~ -1000 ~
kill @e[type=endermite,tag=20w14s.skylinerw.endermite,nbt={Passengers:[{id:"minecraft:minecart",Tags:["20w14s.skylinerw.minecart"],Passengers:[{id:"minecraft:slime",Tags:["20w14s.skylinerw.slime"],AbsorptionAmount:0.0f}]}]}]
kill @s
playsound minecraft:entity.sheep.death hostile @a ~ ~ ~ 10 0.5
scoreboard players set $success temp 0
function 20w14s:mobs/skylinerw/death/permission_attempt
execute unless score $success temp matches 1 run loot spawn ~ ~ ~ loot 20w14s:items/vh_bill
execute unless score $success temp matches 1 run advancement grant @a[distance=..20] only 20w14s:adventure/vh_bill