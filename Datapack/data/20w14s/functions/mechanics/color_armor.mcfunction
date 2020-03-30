data modify storage 20w14s:temp inventory set from entity @s Inventory
data modify storage 20w14s:temp armor set value [{}, {}, {}, {}]
data modify storage 20w14s:temp armor[0] merge from storage 20w14s:temp inventory[{Slot:100b}]
data modify storage 20w14s:temp armor[0].Slot set value 0b
data modify storage 20w14s:temp armor[1] merge from storage 20w14s:temp inventory[{Slot:101b}]
data modify storage 20w14s:temp armor[1].Slot set value 1b
data modify storage 20w14s:temp armor[2] merge from storage 20w14s:temp inventory[{Slot:102b}]
data modify storage 20w14s:temp armor[2].Slot set value 2b
data modify storage 20w14s:temp armor[3] merge from storage 20w14s:temp inventory[{Slot:103b}]
data modify storage 20w14s:temp armor[3].Slot set value 3b
data modify storage 20w14s:temp recolor set value []
execute store success score $hasEquipment temp if predicate 20w14s:color_armor/wear_helmet
execute if score $hasEquipment temp matches 1 run data modify storage 20w14s:temp recolor append from storage 20w14s:temp armor[{id:"minecraft:leather_helmet"}]
execute if score $hasEquipment temp matches 1 run data remove storage 20w14s:temp armor[{id:"minecraft:leather_helmet"}]
execute store success score $hasEquipment temp if predicate 20w14s:color_armor/wear_chestplate
execute if score $hasEquipment temp matches 1 run data modify storage 20w14s:temp recolor append from storage 20w14s:temp armor[{id:"minecraft:leather_chestplate"}]
execute if score $hasEquipment temp matches 1 run data remove storage 20w14s:temp armor[{id:"minecraft:leather_chestplate"}]
execute store success score $hasEquipment temp if predicate 20w14s:color_armor/wear_leggings
execute if score $hasEquipment temp matches 1 run data modify storage 20w14s:temp recolor append from storage 20w14s:temp armor[{id:"minecraft:leather_leggings"}]
execute if score $hasEquipment temp matches 1 run data remove storage 20w14s:temp armor[{id:"minecraft:leather_leggings"}]
execute store success score $hasEquipment temp if predicate 20w14s:color_armor/wear_boots
execute if score $hasEquipment temp matches 1 run data modify storage 20w14s:temp recolor append from storage 20w14s:temp armor[{id:"minecraft:leather_boots"}]
execute if score $hasEquipment temp matches 1 run data remove storage 20w14s:temp armor[{id:"minecraft:leather_boots"}]
function 20w14s:general/random_number
execute store result storage 20w14s:temp recolor[].tag.display.color int 1 run scoreboard players get seed 20w14s.random
data modify storage 20w14s:temp armor append from storage 20w14s:temp recolor[]
setblock 731031 0 731031 yellow_shulker_box
data modify block 731031 0 731031 Items set from storage 20w14s:temp armor
loot replace entity @s armor.feet 1 mine 731031 0 731031 air{drop_contents:1b}