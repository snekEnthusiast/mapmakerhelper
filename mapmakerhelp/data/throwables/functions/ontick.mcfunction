execute as @a at @s positioned ~ ~1.5 ~ if entity @e[distance=0.5..2,type=snowball] run function throwables:onthrow
execute at @e[type=arrow,nbt={inGround:1b},tag=throwable.explosive] run function throwables:explode
kill @e[type=arrow,nbt={inGround:1b},tag=throwable.explosive]