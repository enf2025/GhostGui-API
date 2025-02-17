playsound entity.blaze.hurt master @s ~ ~15 ~ 0.5 0.7

execute if items entity @s weapon.mainhand barrier anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/delete/ray_start {"type":"elements"}
execute if items entity @s weapon.mainhand structure_void anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/delete/ray_start {"type":"contents"}
