# INTERFACE PARA O MOD (batalha Pokemon):
#   tag <perdedor> add br_loser
#   execute as <vencedor> run function br:hunt/battle_win
execute if score #hunt br matches 1 if entity @a[tag=br_target,tag=br_loser] run function br:hunt/hunter_wins
tag @a remove br_loser
