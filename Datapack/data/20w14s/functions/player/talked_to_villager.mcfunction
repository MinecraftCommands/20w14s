scoreboard players set @s 20w14s.talk_vlgr 0

# Do something according to nearest villager, add tag so player can be referenced
tag @s add 20w14s.temp_right_clicker
execute positioned ^ ^ ^2.5 as @e[type=villager,limit=1,sort=nearest,distance=..3] at @s run function 20w14s:player/villager_interacted_with
tag @s remove 20w14s.temp_right_clicker

