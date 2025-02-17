
execute if items entity @s weapon.mainhand red_dye run tag @s add switch1
execute if items entity @s weapon.mainhand orange_dye run tag @s add switch2
execute if items entity @s weapon.mainhand green_dye run tag @s add switch3
execute if items entity @s weapon.mainhand light_blue_dye run tag @s add switch4
execute if items entity @s weapon.mainhand blue_dye run tag @s add switch5
execute if items entity @s weapon.mainhand pink_dye run tag @s add switch6



execute if entity @s[tag=switch1] run item replace entity @s weapon.mainhand with orange_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"Orange","color":"#ff6f00"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1

execute if entity @s[tag=switch2] run item replace entity @s weapon.mainhand with green_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"green","color":"#008202"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1

execute if entity @s[tag=switch3] run item replace entity @s weapon.mainhand with light_blue_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"light blue","color":"#00acb5"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1

execute if entity @s[tag=switch4] run item replace entity @s weapon.mainhand with blue_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"blue","color":"#2f00ff"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1

execute if entity @s[tag=switch5] run item replace entity @s weapon.mainhand with pink_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"pink","color":"#c300ff"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1

execute if entity @s[tag=switch6] run item replace entity @s weapon.mainhand with red_dye[item_name='[{"color":"light_purple","text":"Color tool - "},{"text":"red","color":"#be0000"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through colors, left click to apply"}'],custom_data={ghost_tool:1,tool:1b}] 1




playsound ui.loom.take_result master @s ~ ~10 ~ 0.5 2

tag @s remove switch1
tag @s remove switch2
tag @s remove switch3
tag @s remove switch4
tag @s remove switch5
tag @s remove switch6