#include "protheus.ch"


user function peso()
//correção de erros com (,) em vez de (.) 
//receber o peso e altura
//receber o sexo 
local nAltura := val(FWInputbox("digite altura (exemplo 1.8)"))
local cSexo := FWInputbox("digite M se for masculino e F se for feminino ")
local nPeso
//processar calculo do peso ideal
nPeso := u_calculo(nAltura,cSexo)


//exibe a saida com o valor do peso ideal
alert(nPeso)


return


user function calculo(nAltura,cSexo)
// homens = 72.7 x alt -58
// mulheres = 62.1 alt = 44.7
local nRet := 0
if  upper(cSexo) == "M"
    nRet := 72.7 * nAltura - 58

elseif upper(cSexo) == "F"
    nRet := 62.1 * nAltura - 44.7

endif

return nRet