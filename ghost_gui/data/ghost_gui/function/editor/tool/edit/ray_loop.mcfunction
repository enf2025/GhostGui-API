tag @s remove innit
execute unless entity @s[scores={ghost.ray_lifetime=..0}] run scoreboard players remove @s ghost.ray_lifetime 1
execute unless entity @s[scores={ghost.ray_lifetime=..0}] at @s run tp @s ^ ^ ^0.05

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] run scoreboard players set @s ghost.ray_lifetime 0

execute if entity @n[type=block_display,tag=element_root,distance=..0.2,tag=ui_text_box] if entity \
@s[tag=edit_regular] as @n[type=block_display,tag=element_root,distance=..0.2] \
run function ghost_gui:editor/tool/edit/edit_text with storage minecraft:ghost_gui temp.function

execute if entity @n[type=block_display,tag=element_root,distance=..0.2,tag=ui_item_slot] if entity \
@s[tag=edit_regular] as @n[type=block_display,tag=element_root,distance=..0.2] \
run function ghost_gui:editor/tool/edit/edit_item with storage minecraft:ghost_gui temp.function

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=edit_hover] as @n[type=block_display,tag=element_root,distance=..0.2] \
run function ghost_gui:editor/tool/edit/edit_hover with storage minecraft:ghost_gui temp.function

execute if entity @s[scores={ghost.ray_lifetime=..0}] run kill @s
execute if entity @s[scores={ghost.ray_lifetime=1..}] at @s run function ghost_gui:editor/tool/edit/ray_loop
