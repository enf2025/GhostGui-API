$scoreboard players set @s ghost.index $(index)

$data modify storage ghost_gui temp.funcs set from storage ghost_gui main.saves.$(save)[$(index)]

tag @s add func_target

execute on passengers as @s[type=marker,tag=functions] unless data entity @s {data:{load:"empty"}} run function ghost_gui:run/load_func with entity @s data

execute on passengers as @s[type=marker,tag=functions] unless data entity @s {data:{tick:"empty"}} run function ghost_gui:run/tick_func with entity @s data


execute unless data storage ghost_gui {temp:{funcs:{tick:"empty"}}} run tag @s add ghost.tick_func
execute unless data storage ghost_gui {temp:{funcs:{click:"empty"}}} run tag @s add ghost.click_func
execute unless data storage ghost_gui {temp:{funcs:{hover:"empty"}}} run tag @s add ghost.hover_func
execute unless data storage ghost_gui {temp:{funcs:{hover_text:"empty"}}} run tag @s add ghost.hover_text_func


tag @s remove func_target