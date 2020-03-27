say respawn

# If was in boss fight, clean up
execute unless entity @s[tag=!20w14s.in_rocket,tag=!20w14s.fighting_sun,tag=!20w14s.fighting_red_dragon] run function 20w14s:player/leave_end
