$execute on passengers as @s[tag=text_box] run function $(text)
$tellraw @p[tag=editor_mode] [{"text":"Applied ","color":"green"},{"text":"$(text)","color":"dark_aqua"}]

playsound entity.arrow.hit_player master @p[tag=editor_mode] ~ ~ ~ 0.5 0.8