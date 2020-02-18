#> 20w14s:generation/structures/dank/build/initial_descent

data modify storage 20w14s:generation/structures/_util/advance input set value { name: "20w14s:dank/initial_descent/base", size: [ 9, 9, 9 ], offset: [ -4, -31, -4 ] }

data modify storage 20w14s:generation/structures/_util/advance input.layers set value []
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/initial_descent/cracked", integrity: 0.4f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/initial_descent/mossy", integrity: 0.4f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/initial_descent/treasure", integrity: 0.02f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/initial_descent/treasure2", integrity: 0.002f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/initial_descent/commands", integrity: 1.0f }

function 20w14s:generation/structures/_util/advance
