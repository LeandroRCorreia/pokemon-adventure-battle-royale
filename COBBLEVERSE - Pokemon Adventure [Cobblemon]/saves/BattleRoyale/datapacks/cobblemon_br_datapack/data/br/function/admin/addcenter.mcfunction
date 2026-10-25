# Fique no centro de uma area boa (nao oceano) e rode: /function br:admin/addcenter
execute store result storage br:tmp x int 1 run data get entity @s Pos[0]
execute store result storage br:tmp z int 1 run data get entity @s Pos[2]
function br:admin/addcenter_do with storage br:tmp
tellraw @s {"text":"[BR] Centro de arena adicionado a lista.","color":"green"}
