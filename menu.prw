#include 'protheus.ch'

user function men()
local oBrowse :=FWMBrowse():new()// criação do browse

oBrowse:SetAlias('ZA1') 
oBrowse:SetMenuDef('menu') // define setmenudef

oBrowse:AddLegend( "ZA1_MUSICA <= '000005'","blue","free")
oBrows0e:AddLegend( "ZA1_MUSICA > '000005'","RED","vip")
oBrowse:activate()

return

static function MenuDef()

return FWMVCMenu('menu') //menu padrão c.r.u.d.

static function ModelDef()
local oModel:= MPFormModel():new('legal1')
local oStruZA1:= FWFormStruct(1,"ZA1")
local oStruZA2:= FWFormStruct(1,"ZA2")
local bValid:= {|oModelGrid| validAutor(oModelGrid) }

oModel:AddFields('ZA1MASTER',/*cOwner*/ ,oStruZA1, )
oModel:addgrid('ZA2DETAIL','ZA1MASTER',oStruZA2, ,bValid)
oModel:SetRelation( 'ZA2DETAIL', { { 'ZA2_FILIAL', 'xFilial( "ZA2" )' }, { 'ZA2_MUSICA', 'ZA1_MUSICA' } }, ZA2->( IndexKey( 1 ) ) )

oModel:getmodel("ZA1MASTER"):setdescription("dados da musica")
oModel:getmodel("ZA2DETAIL"):setdescription("dados da musica")

return oModel

static Function ViewDef()
local oView := FWFormView():new()
local oStruct := FWFormStruct(2,'ZA1')
local oStructZA2 := FWFormStruct(2,'ZA2')

oView:SetModel(ModelDef())

oView:AddField('ZA1_VIEW',oStruct,'ZA1MASTER')
oView:addgrid('ZA2_VIEW',oStructZA2,'ZA2DETAIL')

oView:CreateHorizontalBox('BOXZA1',50)
oView:CreateHorizontalBox('BOXZA2',50)

oView:SetOwnerView('ZA1_VIEW','BOXZA1')
oView:SetOwnerView('ZA2_VIEW','BOXZA2')

oView:EnableTitleView("ZA2DETAIL")
Return oView

static function validAutor(oModelGrid)
local lRef := .F.
local cCodAutor := oModelGri-GetValue("ZA2_AUTOR")


// 1) buscar na ZA0 o registro do autor que esta sendo inserido  no grid
// 2) pega a data de falecimento 
// 3) se a data de falecimento não estiver em branco,bloquear a inclusão exibindo msg de erro


//    GUADAR A AREA ATIVA E A AREA DA TABELA

// ABRIR TABELA ZA0

// SETAR O INDICE DA ZA0 (indice que contenha filial+codigo )

// buscar o registro filtrando o codigo especefico
// se eu achar o registro eu avalio o campo de data de falecimento 

// restaurar a area de tabela ativa 



return lRef