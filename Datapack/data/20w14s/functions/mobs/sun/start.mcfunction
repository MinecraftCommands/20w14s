# Gently lower players into meteor
effect give @a[tag=20w14s.fighting_sun] slow_falling 60 0 true
gamemode adventure @a[tag=20w14s.fighting_sun]
execute in the_end run tp @a[tag=20w14s.fighting_sun] 59.68 110.94 559.71 374.86 -32.91

# Create self
execute in the_end run forceload remove 63 581
execute in the_end run forceload add 63 581
execute in the_end run summon armor_stand 63 67 581 {UUIDLeast:731031L,UUIDMost:1L,Tags:["20w14s.sun"],Team:"20w14s.puffersun",Glowing:1b,Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:3}}],HandItems:[{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,Invulnerable:1b,Pose:{LeftArm:[-90.0f,0.0f,0.0f]},Passengers:[{id:"minecraft:armor_stand",UUIDLeast:731031L,UUIDMost:3L,Tags:["20w14s.sun_eyes"],Team:"20w14s.puffersun",Glowing:1b,Fire:32767s,Invulnerable:1b,Pose:{LeftArm:[263f,278f,0f],RightArm:[264f,88f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:17}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:14}}]}]}

# Create pacesetter
execute in the_end run forceload remove 90 561
execute in the_end run forceload add 90 561
execute in the_end run summon armor_stand 90 134 561 {UUIDLeast:731031L,UUIDMost:2L,Tags:["20w14s.sun_pacesetter"],NoGravity:1b,Invulnerable:1b,Rotation:[90.0f,0.0f]}

# Worldborder timer
execute in the_end run worldborder set 30000000
execute in the_end run worldborder set 30006000 300
scoreboard players set 20w14s.end_boss_tick global 0

# Start the main loop
schedule function 20w14s:mobs/sun/loop 20t
