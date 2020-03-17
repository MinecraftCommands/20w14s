say loop check found players

forceload add -731031 -731031 -730790 -730790

# If no dragon, respawn (after killing leftover armorstand)
execute unless entity 00000000-0000-0005-0000-0000000b2797 run kill 00000000-0000-0004-0000-0000000b2797
execute unless entity 00000000-0000-0005-0000-0000000b2797 run schedule function 20w14s:mobs/dragon/respawn 10s

# If dragon, make sure active loop is running
execute if entity 00000000-0000-0005-0000-0000000b2797 run schedule function 20w14s:mobs/dragon/loop_active 3t