#include "protheus.ch"

user function repit()


local nNota1:=val(FWInputbox("insira a primeira nota "))
local nNota2:=val(FWInputbox("insira a segunda nota "))
local nTotal

while nNota1 < 0 .or. nNota1 > 10 
    nNota1 := val(FWInputbox("insira a primeira nota a novamente "))

endDo

while nNota2 < 0 .or. nNota2 > 10 
    nNota2 := val(FWInputbox("insira a segunda nota novamente "))

endDo 
nTotal:=(nNota1+nNota2)/2
alert("a média será " + cvaltochar(nTotal)) 

return

