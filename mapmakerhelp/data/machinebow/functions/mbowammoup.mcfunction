execute store result score ammocount tempstorage run data get entity @p SelectedItem.tag.machinebow.ammo
scoreboard players add ammocount tempstorage 1
execute store result storage tempstorage machinebow.ammo int 1 run scoreboard players get ammocount tempstorage
item modify entity @p weapon.mainhand machinebow:ammoset

execute if score ammocount tempstorage matches 0.. run item modify entity @p weapon.mainhand machinebow:reload