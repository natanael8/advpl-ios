#include "protheus.ch"

user function ler()

local nValor := val(FWInputbox("insira um valor"))
if nvalor<0 
alert("negativo")
elseif nvalor=0
alert("zero")
else
alert("positivo")
endif

return