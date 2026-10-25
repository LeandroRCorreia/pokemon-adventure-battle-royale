# Alvo do hunt morto por outro jogador (fallback sem o mod)
execute if score #hunt br matches 1 as @a[tag=br_target,tag=br_alive,scores={br_death=1..}] run function br:hunt/target_died
# Mortes = eliminacao
execute as @a[tag=br_alive,scores={br_death=1..}] run function br:player_died
# Quem entrar no meio da partida vira espectador
execute as @a[tag=!br_alive,tag=!br_ignore,gamemode=!spectator] run gamemode spectator @s
scoreboard players set @a br_kills 0
