# Mouth
data merge entity 00000000-0000-0001-0000-0000000b2797 {Pose:{Head:[0.0f,0.2f,0.0f]}}
execute store result entity 00000000-0000-0001-0000-0000000b2797 Pose.Head[0] float 0.000030517578 run data get entity 00000000-0000-0001-0000-0000000b2797 Rotation[1] 16384

# Eyes
data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{Head:[0.0f,0.2f,0.0f]}}
execute store result entity 00000000-0000-0003-0000-0000000b2797 Pose.Head[0] float 0.000030517578 run data get entity 00000000-0000-0001-0000-0000000b2797 Rotation[1] 16384
data modify entity 00000000-0000-0003-0000-0000000b2797 Rotation[0] set from entity 00000000-0000-0001-0000-0000000b2797 Rotation[0]

# Reset
scoreboard players set 20w14s.end_boss_sync timer 0