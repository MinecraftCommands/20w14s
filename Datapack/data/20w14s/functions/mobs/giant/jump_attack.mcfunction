data modify entity @s Motion[1] set value 1.5
effect give @s slow_falling 4
playsound entity.puffer_fish.blow_up master @a[distance=..16] ~ ~ ~ 2 0.7
summon area_effect_cloud ~ ~ ~ {Particle:"explosion",Radius:3f,RadiusPerTick:0.5f,Duration:15,WaitTime:60,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:25b,Amplifier:32b,Duration:10,ShowParticles:0b}]}