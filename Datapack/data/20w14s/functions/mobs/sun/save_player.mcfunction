# Prevent fall damage, apply damage based on health remaining
effect give @s slow_falling 2 0 true
effect give @s[scores={20w14s.health=7..}] instant_damage 1 0 true
effect give @s[scores={20w14s.health=2..6}] wither 1 1 true
effect give @s[scores={20w14s.health=1}] poison 1 1 true

# Find safe spot to teleport back up to
execute if block ~-2 133 ~-9 yellow_stained_glass run tp @s ~ 134 ~-9
execute if block ~-2 133 ~-8 yellow_stained_glass run tp @s ~ 134 ~-8
execute if block ~-2 133 ~-7 yellow_stained_glass run tp @s ~ 134 ~-7
execute if block ~-2 133 ~-6 yellow_stained_glass run tp @s ~ 134 ~-6
execute if block ~-2 133 ~-5 yellow_stained_glass run tp @s ~ 134 ~-5
execute if block ~-2 133 ~-4 yellow_stained_glass run tp @s ~ 134 ~-4
execute if block ~-2 133 ~-3 yellow_stained_glass run tp @s ~ 134 ~-3
execute if block ~-2 133 ~-2 yellow_stained_glass run tp @s ~ 134 ~-2
execute if block ~-2 133 ~-1 yellow_stained_glass run tp @s ~ 134 ~-1
execute if block ~-2 133 ~0 yellow_stained_glass run tp @s ~ 134 ~0
execute if block ~-2 133 ~1 yellow_stained_glass run tp @s ~ 134 ~1
execute if block ~-2 133 ~2 yellow_stained_glass run tp @s ~ 134 ~2
execute if block ~-2 133 ~3 yellow_stained_glass run tp @s ~ 134 ~3
execute if block ~-2 133 ~4 yellow_stained_glass run tp @s ~ 134 ~4
execute if block ~-2 133 ~5 yellow_stained_glass run tp @s ~ 134 ~5
execute if block ~-2 133 ~6 yellow_stained_glass run tp @s ~ 134 ~6
execute if block ~-2 133 ~7 yellow_stained_glass run tp @s ~ 134 ~7
execute if block ~-2 133 ~8 yellow_stained_glass run tp @s ~ 134 ~8
execute if block ~-2 133 ~9 yellow_stained_glass run tp @s ~ 134 ~9