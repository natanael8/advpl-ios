#include "protheus.ch"

/*4. Fazer a fun��o POW (base, expoente) que recebe base e expoente e retorna o valor
de base elevado a expoente. Se os valores de base e expoente n�o forem inteiros a
fun��o deve retornar 0.
Operador de exponencia��o: http://tdn.totvs.com/display/tec/Operadores+Comuns*/
    
    
    user function POW()

    local nBase := val(FWInputbox("Digite a Base "))
    local nExpoente:= val(FWInputbox("Digite a expoente "))
    local nTotal := 0

    if nBase != int(nBase) .or. nExpoente != int(nExpoente)
        alert("0")
        else
        nTotal := nBase^nExpoente
        alert(nTotal)
        
    endif
return