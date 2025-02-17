tag @s remove innit
execute unless entity @s[scores={ghost.ray_lifetime=..0}] run scoreboard players remove @s ghost.ray_lifetime 1
execute unless entity @s[scores={ghost.ray_lifetime=..0}] at @s run tp @s ^ ^ ^0.05

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] run scoreboard players set @s ghost.ray_lifetime 0
execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity @s[tag=move_grab] as @n[type=block_display,tag=element_root,distance=..0.2] run tag @s add move_grabbed
execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity @s[tag=move_face] as @n[type=block_display,tag=element_root,distance=..0.2] run tag @s add move_facing


execute if entity @s[scores={ghost.ray_lifetime=..0}] run kill @s
execute if entity @s[scores={ghost.ray_lifetime=1..}] at @s run function ghost_gui:editor/tool/move/ray_loop