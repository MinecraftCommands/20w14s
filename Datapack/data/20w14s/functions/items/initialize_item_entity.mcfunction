# Cat items
execute if data entity @s {Item:{tag:{20w14s:{cat_item:1b}}}} run function 20w14s:mobs/cat_items/revive

# Add tag to bone items for skeleton crafting
tag @s[nbt={Item:{id:"minecraft:bone"}}] add 20w14s.item.bone

# Revive skeleton item if not picked up
execute if data entity @s {Item:{id:"minecraft:skeleton_spawn_egg",tag:{EntityTag:{DeathLootTable:'20w14s:entity/206_bones_skeleton'}}}} run function 20w14s:items/craftable_skeleton/revive