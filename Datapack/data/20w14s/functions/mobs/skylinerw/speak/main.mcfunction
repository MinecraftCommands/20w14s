playsound minecraft:entity.sheep.death hostile @a ~ ~ ~ 10 0.6
execute store success score $random.0 temp if predicate 20w14s:chance_33
execute store success score $random.1 temp if predicate 20w14s:chance_33
execute store success score $do_chat temp if score $random.0 temp matches 1
execute unless score $random.0 temp matches 1 store success score $do_chat temp if score $random.1 temp matches 1
execute if score $do_chat temp matches 1 run function 20w14s:mobs/skylinerw/speak/chat