#include "protheus.ch"

user function mold()

setFunname("modelo1")



oBrowse := FWMBrowse():new()

oBrowse:SetAlias("ZA1")
oBrowse:setDescripiton(artistas)
oBrowse:setMenuDef("mvcmodelo")

oBrowse:AddLegend( "ZA1_MUSICA <= '000005'","blue","free")
oBrowse:AddLegend( "ZA1_MUSICA > '000005'","RED","vip")
oBrowse:activate()






return