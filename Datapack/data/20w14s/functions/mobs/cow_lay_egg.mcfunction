# Lay egg
summon item ~ ~ ~ {Item:{id:"minecraft:egg",Count:1},Motion:[0.0,0.2,0.0]}
playsound entity.chicken.egg master @a

# Timer speed proportional to number of cows
execute store result score 20w14s.cow_count global if entity @e[type=cow]

scoreboard players set 20w14s.cow_egg timer 0
