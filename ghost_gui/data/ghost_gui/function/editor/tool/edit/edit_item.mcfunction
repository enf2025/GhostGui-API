$execute on passengers as @s[tag=item] run function $(item)
$tellraw @p[tag=editor_mode] [{"text":"Applied ","color":"green"},{"text":"$(item)","color":"dark_aqua"}]

playsound entity.arrow.hit_player master @p[tag=editor_mode] ~ ~ ~ 0.5 0.8