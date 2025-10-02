execute store result score target0 tempstorage run data get entity @e[type=#impact_projectiles,sort=nearest,limit=1] Owner[0]
execute store result score target1 tempstorage run data get entity @e[type=#impact_projectiles,sort=nearest,limit=1] Owner[1]
execute store result score target2 tempstorage run data get entity @e[type=#impact_projectiles,sort=nearest,limit=1] Owner[2]
execute store result score target3 tempstorage run data get entity @e[type=#impact_projectiles,sort=nearest,limit=1] Owner[3]

kill @e[type=#impact_projectiles,sort=nearest,limit=1]

execute as @e run function goldenvow:check