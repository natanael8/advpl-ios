#include "protheus.ch"

user function vetor()

local valores := array(100) //{,,,,}
local total := 0
local posicao
    for  posicao := 1 to 100
        valores[posicao] := posicao
    next

    posicao := 1
    while posicao <= 100
        total += valores[posicao] 
        posicao++
    endDO

    alert(posicao)




return

user function teste ()
local aArray := {}
