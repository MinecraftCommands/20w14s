execute as @e[type=minecart,tag=20w14s.skylinerw.minecart] at @s run function 20w14s:mobs/skylinerw/loop/minecart
# Continue loop if at least one skylinerw is alive
execute if score 20w14s.skylinerw_num global matches 1.. run schedule function 20w14s:mobs/skylinerw/loop/main 3s