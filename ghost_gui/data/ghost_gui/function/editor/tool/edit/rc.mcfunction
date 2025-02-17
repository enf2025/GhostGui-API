
tellraw @s {"text":"================================","color":"dark_green"}
tellraw @s {"text":"Set function with contents on function ghost_gui:<type>_function\n","color":"dark_green"}
tellraw @s {"text":"Edit text box - text","color":"dark_green"}
tellraw @s {"text":"Edit item slot - item","color":"dark_green"}
tellraw @s {"text":"Edit hover text - hover","color":"dark_green"}

tellraw @s {"text":"Example:","color":"dark_green"}
tellraw @s {"text":"function ghost_gui:text_function {\"function\":\"code:texts/welcome\"}","color":"green"}

function ghost_gui:editor/tool/edit/equipped with storage ghost_gui temp.function

tellraw @s {"text":"================================","color":"dark_green"}

playsound item.book.page_turn master @s ~ ~10 ~ 0.5 2

