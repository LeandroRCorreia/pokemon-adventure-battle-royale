tellraw @a [{"selector":"@a[tag=br_target]","color":"yellow"},{"text":" sobreviveu ao Hunt Mode e ganhou a recompensa!","color":"green"}]
execute as @a[tag=br_target,tag=br_alive] run function br:hunt/reward
function br:hunt/end
