scoreboard players set price tempstorage 2
scoreboard players set currentstored tempstorage 0

function upgrades:buy

execute if score buysuccess tempstorage matches 1 run scoreboard players set @p resistances 3