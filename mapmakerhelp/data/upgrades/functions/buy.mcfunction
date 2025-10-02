#slightly more complicated function: 
#tempstorage price is set to the amount of lvlup sought
#tempstorage buysuccess will be set to whether the transaction was successful
#tempstorage currentstored MUST be set to 0 before calling this function

#flow description:
#if price == 0 : success
#if price != 0 : try removing 1 level
#if removing succeeded, do all again
#if removing failed, replace xp points

execute if score price tempstorage matches 0 run scoreboard players set buysuccess tempstorage 1

execute unless score price tempstorage matches 0 run execute store success score deductionsuccess tempstorage run xp add @p -1 levels
execute unless score price tempstorage matches 0 if score deductionsuccess tempstorage matches 1 run scoreboard players remove price tempstorage 1
execute unless score price tempstorage matches 0 if score deductionsuccess tempstorage matches 1 run scoreboard players add currentstored tempstorage 1

execute unless score price tempstorage matches 0 if score deductionsuccess tempstorage matches 0 run scoreboard players set buysuccess tempstorage 0
execute unless score price tempstorage matches 0 if score deductionsuccess tempstorage matches 0 run title @p title {"text":"insufficient xp!","color":"red"}
execute unless score price tempstorage matches 0 if score deductionsuccess tempstorage matches 0 run function upgrades:replacexp

execute unless score price tempstorage matches 0 if score deductionsuccess tempstorage matches 1 run function upgrades:buy