# Gently lower into meteor
effect give @a[tag=20w14s.fighting_sun] slow_falling 60 0 true
gamemode adventure @a[tag=20w14s.fighting_sun]
execute in the_end run tp @a[tag=20w14s.fighting_sun] 59.68 110.94 559.71 374.86 -32.91

scoreboard players set 20w14s.end_boss_ready global 1
