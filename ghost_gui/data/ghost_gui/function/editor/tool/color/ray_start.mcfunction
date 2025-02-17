$summon marker ~ ~ ~ {Tags:["raycast","color_cast","color_$(color)","innit"]}

tp @n[type=marker,tag=innit,tag=raycast] ~ ~ ~ facing ^ ^ ^10

execute as @n[type=marker,tag=innit,tag=raycast] run scoreboard players set @s ghost.ray_lifetime 100
execute as @n[type=marker,tag=innit,tag=raycast] at @s run function ghost_gui:editor/tool/color/ray_loop