scoreboard players set price tempstorage 5
scoreboard players set currentstored tempstorage 0

function upgrades:buy

execute if score buysuccess tempstorage matches 1 run attribute @p generic.attack_damage base set 8