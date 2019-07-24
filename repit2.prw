#include "protheus.ch"

user function ArrayLetras()
local aLetra := {'F','A','C','G','D','B','A','A','D','T','J'}
local nx :=0
local nTotal := 0

for nx := 1 to len(aLetra)
    if aLetra[nx] <> 'A' .and. aLetra[nx] <> 'B'
    nTotal++
    endif
next nx 
alert(nTotal)

return