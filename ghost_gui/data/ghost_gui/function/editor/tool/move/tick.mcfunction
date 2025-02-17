


execute anchored eyes run tp @n[type=block_display,tag=element_root,tag=move_grabbed] ^ ^ ^1.5

execute as @n[type=block_display,tag=element_root,tag=move_grabbed] run function ghost_gui:editor/tool/move/grabbed
execute as @n[type=block_display,tag=element_root,tag=move_facing] at @s run function ghost_gui:editor/tool/move/facing


function ghost_gui:editor/tool/move/display with storage ghost_gui temp.element
execute unless entity @e[type=block_display,tag=move_grabbed] unless entity @e[type=block_display,tag=move_facing] run title @s actionbar [{"text": "Right click","color": "aqua"},{"text":" to grab ","color":"yellow"},{"text": "Left click","color": "gold"},{"text":" to change facing direction","color":"yellow"}]