# Crash effects
execute as @a[tag=20w14s.in_rocket] at @a run playsound 20w14s:rocket_crash master @s
effect give @a[tag=20w14s.in_rocket] blindness 3

# Clean up
kill @e[type=armor_stand,tag=20w14s.rocket]
kill @e[type=pig,tag=20w14s.spectate_pig]

# Change tag
tag @a remove 20w14s.fighting_sun
tag @a[tag=20w14s.in_rocket] add 20w14s.fighting_sun
tag @a[tag=20w14s.in_rocket] remove 20w14s.in_rocket

schedule function 20w14s:mobs/sun/start 20t