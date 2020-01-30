# Warning for nearby players
tellraw @a[distance=..64] {"text":"⚠ VOLCANIC ERRUPTION IMMINENT ⚠","color":"red"}
summon area_effect_cloud ~ ~-1 ~ {Duration:300,Radius:14.0f,Particle:"flame",RadiusPerTick:-0.04f}
playsound 20w14s:rocket_launch master @a[distance=..64] ~ ~ ~ 32 0

# Schedule erruption
tag @s add 20w14s.volcano_errupting
schedule function 20w14s:mechanics/volcanic_erruption/refind_volcano 300t