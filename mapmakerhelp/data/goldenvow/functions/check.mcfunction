execute store result score check0 tempstorage run data get entity @s UUID[0]
execute store result score check1 tempstorage run data get entity @s UUID[1]
execute store result score check2 tempstorage run data get entity @s UUID[2]
execute store result score check3 tempstorage run data get entity @s UUID[3]

execute if score target0 tempstorage = check0 tempstorage if score target1 tempstorage = check1 tempstorage if score target2 tempstorage = check2 tempstorage if score target3 tempstorage = check3 tempstorage run function goldenvow:strike