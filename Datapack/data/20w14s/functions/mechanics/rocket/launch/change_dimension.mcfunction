# Clean up launch sequence stuff
kill @e[type=armor_stand,tag=20w14s.rocket]
kill @e[type=pig,tag=20w14s.spectate_pig]

# Set up the end
forceload remove 0 500
forceload add 0 500
execute in the_end run tp @a[tag=20w14s.in_rocket] 0 256 500

scoreboard players set 20w14s.end_boss_ready global 1