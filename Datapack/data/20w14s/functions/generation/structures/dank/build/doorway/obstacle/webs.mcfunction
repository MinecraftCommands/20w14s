#> 20w14s:generation/structures/dank/build/doorway/obstacle/webs

function 20w14s:generation/structures/dank/build/doorway/obstacle/webs/_inner

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} positioned ~ ~ ~-1 run function 20w14s:generation/structures/dank/build/doorway/obstacle/webs/_inner
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} positioned ~ ~ ~1 run function 20w14s:generation/structures/dank/build/doorway/obstacle/webs/_inner
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} positioned ~-1 ~ ~ run function 20w14s:generation/structures/dank/build/doorway/obstacle/webs/_inner
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} positioned ~1 ~ ~ run function 20w14s:generation/structures/dank/build/doorway/obstacle/webs/_inner
