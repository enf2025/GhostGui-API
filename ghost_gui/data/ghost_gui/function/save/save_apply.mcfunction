function ghost_gui:editor/tool/move/turn_relative
function ghost_gui:editor/tool/move/get_facing
function ghost_gui:editor/tool/move/get_typesize
function ghost_gui:save/get_backs
function ghost_gui:save/get_front
execute on passengers as @s[tag=marker_func,tag=element] run function ghost_gui:save/get_functions

$data modify storage ghost_gui main.saves.$(slot) append from storage ghost_gui temp.element