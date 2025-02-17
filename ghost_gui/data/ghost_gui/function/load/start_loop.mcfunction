
#get type, spawn on relative coordinates
#fix rotation
#apply color and size
#properly tag them
#apply function contents


execute store result storage ghost_gui temp.check.index int 1 run scoreboard players get @s ghost.index

execute at @s rotated ~ 0 run function ghost_gui:load/on_index with storage ghost_gui temp.check
scoreboard players add @s ghost.index 1
execute if score @s ghost.index < @s ghost.index_exists run function ghost_gui:load/start_loop
