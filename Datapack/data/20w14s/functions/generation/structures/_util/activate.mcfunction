#> 20w14s:generation/structures/_util/activate

# IMPL random mirror/flip
# scoreboard players operation rng temp %= 2 const
# execute if score rng temp matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
# execute if score rng temp matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

# Activate the structure block to place the structure.
setblock ~ ~1 ~ minecraft:redstone_block
fill ~ ~ ~ ~ ~1 ~ minecraft:air

execute if data storage 20w14s:generation/structures {debug: true} run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:purple_carpet replace #20w14s:command_blocks

# Remove the adjacent command block that was just placed by the structure. This
# will stop another structure from branching in the same spot. We could recall
# which direction we're facing from earlier to precisely replace the single
# command block... or we could just be lazy and replace anything nearby.
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #20w14s:command_blocks
