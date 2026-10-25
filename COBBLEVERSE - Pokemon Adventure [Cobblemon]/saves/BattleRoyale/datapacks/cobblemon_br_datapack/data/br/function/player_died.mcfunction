tag @s remove br_alive
scoreboard players set @s br_death 0
gamemode spectator @s
function br:arena/tp_spec with storage br:data arena
execute store result score #alive br if entity @a[tag=br_alive]
tellraw @a [{"selector":"@s","color":"red"},{"text":" foi eliminado! Restam ","color":"gray"},{"score":{"name":"#alive","objective":"br"},"color":"yellow"},{"text":" jogadores.","color":"gray"}]
