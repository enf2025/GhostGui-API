$summon block_display ^$(rel_coord_x) ^$(rel_coord_y) ^$(rel_coord_z) {Tags:["innit","test"],block_state:{Name:"obsidian"}}

execute as @n[type=block_display,tag=test,tag=innit] at @s run function ghost_gui:editor/tool/move/rotate_apply with storage ghost_gui temp.element
execute as @n[type=block_display,tag=test,tag=innit] run tag @s remove innit