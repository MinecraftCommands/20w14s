execute if score 20w14s.end_boss_tick global matches 932 run tp @a[tag=20w14s.fighting_sun] 59 138 400560
execute if score 20w14s.end_boss_tick global matches 932 run effect give @a[tag=20w14s.fighting_sun] slow_falling 3 1 true
execute if score 20w14s.end_boss_tick global matches 932 run effect clear @a[tag=20w14s.fighting_sun] levitation
execute if score 20w14s.end_boss_tick global matches 932 run particle end_rod 60.00 138.74 400561.45 0.2 0.2 0.2 0.2 50
execute if score 20w14s.end_boss_tick global matches 932 run setblock 47 133 400548 structure_block{mode:"LOAD",name:"20w14s:puffersun/platform"}
execute if score 20w14s.end_boss_tick global matches 932 run setblock 47 132 400548 redstone_block
execute if score 20w14s.end_boss_tick global matches 932 run fill 47 132 400548 47 133 400548 air
execute if score 20w14s.end_boss_tick global matches 932 run clone 38 133 400562 44 133 400558 45 133 400558 masked
