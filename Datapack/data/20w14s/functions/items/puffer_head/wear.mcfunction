# Apply effects
team join 20w14s.puffersun @s[tag=!20w14s.in_glow_team]
tag @s add 20w14s.in_glow_team
effect give @s glowing 2 0 true
effect give @s jump_boost 2 2 true
effect give @s speed 2 0 true

# If player placed and mined, re-add attributes and stuff
execute unless predicate 20w14s:head_has_attributes run loot replace entity @s armor.head 1 loot 20w14s:items/pufferfish_head