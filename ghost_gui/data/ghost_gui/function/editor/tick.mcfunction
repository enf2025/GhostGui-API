title @s actionbar ""

scoreboard players remove @s[scores={ghost.rcooldown=1..}] ghost.rcooldown 1

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:1}] run function ghost_gui:editor/tool/color/tick
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:2}] run function ghost_gui:editor/tool/move/tick
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:3}] run function ghost_gui:editor/tool/resize/tick
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:4}] run function ghost_gui:editor/tool/edit/tick
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:5}] run function ghost_gui:editor/tool/anchor/tick
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:6}] run function ghost_gui:editor/tool/create/tick
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ghost_tool:7}] run function ghost_gui:editor/tool/delete/tick

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{tool:1b}] run title @s actionbar [{"text":"You are in editor mode, use ","color":"gold"},{"text":"ghost_gui:editor/toggle","color":"yellow"},{"text":" to disable.","color":"gold"}]

execute unless entity @e[type=interaction,distance=..3,tag=editor_controller] run kill @e[type=interaction,tag=editor_controller]
execute unless entity @e[type=interaction,distance=..3,tag=editor_controller] run summon interaction ~ ~ ~ {Tags:["editor_controller"],width:2.5,height:2.2}


tp @n[type=interaction,tag=editor_controller] ~ ~ ~

execute as @e[type=interaction,tag=editor_controller] run function ghost_gui:editor/tool/right_click_det


execute as @e[type=block_display,tag=anchor_edit] at @s run function ghost_gui:editor/tool/anchor/arrow
#color - done
#move - done
#resize - done
#edit - done(?)
#identify - 
#create - done