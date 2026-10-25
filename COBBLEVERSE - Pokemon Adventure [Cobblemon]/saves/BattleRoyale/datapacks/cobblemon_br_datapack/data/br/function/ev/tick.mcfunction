scoreboard players remove #ev_t br 1
execute if score #ev_t br matches ..0 run return run function br:ev/stop
scoreboard players operation #m br = #ev_t br
scoreboard players operation #m br %= #10 br
execute if score #m br matches 0 run function br:ev/spawn_round
