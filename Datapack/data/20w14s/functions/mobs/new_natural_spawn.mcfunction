# HHGTTG
effect give @s[type=dolphin] levitation 1000000 10 true

# More pufferfish
execute if entity @s[type=#20w14s:aquatic] run summon pufferfish

# Replace endermen in end (with skeleton, or nothing)
execute if entity @s[type=enderman] run function 20w14s:mobs/replace_enderman

# Replace birch boats with airships
execute if entity @s[type=boat,nbt={Type:"birch"}] run function 20w14s:mechanics/skyships/convert_to_skyship/as_birch_boat

# Initialize new item entities
execute if entity @s[type=item] run function 20w14s:items/initialize_item_entity

# Replace part of skeletons with "crafted" skeletons
execute if entity @s[type=skeleton] if predicate 20w14s:chance_02 run data merge entity @s {DeathLootTable:'20w14s:entity/206_bones_skeleton',CanPickUpLoot:true}

tag @s add 20w14s.initialised