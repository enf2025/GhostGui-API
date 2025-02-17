
execute unless score @s ghost.size matches -100..100 run scoreboard players set @s ghost.size 5

execute store result storage ghost_gui temp.element.size int 1 run scoreboard players get @s ghost.size

execute if entity @s[tag=ui_empty] run data modify storage ghost_gui temp.element.type set value 'empty'
execute if entity @s[tag=ui_item_slot] run data modify storage ghost_gui temp.element.type set value 'item_slot'
execute if entity @s[tag=ui_text_box] run data modify storage ghost_gui temp.element.type set value 'text_box'
