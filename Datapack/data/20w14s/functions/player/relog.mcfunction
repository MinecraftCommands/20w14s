scoreboard players set @s 20w14s.quit_game 0

# If was in sun boss fight, exit
execute unless entity @s[tag=!20w14s.in_rocket,tag=!20w14s.fighting_sun] in the_end run gamemode adventure @s
execute unless entity @s[tag=!20w14s.in_rocket,tag=!20w14s.fighting_sun] in the_end run tp @s 58 20 569

# Get the player's name for offline messages
function 20w14s:mechanics/offline_messages/on_join/get_name