#> 20w14s:generation/structures/dank/build/doorway/wall.dead_end

# same as a wall, except it's used when creating an intentional dead end

function 20w14s:generation/structures/dank/build/doorway/wall

execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~ ~ ~ ~2 ~ minecraft:obsidian
