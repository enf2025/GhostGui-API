
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true

# To make sure your datapack is working, a load message can be useful.
tellraw @a { "color": "#97fb97", "text": "Ghost Gui LIB loaded."}
tellraw @a { "color": "#639e63", "text": "Do /function ghost_gui:help if you are lost"}



scoreboard objectives add ghost.rcooldown dummy
scoreboard objectives add ghost.ray_lifetime dummy
scoreboard objectives add ghost.size dummy

scoreboard objectives add ghost.rel_pos_x dummy
scoreboard objectives add ghost.rel_pos_y dummy
scoreboard objectives add ghost.rel_pos_z dummy

scoreboard objectives add ghost.index dummy
scoreboard objectives add ghost.index_exists dummy

scoreboard players set invert ghost.rel_pos_z -1

scoreboard objectives add ghost.first_launch dummy
execute unless score temp ghost.first_launch matches 1 run function ghost_gui:first_launch


