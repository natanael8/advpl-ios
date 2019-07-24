#include "protheus.ch"

user function testando()

    local aAluno :={} //array{}
    aAdd(aAluno,{"amarelo",7,87,"progamador"})
    aAdd(aAluno,{"lucas 1",10,22,"progamador"})
    aAdd(aAluno,{"walace",2,30,"progamador"})
    aAdd(aAluno,{"castanhare",0.10,23,"progamador"})
    aAdd(aAluno,{"igor",6,24,"progamador"})

    alert("nome do aluno " + aAluno[5,1]+ ;
    "média " + cvaltochar(aAluno[5,2]) + ;
    "idade " + cvaltochar(aAluno[5,3]) + ;
    "profissão " + aAluno[5,4])

    return