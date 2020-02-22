#> Swap portal color the player is holding

# Get color
execute store result score held_portal_color temp run data get entity @s Inventory[{Slot:-106b}].tag.20w14s.portal_color
replaceitem entity @s weapon.offhand minecraft:air

# Copy non portal gun item that moved from offhand to mainhand back to offhand
execute if data entity @s SelectedItem.Count run function 20w14s:items/portal_gun/copy_item

# Give portal gun
execute if score held_portal_color temp matches 0 run loot replace entity @s weapon.mainhand loot 20w14s:items/portal_gun/guns/orange
execute if score held_portal_color temp matches 1 run loot replace entity @s weapon.mainhand loot 20w14s:items/portal_gun/guns/blue
execute if score held_portal_color temp matches 2 run loot replace entity @s weapon.mainhand loot 20w14s:items/portal_gun/guns/yellow
execute if score held_portal_color temp matches 3 run loot replace entity @s weapon.mainhand loot 20w14s:items/portal_gun/guns/red
execute if score held_portal_color temp matches 4 run loot replace entity @s weapon.mainhand loot 20w14s:items/portal_gun/guns/purple
execute if score held_portal_color temp matches 5 run loot replace entity @s weapon.mainhand loot 20w14s:items/portal_gun/guns/light_blue