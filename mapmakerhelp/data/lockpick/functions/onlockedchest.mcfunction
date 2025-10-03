scoreboard players set lockpick.success tempstorage 0
execute if predicate lockpick:lpchance run scoreboard players set lockpick.success tempstorage 1

execute if score lockpick.success tempstorage matches 1 run data remove block ~ ~ ~ Lock
execute if score lockpick.success tempstorage matches 1 run tellraw @p {"text": "lockpicking successful!","color": "green"}

execute if score lockpick.success tempstorage matches 0 run clear @p tripwire_hook{lockpick:1b} 1
execute if score lockpick.success tempstorage matches 0 run tellraw @p {"text": "lockpicking failed!","color": "red"}