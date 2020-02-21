#> Called by portal_main_tick when a portal with the same id and color exists, but has a lower count compared to the player with the same id
#  Should only be called by a function where the portal direction is already known

# Copy score and remove portal
scoreboard players operation removal_id 20w14s.prtl_gun = checked_portal_id 20w14s.prtl_main
function 20w14s:mechanics/portal_gun/remove_portal/structure/red

# Play closing sound
playsound 20w14s:portal_gun.portal_close ambient @a ~ ~ ~ 1

# Remove portal_main
kill @s