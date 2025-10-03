execute as @a[predicate=lockpick:lockpick,scores={lockpick.openchest=1..}] at @s rotated as @s positioned ~ ~1.5 ~ run function lockpick:onlockpickuse
scoreboard players set @a[scores={lockpick.openchest=1..}] lockpick.openchest 0

execute at @e[tag=lockpick.lockmaker] run data modify block ~ ~ ~ Lock set value "8D2nug6smJtAkRh9Vm8tabopF3dORtVz"
kill @e[tag=lockpick.lockmaker]

execute at @e[tag=lockpick.lockremover] run data remove block ~ ~ ~ Lock
kill @e[tag=lockpick.lockremover]