# Triggered when open backpack is put in itself
kill @s
playsound entity.generic.explode master @a ~ ~ ~ 2 2
particle explosion_emitter ~ ~ ~ 0 0 0 1 2
kill @e[type=item,distance=..10,nbt={Item:{tag:{20w14s:{opened:1b}}}}]