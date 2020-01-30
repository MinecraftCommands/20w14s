playsound 20w14s:magic_mirror master @s ~ 100000000 ~ 100000000

gamemode spectator @s
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule showDeathMessages false
kill @s
gamerule doImmediateRespawn false
gamerule keepInventory false
gamerule showDeathMessages true

# Set gamemode back in 8 ticks
tag @s add 20w14s.temp_using_magic_mirror
schedule function 20w14s:items/magic_mirror/refind_spectators 8t