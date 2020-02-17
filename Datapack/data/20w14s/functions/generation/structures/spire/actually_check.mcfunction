#> 20w14s:generation/structures/spire/actually_check

scoreboard players set $continue temp 0

# more expensive checks
function 20w14s:generation/structures/spire/check/nearby_spire
execute if score $continue temp matches 1.. run function 20w14s:generation/structures/spire/check/lava_pool
execute if score $continue temp matches 1.. run function 20w14s:generation/structures/spire/check/small_column
execute if score $continue temp matches 1.. run function 20w14s:generation/structures/spire/check/large_column

# if they all pass, continue to generate the spire
execute if score $continue temp matches 1.. run function 20w14s:generation/structures/spire/start
