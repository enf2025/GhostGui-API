execute unless entity @n[type=block_display,tag=element_root,tag=move_grabbed] run tag @s add grab
execute if entity @n[type=block_display,tag=element_root,tag=move_grabbed] run tag @s add ungrab

execute if entity @s[tag=grab] positioned ~ ~1.75 ~ run function ghost_gui:editor/tool/move/ray_start {"type":"grab"}
execute if entity @s[tag=grab] as @n[type=block_display,tag=element_root,tag=move_grabbed] run data merge entity @s {Glowing:true}

execute if entity @s[tag=ungrab] as @n[type=block_display,tag=element_root,tag=move_grabbed] run data merge entity @s {Glowing:false}
execute if entity @s[tag=ungrab] run tag @n[type=block_display,tag=element_root,tag=move_grabbed] remove move_grabbed

tag @s remove grab
tag @s remove ungrab