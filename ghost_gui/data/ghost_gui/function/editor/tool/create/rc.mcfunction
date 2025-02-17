
execute if items entity @s weapon.mainhand white_wool run tag @s add switch1
execute if items entity @s weapon.mainhand item_frame run tag @s add switch2
execute if items entity @s weapon.mainhand birch_sign run tag @s add switch3


#empty - done
#item slot - done
#text box - partial



execute if entity @s[tag=switch1] run item replace entity @s weapon.mainhand with item_frame[item_name='{"color":"light_purple","text":"ITEM SLOT - create tool"}',lore=['{"color":"gray","italic":false,"text":"right click to cycle through elements, left click to place"}'],custom_data={ghost_tool:6,tool:1b}] 1

execute if entity @s[tag=switch2] run item replace entity @s weapon.mainhand with birch_sign[item_name='{"color":"light_purple","text":"TEXT BOX - create tool"}',lore=['{"color":"gray","italic":false,"text":"right click to cycle through elements, left click to place"}'],custom_data={ghost_tool:6,tool:1b}] 1

execute if entity @s[tag=switch3] run item replace entity @s weapon.mainhand with white_wool[item_name='{"color":"light_purple","text":"EMPTY - create tool"}',lore=['{"color":"gray","italic":false,"text":"right click to cycle through elements, left click to place"}'],custom_data={ghost_tool:6,tool:1b}] 1




playsound ui.loom.take_result master @s ~ ~10 ~ 0.5 2

tag @s remove switch1
tag @s remove switch2
tag @s remove switch3
