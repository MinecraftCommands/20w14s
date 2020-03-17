say respawning dragon

scoreboard players set 20w14s.dragon_loop global 0

forceload remove -730919 -730824
forceload add -730919 -730824
execute in the_end run summon armor_stand -730919 129 -730824 {UUIDLeast:731031L,UUIDMost:4L,Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:ender_dragon",DeathLootTable:"20w14s:entity/red_dragon",UUIDLeast:731031L,UUIDMost:5L,Tags:["20w14s.red_dragon"]}]}
