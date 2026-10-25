# Fique no lobby e rode: /function br:admin/setlobby  (jogadores voltam pra la no fim da partida)
execute store result storage br:data lobby.x int 1 run data get entity @s Pos[0]
execute store result storage br:data lobby.y int 1 run data get entity @s Pos[1]
execute store result storage br:data lobby.z int 1 run data get entity @s Pos[2]
tellraw @s {"text":"[BR] Lobby definido.","color":"green"}
