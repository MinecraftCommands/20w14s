# Gamerules
gamerule commandBlockOutput false

# Shared objectives
scoreboard objectives add global dummy
scoreboard objectives add temp dummy
scoreboard objectives add timer dummy
scoreboard objectives add const dummy

scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 6 const 6
scoreboard players set 7 const 7
scoreboard players set 8 const 8
scoreboard players set 9 const 9
scoreboard players set 10 const 10
scoreboard players set 11 const 11
scoreboard players set 12 const 12
scoreboard players set 13 const 13
scoreboard players set 14 const 14
scoreboard players set 15 const 15
scoreboard players set 16 const 16
scoreboard players set 32 const 32
scoreboard players set 64 const 64
scoreboard players set 128 const 128
scoreboard players set 256 const 256
scoreboard players set 512 const 512
scoreboard players set 1024 const 1024
scoreboard players set 2048 const 2048

# Datapack-specific objectives
# TODO: Shorten namespace so objectives don't all have to be badly named?
scoreboard objectives add 20w14s.id dummy
scoreboard objectives add 20w14s.tail dummy
scoreboard objectives add 20w14s.random dummy
scoreboard objectives add 20w14s.bounce dummy
scoreboard objectives add 20w14s.prev_held dummy
scoreboard objectives add 20w14s.bkpk_slot dummy
scoreboard objectives add 20w14s.mine_skrn mined:gold_ore
scoreboard objectives add 20w14s.chop_oak mined:oak_log
scoreboard objectives add 20w14s.chop_brch mined:birch_log
scoreboard objectives add 20w14s.obsn_boat used:acacia_boat
scoreboard objectives add 20w14s.use_coas used:carrot_on_a_stick
scoreboard objectives add 20w14s.talk_vlgr custom:talked_to_villager
scoreboard objectives add 20w14s.lnch_rokt trigger

scoreboard players set multiplier 20w14s.random 1664525
scoreboard players set increment 20w14s.random 1013904223
execute unless score seed 20w14s.random matches ..2147483647 run scoreboard players set seed 20w14s.random 731031

scoreboard players set 20w14s.default_snake_tail_length global 20
scoreboard players set 20w14s.arrow_bounce_loop_running global 0
scoreboard players set 20w14s.cow_count global 20
execute unless score 20w14s.end_boss_ready global matches ..2147483647 run scoreboard players set 20w14s.end_boss_ready global 1

# Teams
team add 20w14s.seker
team modify 20w14s.seker color dark_purple
team add 20w14s.puffersun
team modify 20w14s.puffersun color yellow

# Load chunk
execute in overworld run forceload remove 731031 731031
execute in overworld run forceload add 731031 731031
execute in overworld run setblock 731031 0 731031 yellow_shulker_box
execute in the_nether run forceload remove 731031 731031
execute in the_nether run forceload add 731031 731031
execute in the_nether run setblock 731031 0 731031 yellow_shulker_box
execute in the_end run forceload remove 731031 731031
execute in the_end run forceload add 731031 731031
execute in the_end run setblock 731031 0 731031 yellow_shulker_box

# End arena
execute unless score 20w14s.end_arena_created global matches 1 in the_end run function 20w14s:init/end_arena

# Message
tellraw @a {"text":"20w14✧ reloaded","color":"aqua"}
