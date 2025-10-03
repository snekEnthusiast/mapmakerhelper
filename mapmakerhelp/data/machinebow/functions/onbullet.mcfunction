data modify entity @e[type=arrow,sort=nearest,limit=1] NoGravity set value 1b
execute store result entity @e[type=arrow,sort=nearest,limit=1] Motion[0] int 2 run data get entity @e[type=arrow,sort=nearest,limit=1] Motion[0]
execute store result entity @e[type=arrow,sort=nearest,limit=1] Motion[1] int 2 run data get entity @e[type=arrow,sort=nearest,limit=1] Motion[1]
execute store result entity @e[type=arrow,sort=nearest,limit=1] Motion[2] int 2 run data get entity @e[type=arrow,sort=nearest,limit=1] Motion[2]