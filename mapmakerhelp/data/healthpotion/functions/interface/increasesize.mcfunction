scoreboard players add @p healthpotion.max_stacks 1
tellraw @p [{"selector":"@p"},{"text":" increased health potion capacity to "},{"score":{"name":"@p","objective":"healthpotion.max_stacks"}}]