# If was already holding a backpack, clean up that one first
execute if entity @s[tag=20w14s.has_backpack_open] run function 20w14s:items/backpack/try_close

tag @s add 20w14s.has_backpack_open
playsound item.armor.equip_leather master @a

# Create minecart chest, assign ID, set contents
summon chest_minecart ~ ~1.5 ~ {Tags:["20w14s.new_temp","20w14s.backpack_minecart"],NoGravity:1b,Invulnerable:1b,CustomName:'"Backpack"'}
scoreboard players operation @e[type=chest_minecart,tag=20w14s.new_temp,limit=1] 20w14s.id = @s 20w14s.id
data modify entity @e[type=chest_minecart,tag=20w14s.new_temp,limit=1] Items set from entity @s SelectedItem.tag.20w14s.backpack_items
tag @e[type=chest_minecart,tag=20w14s.new_temp,limit=1] remove 20w14s.new_temp

# Dummify item
replaceitem entity @s weapon.mainhand command_block{CustomModelData:3,20w14s:{item_id:1,opened:1b}}

# Keep track of selected slot, to return backpack to
execute store result score @s 20w14s.bkpk_slot run data get entity @s SelectedItemSlot