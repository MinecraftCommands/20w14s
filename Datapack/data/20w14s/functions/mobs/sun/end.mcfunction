say end

# Stop loop (if this function is ran manually to end early)
schedule clear 20w14s:mobs/sun/loop

# Kill sun
kill 00000000-0000-0001-0000-0000000b2797
kill 00000000-0000-0003-0000-0000000b2797

# Kill pacesetter
kill 00000000-0000-0002-0000-0000000b2797

# Remove platform
fill 48 133 548 71 133 572 air

# Allow another fight to start
scoreboard players set 20w14s.end_boss_ready global 1