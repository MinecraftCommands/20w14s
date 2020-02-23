execute align xyz run summon minecraft:armor_stand ~.5 ~ ~.5 {ArmorItems: [{},{},{},{id:"minecraft:rabbit_spawn_egg",Count:1b}],Marker:1b,Invisible:1b,Fire:32767s}
setblock ~ ~ ~ air
setblock ~ ~ ~ barrel{CustomName:'{"translate":"20w14s.autoMisspeller.name"}'}
data modify block ~ ~ ~ Items set from storage 20w14s:auto_misspeller templateBlockContents