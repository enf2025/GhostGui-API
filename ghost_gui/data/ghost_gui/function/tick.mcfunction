


execute as @a[tag=editor_mode] at @s run function ghost_gui:editor/tick

execute as @e[type=block_display,tag=ghost.tick_func] at @s on passengers as @s[type=marker,tag=functions] run function ghost_gui:run/tick_func with entity @s data