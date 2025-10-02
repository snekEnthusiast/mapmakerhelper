execute store result score currentammo tempstorage run data get entity @p SelectedItem.tag.machinebow.ammo
execute store result score maxammo tempstorage run data get entity @p SelectedItem.tag.machinebow.capacity

execute unless score currentammo tempstorage = maxammo tempstorage store success score arrowfound tempstorage run clear @p arrow 1

execute if score arrowfound tempstorage matches 1 unless score currentammo tempstorage = maxammo tempstorage run function machinebow:mbowammoup