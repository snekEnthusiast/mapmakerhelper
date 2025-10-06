scoreboard players set price tempstorage 5
scoreboard players set currentstored tempstorage 0

function upgrades:buy

execute if score buysuccess tempstorage matches 1 run attribute @p generic.armor_toughness base set 3