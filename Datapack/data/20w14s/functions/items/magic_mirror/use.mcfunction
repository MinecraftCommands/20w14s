playsound 20w14s:magic_mirror master @s ~ 100000000 ~ 100000000
particle end_rod ~ ~1 ~ 0.1 0.3 0.1 0.1 200

gamemode spectator @s
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule showDeathMessages false
kill @s

# Set gamemode back in 16 ticks
tag @s add 20w14s.temp_using_magic_mirror
schedule function 20w14s:items/magic_mirror/refind_spectators 16t