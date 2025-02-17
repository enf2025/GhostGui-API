execute unless score @s ghost.size matches 1..10 run scoreboard players set @s ghost.size 5

execute if score @s ghost.size matches ..9 run scoreboard players add @s ghost.size 1

execute store result storage ghost_gui temp.elements.size float 1 run scoreboard players get @s ghost.size
#window size
execute store result storage ghost_gui temp.elements.size1 float 0.1 run data get storage ghost_gui temp.elements.size
execute store result storage ghost_gui temp.elements.size2 float 0.12 run data get storage ghost_gui temp.elements.size

execute store result storage ghost_gui temp.elements.size3 float 0.2 run data get storage ghost_gui temp.elements.size

#item size
execute store result storage ghost_gui temp.elements.size4 float 0.08 run data get storage ghost_gui temp.elements.size
execute store result storage ghost_gui temp.elements.size5 float 0.13 run data get storage ghost_gui temp.elements.size

#text size
execute store result storage ghost_gui temp.elements.size6 float 0.02 run data get storage ghost_gui temp.elements.size
execute store result storage ghost_gui temp.elements.size7 float -0.04 run data get storage ghost_gui temp.elements.size
execute store result storage ghost_gui temp.elements.size8 float 0.01 run data get storage ghost_gui temp.elements.size

function ghost_gui:editor/tool/resize/apply with storage ghost_gui temp.elements

