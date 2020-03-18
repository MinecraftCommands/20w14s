# If players are fighting dragon, load chunks and make sure dragon is active
execute if entity @a[tag=20w14s.fighting_red_dragon,limit=1] run function 20w14s:mobs/dragon/loop_check_found_players
execute unless entity @a[tag=20w14s.fighting_red_dragon,limit=1] run forceload remove -731031 -731031 -730790 -730790
execute unless entity @a[tag=20w14s.fighting_red_dragon,limit=1] run schedule clear 20w14s:mobs/dragon/loop_active

# Update bossbar
bossbar set 20w14s:red_dragon_health players @a[tag=20w14s.fighting_red_dragon,limit=1]

# Reschedule self
schedule function 20w14s:mobs/dragon/loop_check 15s