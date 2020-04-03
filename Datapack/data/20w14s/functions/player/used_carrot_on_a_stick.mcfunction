execute if predicate 20w14s:holding_magic_mirror run function 20w14s:items/magic_mirror/use
execute if predicate 20w14s:holding_melon_uzi run function 20w14s:items/melon_uzi/fire
execute if predicate 20w14s:portal_gun/holding_blue run function 20w14s:mechanics/portal_gun/raycast/shoot_blue
execute if predicate 20w14s:portal_gun/holding_orange run function 20w14s:mechanics/portal_gun/raycast/shoot_orange
execute if predicate 20w14s:portal_gun/holding_red run function 20w14s:mechanics/portal_gun/raycast/shoot_red
execute if predicate 20w14s:portal_gun/holding_yellow run function 20w14s:mechanics/portal_gun/raycast/shoot_yellow
execute if predicate 20w14s:portal_gun/holding_light_blue run function 20w14s:mechanics/portal_gun/raycast/shoot_light_blue
execute if predicate 20w14s:portal_gun/holding_purple run function 20w14s:mechanics/portal_gun/raycast/shoot_purple
execute if predicate 20w14s:portal_gun/holding_blue_orange_remover run function 20w14s:mechanics/portal_gun/remove_portal/blue_orange
execute if predicate 20w14s:portal_gun/holding_red_yellow_remover run function 20w14s:mechanics/portal_gun/remove_portal/red_yellow
execute if predicate 20w14s:portal_gun/holding_light_blue_purple_remover run function 20w14s:mechanics/portal_gun/remove_portal/light_blue_purple
execute if predicate 20w14s:holding_puff_hammer run function 20w14s:items/puff_hammer/use
execute if predicate 20w14s:holding_laser_pointer unless entity @s[tag=20w14s.laser_pointer.active] run function 20w14s:items/laser_pointer/start_activation

scoreboard players set @s 20w14s.use_coas 0
