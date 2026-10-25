execute if score #ev br matches 1.. run tellraw @a {"text":"[BR] O evento terminou.","color":"gray"}
execute if score #ev br matches 3 run time set day
scoreboard players set #ev br 0
scoreboard players set #ev_t br 0
