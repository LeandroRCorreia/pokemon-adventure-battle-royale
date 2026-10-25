execute if entity @a[tag=br_alive] run tellraw @a [{"text":"[BR] VENCEDOR: ","color":"gold"},{"selector":"@a[tag=br_alive]","color":"yellow"}]
execute if entity @a[tag=br_alive] run title @a title [{"selector":"@a[tag=br_alive]","color":"yellow"},{"text":" venceu!","color":"gold"}]
execute unless entity @a[tag=br_alive] run tellraw @a {"text":"[BR] Ninguem sobreviveu. Empate!","color":"gray"}
function br:end
