#include "protheus.ch"

user function comparar()

local nValor := val(FWInputbox("insira o primeiro valor"))
local nValor2 := val(FWInputbox("insira o segundo valor"))

if nValor>nValor2 
    alert("Primeiro valor e maior " + cvaltochar(nvalor))
Else 
    alert("segundo valor e maior ")

Endif

return   
