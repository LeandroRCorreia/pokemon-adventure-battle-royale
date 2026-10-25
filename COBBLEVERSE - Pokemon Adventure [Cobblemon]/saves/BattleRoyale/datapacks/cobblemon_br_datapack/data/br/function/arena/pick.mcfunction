# Se houver centros cadastrados (br:admin/addcenter), sorteia entre eles. Senao, totalmente aleatorio.
execute if data storage br:data centers[0] run return run function br:arena/pick_list
execute store result storage br:data arena.cx int 1 run random value -20000..20000
execute store result storage br:data arena.cz int 1 run random value -20000..20000
