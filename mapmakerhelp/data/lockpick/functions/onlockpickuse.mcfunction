execute store success score lockexists tempstorage run data get block ~ ~ ~ Lock
execute if score lockexists tempstorage matches 1 run function lockpick:onlockedchest
execute unless score lockexists tempstorage matches 1 positioned ^ ^ ^0.1 if entity @p[predicate=lockpick:lockpick,distance=..10] run function lockpick:onlockpickuse