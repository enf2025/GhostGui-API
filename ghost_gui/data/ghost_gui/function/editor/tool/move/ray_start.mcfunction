$summon marker ~ ~ ~ {Tags:["raycast","move_cast","move_$(type)","innit"]}

tp @n[type=marker,tag=innit,tag=raycast] ~ ~ ~ facing ^ ^ ^10

execute as @n[type=marker,tag=innit,tag=raycast] run scoreboard players set @s ghost.ray_lifetime 100
execute as @n[type=marker,tag=innit,tag=raycast] at @s run function ghost_gui:editor/tool/move/ray_loop