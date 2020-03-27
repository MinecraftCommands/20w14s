data modify storage 20w14s:temp boat set from entity @s {}
data remove storage 20w14s:temp boat.Passengers
data remove storage 20w14s:temp boat.Type
summon boat ~ ~ ~ {Type:"oak",NoGravity:1b,Tags:["20w14s.temp","20w14s.skyship"],Passengers:[{id:"zombie",DeathTime:19s,NoAI:true,Health:1f,Silent:true,DeathLootTable:"20w14s:entity/lead",Tags:["20w14s.skyship.leash"],ArmorItems:[{},{},{},{id:"lead",Count:1b,tag:{CustomModelData:1b}}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:false}],Passengers:[{id:"sheep",ActiveEffects:[{Id:25,Duration:2147483647,ShowParticles:false}]}]}]}
execute as @e[type=boat,distance=..1,tag=20w14s.temp,limit=1] run function 20w14s:mechanics/skyships/convert_to_skyship/as_skyship
kill @s