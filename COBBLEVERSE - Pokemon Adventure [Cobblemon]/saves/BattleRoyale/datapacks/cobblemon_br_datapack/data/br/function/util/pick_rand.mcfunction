scoreboard players remove #len br 1
execute store result storage br:tmp max int 1 run scoreboard players get #len br
function br:util/pick_idx with storage br:tmp
