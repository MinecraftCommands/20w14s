execute at @s run playsound minecraft:entity.puffer_fish.flop block @a ~ ~ ~ 200 1.5
tellraw @a [{"selector":"@a[advancements={20w14s:puff_hammer/player_hurt_entity=true},limit=1]"},{"text":"  "},{"selector":"@s"}]
advancement grant @s only 20w14s:adventure/puffer_banned
advancement revoke @a only 20w14s:puff_hammer/player_hurt_entity
kick @s