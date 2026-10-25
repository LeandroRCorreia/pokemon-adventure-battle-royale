# roda como o alvo que morreu (fallback: morte por PvP de jogador)
execute if entity @a[scores={br_kills=1..}] as @a[scores={br_kills=1..},limit=1] run function br:hunt/hunter_wins
execute unless entity @a[scores={br_kills=1..}] run tellraw @a {"text":"[BR] O alvo morreu sem ser derrotado por um cacador. Hunt encerrado.","color":"gray"}
execute unless entity @a[scores={br_kills=1..}] run function br:hunt/end
