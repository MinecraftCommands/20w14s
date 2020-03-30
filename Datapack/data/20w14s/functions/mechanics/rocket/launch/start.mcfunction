# Block other rockets because I can't be bothered to make whole boss fight instanced
scoreboard players set 20w14s.end_fight_happening global 1

# Players
tag @a remove 20w14s.in_rocket
tag @a[distance=..8] add 20w14s.in_rocket

# Worldborder timer
worldborder set 30000000
worldborder set 30006000 300

# Replace rocket with model
fill ~-4 ~-5 ~-4 ~4 ~6 ~4 air replace iron_door
fill ~-4 ~-5 ~-4 ~4 ~6 ~4 air replace purple_stained_glass
fill ~-4 ~-5 ~-4 ~4 ~6 ~4 air replace magma_block
fill ~-4 ~-5 ~-4 ~4 ~6 ~4 air replace purpur_block
tp @s ~ -200 ~
kill @e[type=armor_stand,tag=20w14s.rocket]
execute align xyz run summon armor_stand ~0.125 ~-0.5 ~-0.15625 {Tags:["20w14s.rocket"],Invisible:1b,Invulnerable:1b,HandItems:[{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:5}}],Pose:{LeftArm:[-90f,0f,0f]},NoGravity:1b}

# Make players spectate from a pig
kill @e[type=pig,tag=20w14s.spectate_pig]
summon pig ~10 ~20 ~10 {Tags:["20w14s.spectate_pig"],DeathLootTable:"minecraft:empty",Rotation:[135.0f,50.0f],NoAI:1b}
gamemode spectator @a[tag=20w14s.in_rocket]
execute as @a[tag=20w14s.in_rocket] run spectate @e[type=pig,tag=20w14s.spectate_pig,limit=1]

# Start ascent
particle dust 1 1 1 20 ~ ~-4.5 ~ 3 0 3 1 200
playsound 20w14s:rocket_launch master @a[tag=20w14s.in_rocket] ~ ~ ~ 20 1
schedule function 20w14s:mechanics/rocket/launch/ascend 10t