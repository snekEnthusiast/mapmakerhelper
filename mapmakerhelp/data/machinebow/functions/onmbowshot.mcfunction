advancement revoke @a only machinebow:mbowshot
schedule function machinebow:mbowammodown 1
execute as @p at @s if predicate machinebow:bullet run function machinebow:onbullet
execute as @p at @s if predicate machinebow:fireball as @e[type=arrow,sort=nearest,limit=1] at @s run function machinebow:onfireball
execute as @p at @s if predicate machinebow:wither rotated as @p as @e[type=arrow,sort=nearest,limit=1] at @s run function machinebow:onwither