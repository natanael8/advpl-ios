#include "protheus.ch"

user function cal2()
local cNome := fwinputbox("nome do produto?")
local nQuant := val(FWinputbox("digite a quantidade desejada"))
local nPreco := val(FWInputbox("digite o valor "))
local nTotal := nQuant*nPreco
local nDesconto1 := 0.2
local nDesconto2 := 0.3
local nDesconto3 := 0.5
local nTotal2 :=  (nQuant*nPreco) - (nQuant*nPreco)*nDesconto1
local nTotal3 :=  (nQuant*nPreco) - (nQuant*nPreco)*nDesconto2
local nTotal4 :=  (nQuant*nPreco) - (nQuant*nPreco)*nDesconto3

if nQuant <=5

alert("o desconto"+ cvaltochar(nTotal2)+ "o valor total: " +cvaltochar(nTotal2))

elseif nQuant >10




endif





return