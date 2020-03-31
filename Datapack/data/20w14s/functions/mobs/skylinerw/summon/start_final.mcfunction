# Stop searching for more pentagrams
scoreboard players set $found_valid_pentagram temp 1
# Remove items from altar
kill @e[type=item,distance=..3]

# Different covered areas for differently sized pentagrams
execute if score $pentagram_size temp matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.01875f,Radius:1f}
execute if score $pentagram_size temp matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.03125f,Radius:1f}
execute if score $pentagram_size temp matches 4 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.04375f,Radius:1f}
execute if score $pentagram_size temp matches 5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.05625f,Radius:1f}
execute if score $pentagram_size temp matches 6 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.06875f,Radius:1f}
execute if score $pentagram_size temp matches 7 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.08125f,Radius:1f}
execute if score $pentagram_size temp matches 8 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["20w14s.skylinerw.portal"],Particle:'large_smoke',Effects:[{Id:7,Amplifier:10}],Duration:90,RadiusPerTick:0.09375f,Radius:1f}

# Schedule Skylinerw to spawn at AEC on last tick
schedule function 20w14s:mobs/skylinerw/summon/scheduled_final 88t
advancement grant @a[distance=..20] only 20w14s:adventure/summon_skylinerw