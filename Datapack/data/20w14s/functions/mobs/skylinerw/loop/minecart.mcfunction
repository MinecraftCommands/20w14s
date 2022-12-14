# Die if passenger was removed
execute unless data entity @s Passengers[] run function 20w14s:mobs/skylinerw/death/minecart
# Die if passenger has no absorption left
execute if data entity @s Passengers[{id:"minecraft:slime",Tags:["20w14s.skylinerw.slime"],AbsorptionAmount:0.0f}] run function 20w14s:mobs/skylinerw/death/minecart
# Ambient sound
execute if predicate 20w14s:chance_33 if predicate 20w14s:chance_33 run function 20w14s:mobs/skylinerw/speak/main

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
## Paste calculated speed, select targeted player, face targeted player
execute anchored eyes as @e[type=area_effect_cloud,tag=20w14s.temp,limit=1] run function 20w14s:mobs/skylinerw/loop/aec

# Face nearest player
data modify entity @s Rotation set from storage 20w14s:temp rotation

# Shoot laser at player
execute unless score $20w14s.skylinerw.lasercount global matches 1.. run tag @s remove 20w14s.skylinerw.shooting_lasers
execute unless entity @s[tag=20w14s.skylinerw.shooting_lasers] if score $has_target temp matches 1 if predicate 20w14s:chance_50 if predicate 20w14s:chance_50 run function 20w14s:mobs/skylinerw/shoot_lasers/schedule


# Check if clock should run on fast
execute unless score $fast_clock temp matches 1 store success score $fast_clock temp if entity @a[distance=..40]

# Un-target player
tag @a[tag=20w14s.skylinerw.target,limit=1] remove 20w14s.skylinerw.target
