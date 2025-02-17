
#color tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:1}] run function ghost_gui:editor/tool/color/rc

#move tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:2}] run function ghost_gui:editor/tool/move/rc

#resize tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:3}] run function ghost_gui:editor/tool/resize/rc

#edit tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:4}] run function ghost_gui:editor/tool/edit/rc

#anchor tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:5}] run function ghost_gui:editor/tool/anchor/rc

#create tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:6}] run function ghost_gui:editor/tool/create/rc

#delete tool
execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. if items entity @s \
weapon.mainhand *[custom_data~{ghost_tool:7}] run function ghost_gui:editor/tool/delete/rc



execute unless score @s[tag=editor_mode] ghost.rcooldown matches 1.. run scoreboard players set @s ghost.rcooldown 3
