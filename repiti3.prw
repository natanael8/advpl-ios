#include "protheus.ch"
    
    user function contF()
        
local aLetra := {'A','C','F','G','D','B','A','A','D','T','J'}
local nx
local nTotal := 0
local nCont1 := len(aLetra)
local nCont2 := 0
for nx := 1 to len(aLetra)
    if aLetra[nx] == "F" 
    nCont2:=nCont1-nTotal    
exit 
    else
        nTotal++
    endif

next nx

alert("numero de letras contadas até o F "+cvaltochar(nTotal))
alert("números de letras contadas do F para frente "+cvaltochar(ncont2))







return