tag @s add old
summon arrow ~ ~ ~ {Tags:["new","20w14s.puff_arrow"],pickup:0b,Passengers:[{id:"minecraft:area_effect_cloud",Duration:1200,Tags:["20w14s.puff_arrow_aec","new"]}]}
execute as @e[type=arrow,limit=1,distance=0,tag=new] run function 20w14s:mechanics/pufferfish_arrow/replace/2
kill @s