summon block_display ^ ^ ^1.5 {Tags:["element_root","element","menu","innit","ui_text_box","element_edit"],\
Passengers:[\
    {id:"minecraft:item_display",Tags:["element","menu","background1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},item:{id:"minecraft:green_stained_glass_pane",count:1}},\
    \
    {id:"minecraft:item_display",Tags:["element","menu","background2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.5f]},item:{id:"minecraft:lime_stained_glass_pane",count:1}},\
    \
    {id:"minecraft:text_display",alignment:"center",Tags:["element","text_box","menu"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.175f,0.05f],scale:[0.1f,0.1f,1f]},\
    text:'[{"text":"Hello!\\n\\nTo change this text display, insert\\nthe function with the /data modify command into the function\\n"},{"text":"ghost_gui:text_function\\n","color":"yellow","bold":true},{"text":"and apply it here with the "},{"text":"Edit tool\\n\\n","color":"light_purple"},{"text":"example: \\n"},{"text":"/function ghost_gui:text_function {\\"function\\":\\"ghost_gui:messages/example\\"}\\n\\nInserted function will be run\\nevery tick to ensure that\\nscoreboard values get\\nupdated"}]',background:0},\
    \
    {id:"minecraft:marker",Tags:["element","menu","marker_func"],data:{name:"functions",load:"empty",tick:"empty",click:"empty",hover:"empty",hover_text:"empty"}}],\
\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.05f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:emerald_block"}}

execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] store result entity @s Pos[0] double 0.125 run data get entity @s Pos[0] 8
execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] store result entity @s Pos[1] double 0.125 run data get entity @s Pos[1] 8
execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] store result entity @s Pos[2] double 0.125 run data get entity @s Pos[2] 8

execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] run tag @s remove innit

