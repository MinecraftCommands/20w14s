effect clear @s levitation
effect give @s levitation 1 80 true

particle smoke ~ ~ ~ 0.2 0 0.2 0.1 50
particle flame ~ ~ ~ 0.2 0 0.2 0.1 20
playsound block.redstone_torch.burnout master @a ~ ~ ~ 2 0
scoreboard players set @s 20w14s.jtpk_bst 0

# Make play stop fall-flying
replaceitem entity @s armor.chest air
tag @s add 20w14s.readd_jetpack
schedule function 20w14s:items/jetpack/readd 5t append