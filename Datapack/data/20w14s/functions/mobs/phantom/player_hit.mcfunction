effect give @s unluck 30
give @s written_book{pages:['{"text":"Add the bed to your hotbar and make sure that it is the selected item in the hotbar.\\nNext, position your pointer (the plus sign) on the block where you want to place your bed. You need at least two blocks to place your bed. You should see the block become highlighted in your game window."}','["",{"text":"Next "},{"keybind":"key.use"},{"text":" on the block. You should see your bed appear on the block that you selected. Now that you have placed your bed in your Minecraft world, you need to wait for night. When it is night, "},{"keybind":"key.use"},{"text":" on the bed.\\n"},{"text":"TIP:","bold":true},{"text":" You can not sleep in the bed during the day!","color":"reset"}]','{"text":"If you wait, it will turn to morning and you will automatically wake up standing next to your bed. Now that you have slept in your bed, your spawn point will be reset. If you die in the game, you will respawn in this location. That is a great way to not get lost in your Minecraft world."}'],title:"How to Sleep",author:"jeb_"}
give @s red_bed
tellraw @s {"text":"<Jeb> Hey kids, Jens 'Jeb' Bergensten here! Make sure to get plenty of sleep to stay healthy, and eat a balanced breakfast, the building blocks of a healthy lifestyle! Have fun and keep crafting! Jeb out"}
recipe take @s red_bed
recipe give @s red_bed
playsound 20w14s:jeb_ouch master @s
advancement revoke @s only 20w14s:hurt_by_phantom