#include "protheus.ch"

user function alunon()
aAlunos := {}

aAdd(aAlunos,{"natan",{4,5,7,9}})
aAdd(aAlunos,{"robson",{4,5,7,8}})
aAdd(aAlunos,{"fabio",{4,5,7,7}})

alert((aAlunos[2,1])+" "+cvaltochar(aAlunos[2,2,1]) +" "+ cvaltochar(aAlunos[2,2,2]) +" "+ cvaltochar(aAlunos[2,2,3])+" "+cvaltochar(aAlunos[2,2,4]))


return
