execute unless entity @n[type=block_display,tag=element_root,tag=move_facing] run tag @s add face
execute if entity @n[type=block_display,tag=element_root,tag=move_facing] run tag @s add unface

execute if entity @s[tag=face] anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/move/ray_start {"type":"face"}


execute if entity @s[tag=unface] run tag @n[type=block_display,tag=element_root,tag=move_facing] remove move_facing


tag @s remove face
tag @s remove unface