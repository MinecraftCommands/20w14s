# If $skylinerw_num equals 0, the schedule clock will stop
scoreboard players add 20w14s.skylinerw_num global 1
# Start schedule
schedule function 20w14s:mobs/skylinerw/loop/main 1s
# Summon real skylinerw
summon minecraft:endermite ~ ~ ~ {Silent:1b,PersistenceRequired:true,Tags:["20w14s.custom", "20w14s.skylinerw.endermite"],Invulnerable:true,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:false}],Passengers:[{id:"minecart",Tags:["20w14s.custom", "20w14s.skylinerw.minecart"],Invulnerable:true,CustomDisplayTile: true, DisplayState: {Properties: {conditional: "true", facing: "down"}, Name: "minecraft:command_block"},DisplayOffset:10,Passengers:[{id:"slime",Tags:["20w14s.custom", "20w14s.skylinerw.slime"],Size:2,AbsorptionAmount:100f,Attributes:[{Name:"generic.maxHealth",Base:100d}],Health:100f,DeathTime:19s,Silent:1b,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:false}]}]}]}
# Assert genocidal intent
tellraw @a ["<", {"insertion":"Skylinerw","clickEvent":{"action":"suggest_command","value":"/tell Skylinerw "},"hoverEvent":{"action":"show_entity","value":{"text":"{name:'{\"text\":\"Skylinerw\"}',id:\"b9aa57fe-649e-4d48-806e-63af2faff5c6\",type:\"minecraft:player\"}"}},"text":"Skylinerw"}, "> ＤＥＳＴＲＯＹ ＡＬＬ ＨＵＭＡＮＳ"]
# Equip him with the hammer of puffer
loot replace entity @e[tag=20w14s.skylinerw.slime,tag=!20w14s.initialized] weapon.mainhand 1 loot 20w14s:items/puff_hammer
# Mark him as initialized
tag @e[tag=20w14s.skylinerw.slime] remove 20w14s.initialized