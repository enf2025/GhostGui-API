summon block_display ^ ^ ^1.5 {Tags:["element_root","element","menu","innit","ui_item_slot","element_edit"],\
Passengers:[\
    {id:"minecraft:item_display",Tags:["element","menu","background1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},item:{id:"minecraft:green_stained_glass_pane",count:1}},\
    \
    {id:"minecraft:item_display",Tags:["element","menu","background2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.5f]},item:{id:"minecraft:lime_stained_glass_pane",count:1}},\
    \
    {id:"minecraft:item_display",Tags:["element","menu","item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.025f],scale:[0.4f,0.4f,0.6f]},item:{id:"minecraft:iron_sword",count:1}},\
    \
    {id:"minecraft:marker",Tags:["element","menu","marker_func"],data:{name:"functions",load:"empty",tick:"empty",click:"empty",hover:"empty",hover_text:"empty"}}],\
    \
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.05f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:emerald_block"}}

execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] store result entity @s Pos[0] double 0.125 run data get entity @s Pos[0] 8
execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] store result entity @s Pos[1] double 0.125 run data get entity @s Pos[1] 8
execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] store result entity @s Pos[2] double 0.125 run data get entity @s Pos[2] 8

execute positioned ^ ^ ^1.5 as @n[type=block_display,tag=element_root,tag=innit] run tag @s remove innit