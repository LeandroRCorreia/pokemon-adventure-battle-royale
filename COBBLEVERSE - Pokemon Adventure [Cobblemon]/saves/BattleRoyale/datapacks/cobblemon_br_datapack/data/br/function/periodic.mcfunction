# 10 min: Pokemon 6IV
scoreboard players operation #m br = #t br
scoreboard players operation #m br %= #600 br
execute if score #m br matches 0 run function br:spawn_iv
# 5 min: supply drop
scoreboard players operation #m br = #t br
scoreboard players operation #m br %= #300 br
execute if score #m br matches 0 run function br:supply
# 7 min: hunt mode
scoreboard players operation #m br = #t br
scoreboard players operation #m br %= #420 br
execute if score #m br matches 0 run function br:hunt/start
# 15 min: evento
scoreboard players operation #m br = #t br
scoreboard players operation #m br %= #900 br
execute if score #m br matches 0 run function br:ev/start
