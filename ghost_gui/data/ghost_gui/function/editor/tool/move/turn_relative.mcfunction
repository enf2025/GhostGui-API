execute store result score @s ghost.rel_pos_x run data get entity @s Pos[0] 100
execute store result score @s ghost.rel_pos_y run data get entity @s Pos[1] 100
execute store result score @s ghost.rel_pos_z run data get entity @s Pos[2] 100

execute as @n[type=block_display,tag=anchor_edit] store result score @s ghost.rel_pos_x run data get entity @s Pos[0] 100
execute as @n[type=block_display,tag=anchor_edit] store result score @s ghost.rel_pos_y run data get entity @s Pos[1] 100
execute as @n[type=block_display,tag=anchor_edit] store result score @s ghost.rel_pos_z run data get entity @s Pos[2] 100

execute run scoreboard players operation @s ghost.rel_pos_x -= @n[type=block_display,tag=anchor_edit] ghost.rel_pos_x
execute run scoreboard players operation @s ghost.rel_pos_y -= @n[type=block_display,tag=anchor_edit] ghost.rel_pos_y
execute run scoreboard players operation @s ghost.rel_pos_z -= @n[type=block_display,tag=anchor_edit] ghost.rel_pos_z

execute run scoreboard players operation @s ghost.rel_pos_x *= invert ghost.rel_pos_z
execute run scoreboard players operation @s ghost.rel_pos_z *= invert ghost.rel_pos_z

execute store result storage ghost_gui temp.element.rel_coord_x float 0.01 run scoreboard players get @s ghost.rel_pos_x
execute store result storage ghost_gui temp.element.rel_coord_y float 0.01 run scoreboard players get @s ghost.rel_pos_y
execute store result storage ghost_gui temp.element.rel_coord_z float 0.01 run scoreboard players get @s ghost.rel_pos_z
