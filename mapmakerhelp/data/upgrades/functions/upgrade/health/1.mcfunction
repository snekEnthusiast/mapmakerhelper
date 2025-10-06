scoreboard players set price tempstorage 3
scoreboard players set currentstored tempstorage 0

function upgrades:buy

execute if score buysuccess tempstorage matches 1 run attribute @p generic.max_health base set 21