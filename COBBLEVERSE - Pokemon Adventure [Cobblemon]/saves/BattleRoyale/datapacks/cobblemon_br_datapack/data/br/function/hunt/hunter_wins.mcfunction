# roda como o cacador vencedor
tellraw @a [{"selector":"@s","color":"green"},{"text":" derrotou o alvo ","color":"gray"},{"selector":"@a[tag=br_target]","color":"red"},{"text":" e ganhou a recompensa!","color":"gray"}]
function br:hunt/reward
function br:hunt/end
