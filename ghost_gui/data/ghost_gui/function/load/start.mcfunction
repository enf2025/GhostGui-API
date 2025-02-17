
scoreboard players set @s ghost.index 0
scoreboard players set @s ghost.index_exists 0

tag @s add ghost.loading
$execute store result score @s ghost.index_exists run data get storage ghost_gui main.saves.$(slot)
$execute if score @s ghost.index_exists matches 1.. run data modify storage ghost_gui temp.check.save set value '$(slot)'

tellraw @s [{"score":{"name":"@s","objective":"ghost.index_exists"}},{"text":" indexes"}] 
$execute if score @s ghost.index_exists matches 1.. run tellraw @s [{"text":"Loading save ","color":"aqua"},{"text":"$(slot)","color":"dark_aqua"}]

$execute if score @s ghost.index_exists matches 1.. run function ghost_gui:load/start_loop {"slot":"$(slot)"}
tag @s remove ghost.loading