#include "protheus.ch"


user function alunoi()
local aAlunos := {}

aAdd(aAlunos,{"natan",22})
aAdd(aAlunos,{"robson",20})
aAdd(aAlunos,{"fabio",30})

alert("o nome do aluno é  " + aAlunos [2][1] +;
    "a idade do aluno " + cvaltochar(aAlunos [2][2]))

return