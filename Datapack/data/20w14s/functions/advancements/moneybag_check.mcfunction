execute store result score @s temp run experience query @s levels
tag @s[scores={temp=40}] add check_again
tag @s[scores={temp=41..}] add enough
execute as @s[tag=check_again] store result score @s temp run experience query @s points
tag @s[tag=check_again,scores={temp=149..}] add enough

advancement grant @s[tag=enough] only 20w14s:adventure/moneybag
advancement revoke @s[tag=!enough] only 20w14s:adventure/moneybag_check

tag @s remove enough
tag @s remove check_again