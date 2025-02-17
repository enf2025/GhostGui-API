playsound block.crafter.craft master @s ~ ~ ~ 1 1


execute if items entity @s weapon.mainhand white_wool anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/create/empty
execute if items entity @s weapon.mainhand item_frame anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/create/item_slot
execute if items entity @s weapon.mainhand birch_sign anchored eyes positioned ^ ^ ^ run function ghost_gui:editor/tool/create/text_box
