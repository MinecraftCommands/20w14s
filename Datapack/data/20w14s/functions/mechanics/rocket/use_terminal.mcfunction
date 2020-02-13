scoreboard players set rocket_built temp 0
execute positioned ~ ~-5 ~ if predicate 20w14s:rocket_check run scoreboard players set rocket_built temp 1

execute if score rocket_built temp matches 0 run tellraw @a[tag=20w14s.temp_right_clicker] {"text":"Rocket incomplete:\n* Locate the Rocket Schematics book\n* Build the rocket as shown\n* Ensure all reinforced panels are correctly placed\n* Extra blocks and space around the rocket are optional\n* Control Panel must be placed in center","color":"red"}
execute if score rocket_built temp matches 1 run tellraw @a[tag=20w14s.temp_right_clicker] [{"text":"Rocket online. Ready to launch?\n","color":"aqua"},{"text":"[LAUNCH]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger 20w14s.lnch_rokt set 1"},"hoverEvent":{"action":"show_text","value":"All players in rocket will be brought along"}}]
execute if score rocket_built temp matches 1 run scoreboard players enable @a[tag=20w14s.temp_right_clicker] 20w14s.lnch_rokt