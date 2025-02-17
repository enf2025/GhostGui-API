
execute if items entity @s weapon.mainhand barrier run tag @s add switch1
execute if items entity @s weapon.mainhand structure_void run tag @s add switch2



execute if entity @s[tag=switch1] run item replace entity @s weapon.mainhand with structure_void[item_name='[{"color":"light_purple","text":"Delete tool - "},{"text":"elements","color":"red"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through delete types, left click to delete"}'],custom_data={ghost_tool:7,tool:1b}] 1

execute if entity @s[tag=switch2] run item replace entity @s weapon.mainhand with barrier[item_name='[{"color":"light_purple","text":"Delete tool - "},{"text":"contents","color":"red"}]',lore=['{"color":"gray","italic":false,"text":"right click to cycle through delete types, left click to delete"}'],custom_data={ghost_tool:7,tool:1b}] 1




playsound ui.loom.take_result master @s ~ ~10 ~ 0.5 2

tag @s remove switch1
tag @s remove switch2
