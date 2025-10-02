execute store result storage tempstorage i int 1 run scoreboard players get tplistindex tempstorage

function tphub:printat with storage tempstorage

scoreboard players add tplistindex tempstorage 1
execute if score tplistindex tempstorage matches ..100 run function tphub:tpprintloop