function br:hunt/end
execute store result score #alive br if entity @a[tag=br_alive]
execute unless score #alive br matches 2.. run return 0
tag @r[tag=br_alive] add br_target
scoreboard players set #hunt br 1
scoreboard players set #hunt_t br 300
effect give @a[tag=br_target] minecraft:glowing 300 0 true
tellraw @a [{"text":"[BR] HUNT MODE! O alvo e ","color":"red","bold":true},{"selector":"@a[tag=br_target]","color":"yellow"},{"text":". Derrote-o em 5 minutos para ganhar uma recompensa. Se ele sobreviver, a recompensa e dele!","color":"red"}]
title @a title {"text":"HUNT MODE","color":"red"}
title @a subtitle [{"text":"Alvo: ","color":"gray"},{"selector":"@a[tag=br_target]","color":"yellow"}]
