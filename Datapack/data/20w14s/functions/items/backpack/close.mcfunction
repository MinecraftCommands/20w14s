# Copy contents from minecart to a new closed backpack item
setblock 731031 0 731031 air
setblock 731031 0 731031 yellow_shulker_box{Items:[{id:"minecraft:command_block",Count:1,tag:{20w14s:{item_id:1}}}]}
data modify block 731031 0 731031 Items[0].tag.20w14s.backpack_items set from entity @e[type=chest_minecart,tag=20w14s.my_backpack_minecart,limit=1,sort=nearest] Items

# Attempt to place in previous slot, else spawn at their feet
scoreboard players set given_backpack_back temp 0
execute if score @s 20w14s.bkpk_slot matches 0 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:0b}]}] hotbar.0 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 1 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:1b}]}] hotbar.1 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 2 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:2b}]}] hotbar.2 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 3 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:3b}]}] hotbar.3 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 4 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:4b}]}] hotbar.4 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 5 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 6 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:6b}]}] hotbar.6 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 7 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:7b}]}] hotbar.7 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score @s 20w14s.bkpk_slot matches 8 store success score given_backpack_back temp run loot replace entity @s[nbt=!{Inventory:[{Slot:8b}]}] hotbar.8 1 mine 731031 0 731031 air{drop_contents:1b}
execute if score given_backpack_back temp matches 0 run loot spawn ~ ~ ~ mine 731031 0 731031 air{drop_contents:1b}
playsound item.armor.equip_leather master @a

# Delete chest minecart
execute as @e[type=chest_minecart,tag=20w14s.my_backpack_minecart,limit=1,sort=nearest] run data modify entity @s Items set value []
kill @e[type=chest_minecart,tag=20w14s.my_backpack_minecart,limit=1,sort=nearest]
tag @e[type=chest_minecart,tag=20w14s.my_backpack_minecart] remove 20w14s.my_backpack_minecart