schedule clear br:second
scoreboard players set #on br 0
function br:hunt/end
function br:ev/stop
bossbar remove br:timer
worldborder set 59999968
worldborder center 0 0
worldborder damage amount 0.2
# Pokemon: apaga equipes e Pokemon selvagens
execute as @a run clearparty @s
kill @e[type=cobblemon:pokemon]
kill @e[type=minecraft:marker,tag=br_m]
clear @a[tag=br_alive]
effect clear @a
tag @a remove br_alive
tag @a remove br_target
gamemode survival @a[tag=!br_ignore]
execute if data storage br:data lobby run function br:end_tp with storage br:data lobby
