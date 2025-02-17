#create at position
$summon block_display ^$(rel_coord_x) ^$(rel_coord_y) ^$(rel_coord_z) {Tags:["loading","innit","$(type)"]}

#create passengers
$execute as @n[type=block_display,tag=loading,tag=innit] at @s run summon item_display ~ ~ ~ {Tags:["loading","init","background1","back"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.1f],scale:[$(background1_x)f,$(background1_y)f,$(background1_z)f]},item:{id:"$(background1_item)",count:1}}
$execute as @n[type=block_display,tag=loading,tag=innit] at @s run summon item_display ~ ~ ~ {Tags:["loading","init","background2","back"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.1f],scale:[$(background2_x)f,$(background2_y)f,$(background2_z)f]},item:{id:"$(background2_item)",count:1}}

$execute as @n[type=block_display,tag=loading,tag=innit,tag=item_slot] at @s run summon item_display ~ ~ ~ {Tags:["loading","init","background3","back"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.1f],scale:[$(background1_x)f,$(background1_y)f,$(background1_z)f]}}
$execute as @n[type=block_display,tag=loading,tag=innit,tag=text_box] at @s run summon text_display ~ ~ ~ {Tags:["loading","init","background3","back"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.1f],scale:[$(background1_x)f,$(background1_y)f,$(background1_z)f]}}

$execute as @n[type=block_display,tag=loading,tag=innit] at @s run summon marker ~ ~ ~ {Tags:["loading","init","functions"],data:{click: "$(click)",hover: "$(hover)",hover_text: "$(hover_text)",load: "$(load)",tick: "$(tick)"}}

execute as @e[tag=loading,tag=init] at @s run ride @s mount @n[type=block_display,tag=loading,tag=innit]


#displace passengers
execute as @n[type=block_display,tag=loading,tag=innit] on passengers as @s[tag=back] store result entity @s transformation.translation[0] float 0.00000005 run data get entity @s transformation.scale[0] 100000
execute as @n[type=block_display,tag=loading,tag=innit] on passengers as @s[tag=back] store result entity @s transformation.translation[1] float 0.00000005 run data get entity @s transformation.scale[1] 100000

#apply rotation
execute as @n[type=block_display,tag=loading,tag=innit] at @s rotated as @p[tag=ghost.loading] rotated ~-180 0 run tp @s ~ ~ ~ ~ ~
$execute as @n[type=block_display,tag=loading,tag=innit] at @s run tp @s ~ ~ ~ ~$(rel_rot_x) ~$(rel_rot_y)
execute as @n[type=block_display,tag=loading,tag=innit] at @s on passengers run tp @s ~ ~ ~ facing ^ ^ ^10

#apply function tags

execute as @n[type=block_display,tag=loading,tag=innit] run function ghost_gui:load/funcs with storage ghost_gui temp.check

execute as @n[type=block_display,tag=loading,tag=innit] on passengers run tag @s remove init
execute as @n[type=block_display,tag=loading,tag=innit] run tag @s remove innit