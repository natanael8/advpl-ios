#include "protheus.ch"


user function pesoo()
//correção de erros com (,) em vez de (.) 
//receber o peso e altura
//receber o sexo 
local aPessoas := {}
local cMensagem := ""
local nx := 0


AADD(aPessoas,{1.56  ,"m",0})
AADD(aPessoas,{2    ,"f" ,0})
AADD(aPessoas,{1.50 ,"m" ,0})
AADD(aPessoas,{2.81 ,"f" ,0})
AADD(aPessoas,{1.84 ,"f" ,0})



//processar calculo do peso ideal
for nx:=1 to len(aPessoas)
   aPessoas[nx,3] := u_calculo(aPessoas[nx,1],aPessoas[nx,2])
   cMensagem += "o peso ideal da pessoa " + cvaltochar(nx)+ " é "+ str(aPessoas[nx,3],6,2) + CRLF
  
next nx

//exibe a saida com o valor do peso ideal

alert(cMensagem)


return
