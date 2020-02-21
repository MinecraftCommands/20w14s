#> Teleports players that collided with portal_in to the other portal with this ID

execute as @a[tag=!20w14s.portal_teleportation_initialized,dy=0] run function 20w14s:mechanics/portal_gun/teleportation/init

# Calculate out rotation and what portal to teleport to
function 20w14s:mechanics/portal_gun/teleportation/calculate

# Teleport
execute as @a[tag=20w14s.portal_teleportation_initialized,dy=0] if score @s 20w14s.id = player_in_id 20w14s.prtl_tp run function 20w14s:mechanics/portal_gun/teleportation/teleport