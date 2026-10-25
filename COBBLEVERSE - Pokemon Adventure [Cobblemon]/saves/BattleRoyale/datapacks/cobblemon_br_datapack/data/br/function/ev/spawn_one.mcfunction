# roda como jogador: cria marcador, espalha 20 blocos e spawna 1 Pokemon do evento
summon minecraft:marker ~ ~ ~ {Tags:["br_m"]}
spreadplayers ~ ~ 0 20 false @e[type=minecraft:marker,tag=br_m,distance=..1,limit=1]
execute as @e[type=minecraft:marker,tag=br_m] at @s run function br:ev/spawn_at
