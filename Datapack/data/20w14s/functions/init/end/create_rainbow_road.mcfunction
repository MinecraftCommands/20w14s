# Load chunks
execute in the_end run forceload remove 47 546
execute in the_end run forceload add 47 546

execute in the_end run forceload remove -3558 550
execute in the_end run forceload add -3558 550

execute in the_end run forceload remove -758 536
execute in the_end run forceload add -758 536

execute in the_end run forceload remove -2949 544
execute in the_end run forceload add -2949 544

# Load in rainbow road structure
execute in the_end run setblock 47 133 546 structure_block{mode:"LOAD",name:"20w14s:puffersun/rainbow_road",rotation:"CLOCKWISE_90"}
execute in the_end run setblock 47 132 546 redstone_block
execute in the_end run fill 47 133 546 47 132 546 air

# Load end platform
execute in the_end run setblock -3558 133 550 structure_block{mode:"LOAD",name:"20w14s:puffersun/platform"}
execute in the_end run setblock -3558 132 550 redstone_block
execute in the_end run fill -3558 133 550 -3558 132 550 air

# Load in piano
execute in the_end run setblock -758 81 536 structure_block{mode:"LOAD",name:"20w14s:puffersun/piano",rotation:"CLOCKWISE_90"}
execute in the_end run setblock -758 80 536 redstone_block
execute in the_end run fill -758 81 536 -758 80 536 air

# Load in heart
execute in the_end run setblock -2949 120 544 structure_block{mode:"LOAD",name:"20w14s:puffersun/heart"}
execute in the_end run setblock -2949 119 544 redstone_block
execute in the_end run fill -2949 119 544 -2949 120 544 air


say One-time initialisation finished!