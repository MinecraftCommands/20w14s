# Die if passenger was removed
execute unless data entity @s Passengers[] run function 20w14s:mobs/skylinerw/death/minecart
# Die if passenger has no absorption left
execute if data entity @s Passengers[{id:"minecraft:slime",Tags:["20w14s.skylinerw.slime"],AbsorptionAmount:0.0f}] run function 20w14s:mobs/skylinerw/death/minecart
# Ambient sound
execute if predicate 20w14s:chance_33 run function 20w14s:mobs/skylinerw/speak/main

# Adjust minecart height according to slime health
scoreboard players set $maxHealth temp 100
execute store result score $health temp run data get entity @s Passengers[{id:"minecraft:slime",Tags:["20w14s.skylinerw.slime"]}].AbsorptionAmount
scoreboard players operation $health temp *= 10 const

## Use health value for next calculation
scoreboard players operation $speed temp = $maxHealth temp
scoreboard players operation $speed temp *= 1000 const
scoreboard players operation $speed temp /= $health temp
execute store result entity @s DisplayOffset int 1 run scoreboard players operation $health temp /= $maxHealth temp

# Apply speed according to slime health
tag @s add 20w14s.current
execute at @e[type=endermite,limit=1,tag=20w14s.skylinerw.endermite,nbt={Passengers:[{Tags:["20w14s.current"]}]}] run summon area_effect_cloud ~ ~ ~ {Duration:10,Particle:"block air",Effects:[{Id:1b,Duration:60,Amplifier:0b,ShowParticles:false}],Radius:1f,Tags:["20w14s.custom","20w14s.temp"]}
tag @s remove 20w14s.current
execute anchored eyes as @e[type=area_effect_cloud,tag=20w14s.temp,limit=1] run function 20w14s:mobs/skylinerw/loop/aec

# Face nearest player
data modify entity @s Rotation set from storage 20w14s:temp rotation