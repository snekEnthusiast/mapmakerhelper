data modify storage tempstorage x set from entity @p Pos[0]
data modify storage tempstorage y set from entity @p Pos[1]
data modify storage tempstorage z set from entity @p Pos[2]

$data modify storage tempstorage name set value $(name)

function tphub:interface/create with storage tempstorage