summon arrow ~ ~ ~ {Tags:["throwable.projectile"]}
data modify entity @e[type=arrow,limit=1,tag=throwable.projectile] Motion set from entity @s Motion
tag @e[type=arrow,limit=1,tag=throwable.projectile] remove throwable.projectile
kill @s