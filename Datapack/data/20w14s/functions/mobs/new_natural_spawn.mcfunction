# HHGTTG
effect give @s[type=dolphin] levitation 1000000 10 true

# More pufferfish
execute if entity @s[type=#20w14s:aquatic] run summon pufferfish

# Replace endermen in end (with skeleton, or nothing)
execute if entity @s[type=enderman] run function 20w14s:mobs/replace_enderman

tag @s add 20w14s.initialised