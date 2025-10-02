execute as @a at @s if entity @e[tag=checkpoint.checkpoint,distance=..2] run function checkpoint:nearcheckpoint
execute at @e[tag=checkpoint.checkpoint] run particle dust 0.000 1.000 0.000 1 ~ ~ ~ 1 2 1 1 30 normal

execute at @e[tag=checkpoint.delete] run kill @e[tag=checkpoint.checkpoint,sort=nearest,limit=1,distance=..20]
kill @e[tag=checkpoint.delete]