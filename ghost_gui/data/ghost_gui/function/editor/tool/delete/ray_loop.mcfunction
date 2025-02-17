tag @s remove innit
execute unless entity @s[scores={ghost.ray_lifetime=..0}] run scoreboard players remove @s ghost.ray_lifetime 1
execute unless entity @s[scores={ghost.ray_lifetime=..0}] at @s run tp @s ^ ^ ^0.05

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] run scoreboard players set @s ghost.ray_lifetime 0

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity @s[tag=delete_elements] as @n[type=block_display,tag=element_root] at @s run function ghost_gui:editor/tool/delete/elements
execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity @s[tag=delete_contents] as @n[type=block_display,tag=element_root] at @s run function ghost_gui:editor/tool/delete/contents

execute if entity @s[scores={ghost.ray_lifetime=..0}] run kill @s
execute if entity @s[scores={ghost.ray_lifetime=1..}] at @s run function ghost_gui:editor/tool/delete/ray_loop