#> 20w14s:generation/structures/spire/check

# quick super-cheap initial check
execute if block ~ 32 ~ minecraft:air if block ~ 48 ~ minecraft:air if block ~ 64 ~ minecraft:air if block ~ 96 ~ minecraft:air run function 20w14s:generation/structures/spire/actually_check

# DELETEME just so we know where checks are happening
setblock ~ 32 ~ minecraft:glass
