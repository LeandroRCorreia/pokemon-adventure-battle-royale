# /function br:test  -> testa os comandos do Cobblemon. Erros em vermelho = ajustar a sintaxe.
givepokemon @s pikachu level=5
function br:test_iv with storage br:tmp
loot give @s loot br:supply
loot give @s loot br:hunt_reward
tellraw @s {"text":"[BR] Teste executado. Confira se recebeu o Pikachu, um Eevee 6IV ao seu lado e os itens dos loot tables.","color":"yellow"}
