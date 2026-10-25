# Roda em cada /reload e ao iniciar o servidor
scoreboard objectives add br dummy
scoreboard objectives add br_death deathCount
scoreboard objectives add br_kills playerKillCount
scoreboard players set #10 br 10
scoreboard players set #60 br 60
scoreboard players set #300 br 300
scoreboard players set #420 br 420
scoreboard players set #600 br 600
scoreboard players set #900 br 900
scoreboard players set #2700 br 2700
execute unless score #on br = #on br run scoreboard players set #on br 0
execute unless score #hunt br = #hunt br run scoreboard players set #hunt br 0
execute unless score #ev br = #ev br run scoreboard players set #ev br 0
execute unless data storage br:data centers run data modify storage br:data centers set value []
data modify storage br:tmp iv6 set value "hp_iv=31 attack_iv=31 defence_iv=31 special_attack_iv=31 special_defence_iv=31 speed_iv=31"
function br:lists
