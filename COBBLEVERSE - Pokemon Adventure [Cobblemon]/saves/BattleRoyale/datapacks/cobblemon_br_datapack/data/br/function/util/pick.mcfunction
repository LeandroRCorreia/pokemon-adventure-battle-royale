# entrada: storage br:data list | saida: storage br:tmp pick
execute store result score #len br run data get storage br:data list
execute if score #len br matches ..0 run return 0
execute if score #len br matches 1 run data modify storage br:tmp i set value 0
execute if score #len br matches 2.. run function br:util/pick_rand
function br:util/pick_get with storage br:tmp
