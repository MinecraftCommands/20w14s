playsound entity.blaze.hurt master @a
particle block repeating_command_block ~ ~0.2 ~ 0.5 0.5 0.5 1 30

scoreboard players operation prev_snake_tail_length temp = snake_tail_length temp
scoreboard players operation prev_id temp = id temp

# Remove tail end
scoreboard players remove @s 20w14s.tail 1
scoreboard players operation snake_tail_length temp = @s 20w14s.tail
scoreboard players operation id temp = @s 20w14s.id
execute as @e[type=area_effect_cloud,tag=20w14s.command_snake_tail] if score @s 20w14s.id = id temp at @s run function 20w14s:mobs/command_snake/tail_destroy

# Death
execute if score @s 20w14s.tail matches ..2 run function 20w14s:mobs/command_snake/die

scoreboard players operation snake_tail_length temp = prev_snake_tail_length temp
scoreboard players operation id temp = prev_id temp