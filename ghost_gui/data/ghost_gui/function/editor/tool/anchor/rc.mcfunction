
execute as @e[type=block_display,tag=anchor_edit] at @s run function ghost_gui:editor/tool/anchor/delete

summon block_display ~ ~ ~ {Tags:["anchor","anchor_edit","innit"]}


tp @n[type=block_display,tag=anchor_edit,tag=innit] ~ ~ ~ 180 0

tag @n[type=block_display,tag=anchor_edit,tag=innit] remove innit

tellraw @s {"text":"To save the current layout, use function ghost_gui:save {\"slot\":\"<name>\"}","color":"aqua"}
playsound entity.shulker.teleport master @p[tag=editor_mode] ~ ~5 ~ 0.5 0.5