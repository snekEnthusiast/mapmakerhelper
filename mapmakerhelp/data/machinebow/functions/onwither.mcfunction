summon wither_skull ^ ^0.5 ^ {Tags:["machinebow.tempcalc"]}
data modify entity @e[limit=1,tag=machinebow.tempcalc] Motion set from entity @s Motion
tag @e[limit=1,tag=machinebow.tempcalc] remove machinebow.tempcalc
kill @s