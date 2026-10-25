execute store result score #ev br run random value 1..5
scoreboard players set #ev_t br 180
execute if score #ev br matches 1 run function br:ev/storm
execute if score #ev br matches 2 run function br:ev/heat
execute if score #ev br matches 3 run function br:ev/dark
execute if score #ev br matches 4 run function br:ev/forest
execute if score #ev br matches 5 run function br:ev/fossil
function br:ev/spawn_round
