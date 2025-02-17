tag @s remove innit
execute unless entity @s[scores={ghost.ray_lifetime=..0}] run scoreboard players remove @s ghost.ray_lifetime 1
execute unless entity @s[scores={ghost.ray_lifetime=..0}] at @s run tp @s ^ ^ ^0.05

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] run scoreboard players set @s ghost.ray_lifetime 0
execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity @s[tag=resize_increase] as @n[type=block_display,tag=element_root,distance=..0.2] run function ghost_gui:editor/tool/resize/increase
execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity @s[tag=resize_decrease] as @n[type=block_display,tag=element_root,distance=..0.2] run function ghost_gui:editor/tool/resize/decrease


execute if entity @s[scores={ghost.ray_lifetime=..0}] run kill @s
execute if entity @s[scores={ghost.ray_lifetime=1..}] at @s run function ghost_gui:editor/tool/resize/ray_loop