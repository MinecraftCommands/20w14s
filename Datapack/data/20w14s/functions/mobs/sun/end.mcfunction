# Stop loop (if this function is ran manually to end early)
schedule clear 20w14s:mobs/sun/loop

# Kill sun
kill 00000000-0000-0001-0000-0000000b2797
kill 00000000-0000-0003-0000-0000000b2797

# Kill pacesetter
kill 00000000-0000-0002-0000-0000000b2797

# Remove platform
fill 49 133 400548 71 133 400572 air

# Clear tags
tag @a[tag=20w14s.fighting_sun] remove 20w14s.fighting_sun

# Allow another fight to start
scoreboard players set 20w14s.end_fight_happening global 0