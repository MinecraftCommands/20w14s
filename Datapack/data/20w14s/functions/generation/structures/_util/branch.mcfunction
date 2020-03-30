#> 20w14s:generation/structures/_util/branch
#
# Does some stuff common to all branching functions, such as fetching a result from loot tables.
#
# @input
#   storage 20w14s:generation/structures/_util/branch
#       __input__.table: string
#           The name of the loot table to use for LTR.
#
# @output
#   storage 20w14s:generation/structures/_util/branch
#       __output__.structure: string
#           The random structure chosen by LTR.

# initialize the branch variable
scoreboard players set $continue temp 0

# NOTE #ltr-block

# make sure a container exists
setblock 731031 0 731032 minecraft:barrel

# set the given loot table
data modify block 731031 0 731032 LootTable set from storage 20w14s:generation/structures/_util/branch __input__.table

# force the loot to be populated, without replacing any of it
loot insert 731031 0 731032 loot 20w14s:_util/void

# return the results from ltr
data modify storage 20w14s:generation/structures/_util/branch __output__ set from block 731031 0 731032 Items[].tag.__ltr__

# clear input arguments after we're done
data remove storage 20w14s:generation/structures/_util/branch __input__
