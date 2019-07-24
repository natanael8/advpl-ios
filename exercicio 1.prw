#include "protheus.ch"

user function somaNum()
local nNum := 0
local nNum := 0 
local ntotal := 0 
local cNum1 := ''
local cnum := ''

cNum1 := FWInputbox("digite aqui o primeiro número")
cNum2 := FWInputbox("digite aqui o segundo número")

nNum1 := val(cNum1)
nNUm2 := val(cNum2) 
ntotal := nNum1 + nNUm2

alert ("A soma dos números é " + cvaltochar(ntotal))

return