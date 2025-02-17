
execute as @n[type=block_display,tag=element_root] on passengers as \
@s[tag=background1] run data merge entity @s {item:{id:"minecraft:red_stained_glass_pane"}}

execute as @n[type=block_display,tag=element_root] on passengers as \
@s[tag=background2] run data merge entity @s {item:{id:"minecraft:orange_stained_glass_pane"}}
