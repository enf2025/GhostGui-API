$execute on passengers as @s[tag=background1] run data modify entity @s transformation.scale set value [$(size1)f,$(size1)f,$(size3)f]
$execute on passengers as @s[tag=background2] run data modify entity @s transformation.scale set value [$(size2)f,$(size2)f,$(size1)f]

$execute on passengers as @s[tag=item] run data modify entity @s transformation.scale set value [$(size4)f,$(size4)f,$(size5)f]

$execute on passengers as @s[tag=text_box] run data modify entity @s transformation.scale set value [$(size6)f,$(size6)f,1f]
$execute on passengers as @s[tag=text_box] run data modify entity @s transformation.translation set value [0f,$(size7)f,$(size8)f]
