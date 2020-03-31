data modify storage 20w14s:mobs/skylinerw queue append from storage 20w14s:mobs/skylinerw output
execute if score $random.0 temp matches 1 if score $random.1 temp matches 0 run function 20w14s:mobs/skylinerw/speak/shuffle_list/1
execute if score $random.0 temp matches 0 if score $random.1 temp matches 1 run function 20w14s:mobs/skylinerw/speak/shuffle_list/2
execute if score $random.0 temp matches 1 if score $random.1 temp matches 1 run function 20w14s:mobs/skylinerw/speak/shuffle_list/3