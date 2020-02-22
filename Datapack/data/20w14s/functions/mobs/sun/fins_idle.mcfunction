scoreboard players add 20w14s.sun_boss_fins timer 1
execute if score 20w14s.sun_boss_fins timer matches 10 run data merge entity @s {Pose:{LeftArm:[-120.93f,291.0f,0.0f],RightArm:[-120.93f,69.0f,0.0f]}}
execute if score 20w14s.sun_boss_fins timer matches 20 run data merge entity @s {Pose:{LeftArm:[-108.78f,290.24f,0.0f],RightArm:[-108.78f,69.76f,0.0f]}}
execute if score 20w14s.sun_boss_fins timer matches 30 run data merge entity @s {Pose:{LeftArm:[-96.93f,290.86f,0.0f],RightArm:[-96.93f,69.14f,0.0f]}}
execute if score 20w14s.sun_boss_fins timer matches 40 run data merge entity @s {Pose:{LeftArm:[-108.78f,290.24f,0.0f],RightArm:[-108.78f,69.76f,0.0f]}}
execute if score 20w14s.sun_boss_fins timer matches 40.. run scoreboard players set 20w14s.sun_boss_fins timer 0 

# Right ArmL: ry, 360-rx, 360-rz