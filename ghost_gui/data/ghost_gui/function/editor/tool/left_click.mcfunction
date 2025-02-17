
#color tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:1}] run function ghost_gui:editor/tool/color/lc

#move tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:2}] run function ghost_gui:editor/tool/move/lc

#resize tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:3}] run function ghost_gui:editor/tool/resize/lc

#edit tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:4}] run function ghost_gui:editor/tool/edit/lc

#anchor tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:5}] run function ghost_gui:editor/tool/anchor/lc

#create tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:6}] run function ghost_gui:editor/tool/create/lc

#delete tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:7}] run function ghost_gui:editor/tool/delete/lc



execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. run scoreboard players set @s ghost.rcooldown 3
