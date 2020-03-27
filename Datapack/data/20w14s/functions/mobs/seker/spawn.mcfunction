# Spawn seker
summon zombie ~ ~ ~ {CustomName:'"Seker"',DeathLootTable:"20w14s:entity/seker",Team:"20w14s.seker",Silent:1b,Glowing:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}],ActiveEffects:[{Id:8b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:14b,Duration:2147483647,ShowParticles:0b}],Health:60f,CanBreakDoors:1b,Attributes:[{Name:generic.maxHealth,Base:60},{Name:generic.movementSpeed,Base:0.4},{Name:generic.attackDamage,Base:6.0},{Name:generic.attackKnockback,Base:4.0}]}
playsound entity.wither.ambient master @a ~ ~ ~ 2 2

# Reduce player's sekernite score, so more won't spawn until more is mined
scoreboard players remove @s 20w14s.mine_skrn 10

