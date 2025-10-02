#call to make the potion in the inventory conform to the scoreboard values
execute store success score deletesuccess tempstorage run clear @p potion{healthpotion:1b}
execute if score deletesuccess tempstorage matches 0 run clear @p glass_bottle 1

execute if score @p healthpotion.current_stacks matches 0 run function healthpotion:givepotion/uses0
execute if score @p healthpotion.current_stacks matches 1 run function healthpotion:givepotion/uses1
execute if score @p healthpotion.current_stacks matches 2 run function healthpotion:givepotion/uses2
execute if score @p healthpotion.current_stacks matches 3 run function healthpotion:givepotion/uses3
execute if score @p healthpotion.current_stacks matches 4 run function healthpotion:givepotion/uses4
execute if score @p healthpotion.current_stacks matches 5 run function healthpotion:givepotion/uses5
execute if score @p healthpotion.current_stacks matches 6 run function healthpotion:givepotion/uses6
execute if score @p healthpotion.current_stacks matches 6.. run function healthpotion:givepotion/usesoverflow
#higher capacity analogous analogous, last is >=, rest =