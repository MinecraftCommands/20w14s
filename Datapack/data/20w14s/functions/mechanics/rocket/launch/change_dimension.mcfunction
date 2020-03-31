# Clean up launch sequence stuff
kill @e[type=armor_stand,tag=20w14s.rocket]
kill @e[type=pig,tag=20w14s.spectate_pig]

# Create rocket in end
forceload remove 269 400567
forceload add 269 400567
execute in the_end run summon armor_stand 269 10 400567 {Tags:["20w14s.rocket"],Invisible:1b,Invulnerable:1b,HandItems:[{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:5}}],Pose:{LeftArm:[0f,90f,0f]},NoGravity:1b}

# Create end pig for spectators to move into
gamemode spectator @a[tag=20w14s.in_rocket]
execute in the_end run tp @a[tag=20w14s.in_rocket] 269 -10 400567 -90 -90
execute in the_end run summon pig 269 -10 400567 {Tags:["20w14s.spectate_pig"],DeathLootTable:"minecraft:empty",Rotation:[-90.0f,-90.0f],NoAI:1b}

# Start approach towards meteor
schedule function 20w14s:mechanics/rocket/launch/approach 10t