$summon marker ~ ~ ~ {Tags:["raycast","resize_cast","resize_$(type)","innit"]}

tp @n[type=marker,tag=innit,tag=raycast] ~ ~ ~ facing ^ ^ ^10

execute as @n[type=marker,tag=innit,tag=raycast] run scoreboard players set @s ghost.ray_lifetime 100
execute as @n[type=marker,tag=innit,tag=raycast] at @s run function ghost_gui:editor/tool/resize/ray_loop