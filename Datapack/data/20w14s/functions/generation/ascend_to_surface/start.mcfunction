# Start at top, descend until there's no more air
# Skips 16 blocks at a time, then 4, then 1 - could potentially skip into a cave/temple/whatever
execute positioned ~ 256 ~ run function 20w14s:generation/ascend_to_surface/down_16