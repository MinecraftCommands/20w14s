#> 20w14s:generation/structures/dank/build/single/doorway

data modify storage 20w14s:generation/structures/_util/advance input set value { name: "20w14s:dank/single/base", facing: "east", size: [ 9, 9, 9 ], offset: [ 0, -1, -4 ], layers: [] }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/single/cracked", integrity: 0.4f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/single/mossy", integrity: 0.4f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/single/treasure", integrity: 0.05f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/single/treasure2", integrity: 0.005f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/single/commands", integrity: 1.0f }
function 20w14s:generation/structures/_util/advance
