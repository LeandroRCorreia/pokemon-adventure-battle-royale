function br:hunt/end
function br:ev/stop
tellraw @a {"text":"[BR] O TEMPO ACABOU! Confronto final: a area esta fechando. Batalhem!","color":"red","bold":true}
title @a title {"text":"CONFRONTO FINAL","color":"red"}
title @a subtitle {"text":"A area esta fechando","color":"gold"}
bossbar set br:timer name {"text":"Confronto final","color":"red"}
bossbar set br:timer color red
# encolhe de 2000 para 50 blocos em 240 segundos
worldborder damage amount 1
worldborder set 50 240
