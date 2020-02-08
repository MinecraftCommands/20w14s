# Gently lower into meteor
effect give @a[tag=20w14s.fighting_sun] slow_falling 60 0 true
gamemode adventure @a[tag=20w14s.fighting_sun]
execute in the_end run tp @a[tag=20w14s.fighting_sun] 59.68 110.94 559.71 374.86 -32.91

# Worldborder timer
worldborder set 30000000
worldborder set 30006000 300
scoreboard players set 20w14s.end_boss_tick global 0

# Start the main loop
function 20w14s:mobs/sun/loop

# TODO: Move to end.mcfunction
scoreboard players set 20w14s.end_boss_ready global 1
