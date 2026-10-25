execute at @r[tag=br_alive] run summon minecraft:marker ~ ~ ~ {Tags:["br_m"]}
function br:arena/spread with storage br:data arena
execute as @e[type=minecraft:marker,tag=br_m] at @s run function br:spawn_iv_at
