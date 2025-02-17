tag @s remove innit
execute unless entity @s[scores={ghost.ray_lifetime=..0}] run scoreboard players remove @s ghost.ray_lifetime 1
execute unless entity @s[scores={ghost.ray_lifetime=..0}] at @s run tp @s ^ ^ ^0.05

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] run scoreboard players set @s ghost.ray_lifetime 0



execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=color_red] run function ghost_gui:editor/tool/color/apply/red

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=color_orange] run function ghost_gui:editor/tool/color/apply/orange

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=color_green] run function ghost_gui:editor/tool/color/apply/green

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=color_light_blue] run function ghost_gui:editor/tool/color/apply/light_blue

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=color_blue] run function ghost_gui:editor/tool/color/apply/blue

execute if entity @n[type=block_display,tag=element_root,distance=..0.2] if entity \
@s[tag=color_pink] run function ghost_gui:editor/tool/color/apply/pink


execute if entity @s[scores={ghost.ray_lifetime=..0}] run kill @s
execute if entity @s[scores={ghost.ray_lifetime=1..}] at @s run function ghost_gui:editor/tool/color/ray_loop