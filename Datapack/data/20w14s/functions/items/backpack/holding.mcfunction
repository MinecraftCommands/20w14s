scoreboard players set item_id temp 2

# If holding stack, give message
execute store result score stack_size temp run data get entity @s SelectedItem.Count
execute if score stack_size temp matches 2.. run title @s actionbar {"text":"Cannot open stacked backpacks","color":"red"}

# If already opened, teleport my minecart to me
execute store result score opened temp if data entity @s SelectedItem.tag.20w14s.opened
execute if score opened temp matches 1 run scoreboard players operation id temp = @s 20w14s.id
execute if score opened temp matches 1 as @e[type=chest_minecart,tag=20w14s.backpack_minecart] if score @s 20w14s.id = id temp run tp @s ~ ~1.5 ~

# Else open it
execute if score stack_size temp matches 1 if score opened temp matches 0 run function 20w14s:items/backpack/open
