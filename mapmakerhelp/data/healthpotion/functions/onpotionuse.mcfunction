advancement revoke @a only healthpotion:potionusetrigger

effect give @p instant_health 1 1 true

scoreboard players remove @p healthpotion.current_stacks 1
function healthpotion:potionstatereload