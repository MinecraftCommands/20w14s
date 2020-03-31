# Load chunks
execute in the_end run forceload remove -731031 -731031
execute in the_end run forceload add -731031 -731031

# Load in red dragon arena
execute in the_end run setblock -731031 64 -731031 structure_block{mode:"LOAD",name:"20w14s:red_dragon_arena"}
execute in the_end run setblock -731031 65 -731031 redstone_block

# Spawn in dragon
function 20w14s:mobs/dragon/respawn

# Progress message
say 50%

execute if score 20w14s.end_gen_progress global matches 2 run scoreboard players set 20w14s.end_gen_progress global 3