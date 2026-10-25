schedule function br:second 1s
scoreboard players add #t br 1

# bossbar
scoreboard players operation #rem br = #2700 br
scoreboard players operation #rem br -= #t br
execute if score #rem br matches ..-1 run scoreboard players set #rem br 0
scoreboard players operation #min br = #rem br
scoreboard players operation #min br /= #60 br
scoreboard players operation #sec br = #rem br
scoreboard players operation #sec br %= #60 br
execute store result bossbar br:timer value run scoreboard players get #rem br
execute if score #t br matches ..2699 run bossbar set br:timer name [{"text":"Tempo restante: ","color":"white"},{"score":{"name":"#min","objective":"br"}},{"text":"m "},{"score":{"name":"#sec","objective":"br"}},{"text":"s"}]

# vitoria
execute store result score #alive br if entity @a[tag=br_alive]
execute if score #players br matches 2.. if score #alive br matches ..1 run return run function br:win

# bussola
execute as @a[tag=br_alive] at @s if entity @a[tag=br_alive,distance=0.01..] run function br:compass/update

# hunt e eventos em andamento
execute if score #hunt br matches 1 run function br:hunt/tick
execute if score #ev br matches 1.. run function br:ev/tick

# periodicos (so antes do confronto final)
execute if score #t br matches 1..2699 run function br:periodic
execute if score #t br matches 2700 run function br:final
execute if score #t br matches 3300 run function br:timeout
