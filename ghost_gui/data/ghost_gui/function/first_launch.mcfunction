scoreboard players set temp ghost.first_launch 1

data modify storage ghost_gui temp.function.item set value 'ghost_gui:examples/item'
data modify storage ghost_gui temp.function.text set value 'ghost_gui:examples/text'
data modify storage ghost_gui temp.function.hover set value 'ghost_gui:examples/hover'



tellraw @a {"text":"\n\n==============================================","color":"green"}
tellraw @a [{"text":"Hello, this seems to be your first time launching ","color":"dark_green"},{"text":"GhostGui API","color":"aqua"},\
{"text":".\nIf you have no idea what youre doing, you can check the ","color":"dark_green"},{"text":"Download Page, help function ","color":"dark_aqua"},{"text":"or ask me, ","color":"dark_green"},{"text":"GhostScoutw","color":"dark_aqua"},{"text":"directly for help.","color":"dark_green"}]
tellraw @a {"text":"\n\n==============================================","color":"green"}
