execute store result score #r br run random value 1..100
execute if score #r br matches 1..5 run data modify storage br:data list set from storage br:data legendary
execute unless score #r br matches 1..5 run data modify storage br:data list set from storage br:data species
function br:util/pick
function br:util/spawn_iv with storage br:tmp
execute store result score #x br run data get entity @s Pos[0]
execute store result score #z br run data get entity @s Pos[2]
execute if score #r br matches 1..5 run tellraw @a [{"text":"[BR] POKEMON LENDARIO 6IV apareceu em ","color":"light_purple","bold":true},{"text":"X: "},{"score":{"name":"#x","objective":"br"}},{"text":"  Z: "},{"score":{"name":"#z","objective":"br"}}]
execute unless score #r br matches 1..5 run tellraw @a [{"text":"[BR] Pokemon 6IV apareceu em ","color":"gold"},{"text":"X: "},{"score":{"name":"#x","objective":"br"}},{"text":"  Z: "},{"score":{"name":"#z","objective":"br"}}]
kill @s
