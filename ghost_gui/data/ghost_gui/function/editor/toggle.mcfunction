execute if entity @s[tag=editor_mode] run tag @s add editor_off
execute if entity @s[tag=!editor_mode] run tag @s add editor_on


#TURNED ON
execute if entity @s[tag=editor_on] run tag @s add editor_mode
execute if entity @s[tag=editor_on] run tellraw @s {"text":"editor mode on","color":"green"}

#color
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.0 with red_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"red","color":"#be0000"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1

#move
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.1 with firework_star[item_name='{"color":"light_purple","text":"Move tool"}',lore=['{"color":"gray","italic":false,"text":"right click to grab, left change facing direction"}'],custom_data={ghost_tool:2,tool:1b},attribute_modifiers={modifiers:[{id:"movement_speed",type:"generic.movement_speed",amount:-0.08,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

#resize
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.2 with nether_star[item_name='{"color":"light_purple","text":"Resize tool"}',lore=['{"color":"gray","italic":false,"text":"right click to increase, left click to decrease"}'],custom_data={ghost_tool:3,tool:1b}] 1

#edit
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.3 with flint[item_name='{"color":"light_purple","text":"Edit tool"}',lore=['{"color":"gray","italic":false,"text":"right for help, left click to apply from storage (shift for hover text)"}'],custom_data={ghost_tool:4,tool:1b}] 1

#anchor
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.4 with dune_armor_trim_smithing_template[item_name='{"color":"light_purple","text":"Anchor tool"}',lore=['{"color":"gray","italic":false,"text":"right click to summon an empty anchor, left click to delete anchor"}'],custom_data={ghost_tool:5,tool:1b},hide_additional_tooltip={}] 1

#create
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.5 with white_wool[item_name='{"color":"light_purple","text":"EMPTY - create tool"}',lore=['{"color":"gray","italic":false,"text":"right click to cycle through elements, left click to place"}'],custom_data={ghost_tool:6,tool:1b}] 1

#delete
execute if entity @s[tag=editor_on] run item replace entity @s \
hotbar.6 with barrier[item_name='[{"color":"light_purple","text":"Delete tool - "},{"text":"elements","color":"red"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through delete types, left click to delete"}'],custom_data={ghost_tool:7,tool:1b}] 1

#TURNED OFF
execute if entity @s[tag=editor_off] run tag @s remove editor_mode
execute if entity @s[tag=editor_off] run tellraw @s {"text":"editor mode off","color":"red"}
execute if entity @s[tag=editor_off] run clear @s *[custom_data~{tool:1b}]
execute if entity @s[tag=editor_off] run kill @e[type=interaction,tag=editor_controller]


title @s actionbar ""
tag @s remove editor_off
tag @s remove editor_on