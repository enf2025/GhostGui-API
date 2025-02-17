

execute at @s unless predicate ghost_gui:is_sneaking anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/edit/ray_start {"type":'regular'}
execute at @s if predicate ghost_gui:is_sneaking anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/edit/ray_start {"type":'hover'}
