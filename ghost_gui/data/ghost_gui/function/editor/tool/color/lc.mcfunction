playsound item.glow_ink_sac.use master @s ~ ~10 ~ 0.5 1.2

execute if items entity @s weapon.mainhand red_dye anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/color/ray_start {"color":"red"}
execute if items entity @s weapon.mainhand orange_dye anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/color/ray_start {"color":"orange"}
execute if items entity @s weapon.mainhand green_dye anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/color/ray_start {"color":"green"}
execute if items entity @s weapon.mainhand blue_dye anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/color/ray_start {"color":"blue"}
execute if items entity @s weapon.mainhand light_blue_dye anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/color/ray_start {"color":"light_blue"}
execute if items entity @s weapon.mainhand pink_dye anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/color/ray_start {"color":"pink"}