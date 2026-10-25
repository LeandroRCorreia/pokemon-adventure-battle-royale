# roda como cada jogador: Pokemon inicial aleatorio (nao lendario)
data modify storage br:data list set from storage br:data species
function br:util/pick
function br:util/give_starter with storage br:tmp
