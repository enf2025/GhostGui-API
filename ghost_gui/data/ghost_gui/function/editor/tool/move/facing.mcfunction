particle bubble ~ ~ ~ 0.1 0.1 0.1 0 2
execute as @p[tag=editor_mode] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["face_target_ui"]}

execute as @n[type=marker,tag=face_target_ui] store result entity @s Pos[0] double 0.5 run data get entity @s Pos[0] 2
execute as @n[type=marker,tag=face_target_ui] store result entity @s Pos[1] double 0.5 run data get entity @s Pos[1] 2
execute as @n[type=marker,tag=face_target_ui] store result entity @s Pos[2] double 0.5 run data get entity @s Pos[2] 2


execute at @s on passengers run tp @s ~ ~ ~ facing entity @n[type=marker,tag=face_target_ui]

#get relative coords


function ghost_gui:editor/tool/move/turn_relative
function ghost_gui:editor/tool/move/get_facing
kill @e[type=marker,tag=face_target_ui]

