execute store result storage br:tmp x int 1 run data get entity @p[tag=br_alive,distance=0.01..] Pos[0]
execute store result storage br:tmp y int 1 run data get entity @p[tag=br_alive,distance=0.01..] Pos[1]
execute store result storage br:tmp z int 1 run data get entity @p[tag=br_alive,distance=0.01..] Pos[2]
function br:compass/set with storage br:tmp
