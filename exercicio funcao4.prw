#include "protheus.ch"

/*4. Fazer a função POW (base, expoente) que recebe base e expoente e retorna o valor
de base elevado a expoente. Se os valores de base e expoente não forem inteiros a
função deve retornar 0.
Operador de exponenciação: http://tdn.totvs.com/display/tec/Operadores+Comuns*/
    
    
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