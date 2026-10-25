setblock ~ ~ ~ minecraft:chest{LootTable:"br:supply"}
execute store result score #x br run data get entity @s Pos[0]
execute store result score #z br run data get entity @s Pos[2]
tellraw @a [{"text":"[BR] SUPPLY DROP em ","color":"aqua","bold":true},{"text":"X: "},{"score":{"name":"#x","objective":"br"}},{"text":"  Z: "},{"score":{"name":"#z","objective":"br"}}]
kill @s
