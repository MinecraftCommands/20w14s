scoreboard players set @s 20w14s.lnch_rokt 0

# Check rocket exists
scoreboard players set rocket_nearby temp 0
execute if entity @e[type=villager,tag=20w14s.rocket_terminal_villager,sort=nearest,limit=1,distance=..8] run scoreboard players set rocket_nearby temp 1

# Check rocket built
scoreboard players set rocket_built temp 0
execute at @e[type=villager,tag=20w14s.rocket_terminal_villager,sort=nearest,limit=1,distance=..8] positioned ~ ~-5 ~ if predicate 20w14s:rocket_check run scoreboard players set rocket_built temp 1

# Start, or give appropriate error message
execute if score rocket_nearby temp matches 0 run tellraw @s {"text":"Unable to find nearby rocket control panel.","color":"red"}
execute if score rocket_nearby temp matches 1 if score rocket_built temp matches 0 run tellraw @s {"text":"Rocket incomplete:\n* Locate the Rocket Schematics book\n* Build the rocket as shown\n* Ensure all reinforced panels are correctly placed\n* Extra blocks and space around the rocket are optional\n* Control Panel must be placed in center","color":"red"}
execute if score rocket_nearby temp matches 1 if score rocket_built temp matches 1 if score 20w14s.end_fight_happening global matches 1 run tellraw @s {"text":"Other rockets in airspace. Please try again in 5 minutes.","color":"red"}
execute if score rocket_nearby temp matches 1 if score rocket_built temp matches 1 if score 20w14s.end_fight_happening global matches 0 run advancement grant @s only 20w14s:adventure/launch_rocket
execute if score rocket_nearby temp matches 1 if score rocket_built temp matches 1 if score 20w14s.end_fight_happening global matches 0 as @e[type=villager,tag=20w14s.rocket_terminal_villager,sort=nearest,limit=1,distance=..8] at @s run function 20w14s:mechanics/rocket/launch/start