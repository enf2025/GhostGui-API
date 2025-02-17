# $(slot) for which storage name the layout will be saved to

$tellraw @s [{"text":"Saving layout to ","color":"aqua"},{"text":"$(slot)","color":"dark_aqua"}]
$data remove storage ghost_gui main.saves.$(slot)

$execute as @n[type=block_display,tag=anchor_edit] at @s as @e[type=block_display,tag=element_edit,distance=..10,sort=nearest] run function ghost_gui:save/save_apply {"slot":"$(slot)"}
$execute store result score @s ghost.index_exists run data get storage ghost_gui main.saves.$(slot)

$tellraw @s [{"text":"$(slot)","color":"dark_aqua"},{"text":" Has been saved to ghost_gui:main.saves.$(slot)","color":"aqua"}]
