#> 20w14s:generation/structures/_util/debug/blank/reset

tellraw @a [{"text": "Pending structures have been blanked.", "color": "light_purple"}]
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2

data modify storage 20w14s:generation/structures/_util/debug temp.blank set value false
