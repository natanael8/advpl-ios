#include "protheus.ch"

    user function repit2
    
    local nNota1:= -1
    local nNota2:= -1
    local nTotal
    local lRepete = .T.
   
    while lRepete
            nNota2 := nNota1 := -1

        while nNota1 < 0 .or. nNota1 > 10 
            nNota1 := val(FWInputbox("insira a primeira nota a novamente "))

        endDo

        while nNota2 < 0 .or. nNota2 > 10 
            nNota2 := val(FWInputbox("insira a segunda nota novamente "))

        endDo 
            nTotal:=(nNota1+nNota2)/2
            alert("a média será " + cvaltochar(nTotal)) 

        return
            lRepete := MSGYESNO("NOVO CÁLCULO (S/N)?")
        endDo 
    endDo

return