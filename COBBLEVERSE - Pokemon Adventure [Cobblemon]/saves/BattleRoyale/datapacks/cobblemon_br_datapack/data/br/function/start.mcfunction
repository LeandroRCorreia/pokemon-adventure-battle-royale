# BOTAO: function br:start
execute if score #on br matches 1 run return run tellraw @a {"text":"[BR] Ja existe uma partida em andamento. Use /function br:stop","color":"red"}

# 1. jogadores da partida (admins com a tag br_ignore ficam de fora)
tag @a remove br_alive
tag @a remove br_target
tag @a[tag=!br_ignore] add br_alive

# 2. limpeza
execute as @a[tag=br_alive] run clearparty @s
kill @e[type=cobblemon:pokemon]
kill @e[type=minecraft:marker,tag=br_m]
clear @a[tag=br_alive]
effect clear @a[tag=br_alive]

# 3. regras
gamerule doImmediateRespawn true
gamerule keepInventory false
gamerule announceAdvancements false
time set day
weather clear
difficulty normal

# 4. arena aleatoria 2000x2000
function br:arena/pick
function br:arena/border with storage br:data arena

# 5. jogadores
gamemode survival @a[tag=br_alive]
scoreboard players set @a br_death 0
scoreboard players set @a br_kills 0
function br:arena/tp_players with storage br:data arena
effect give @a[tag=br_alive] minecraft:resistance 30 4 true
execute store result score #players br if entity @a[tag=br_alive]
execute as @a[tag=br_alive] run function br:kit
execute as @a[tag=br_alive] run function br:starter

# 6. estado
scoreboard players set #t br 0
scoreboard players set #hunt br 0
scoreboard players set #ev br 0
scoreboard players set #on br 1
bossbar remove br:timer
bossbar add br:timer {"text":"Tempo"}
bossbar set br:timer max 2700
bossbar set br:timer value 2700
bossbar set br:timer color green
bossbar set br:timer players @a
title @a title {"text":"BATTLE ROYALE","color":"gold"}
title @a subtitle {"text":"Sobreviva por 45 minutos e vença o confronto final","color":"yellow"}
tellraw @a {"text":"[BR] A partida comecou! Boa sorte!","color":"gold"}
schedule function br:second 1s
