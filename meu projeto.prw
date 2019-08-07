#include "protheus.ch"
#include "fwmvcdef.ch"

user function playlist()
local oBrowse :=FWMBrowse():new()// criação do browse

oBrowse:SetAlias('ZA3') 
oBrowse:SetMenuDef('projeto3') // define setmenudef


oBrowse:activate()

return

//----------------------------------------------------------------------------------

Static Function MenuDef()
Local aRotina := {}

ADD OPTION aRotina TITLE 'Visualizar' ACTION 'VIEWDEF.projeto3' OPERATION 2 ACCESS 0
ADD OPTION aRotina TITLE 'Incluir' ACTION 'VIEWDEF.projeto3' OPERATION 3 ACCESS 0
ADD OPTION aRotina TITLE 'Alterar' ACTION 'VIEWDEF.projeto3' OPERATION 4 ACCESS 0
ADD OPTION aRotina TITLE 'Excluir' ACTION 'VIEWDEF.projeto3' OPERATION 5 ACCESS 0
ADD OPTION aRotina TITLE 'Imprimir' ACTION 'VIEWDEF.projeto3' OPERATION 8 ACCESS 0
ADD OPTION aRotina TITLE 'TOCAR' ACTION 'U_TMP' OPERATION 1 ACCESS 0
Return aRotina

//--------------------------------------------------------------------------------------------
static function ModelDef()
local oModel:= MPFormModel():new('legal1')
local oStruZA3:= FWFormStruct(1,"ZA3")
local oStruZA4:= FWFormStruct(1,"ZA4")



oModel:AddFields('ZA3MASTER',/*cOwner*/ ,oStruZA3,,)
oModel:addgrid('ZA4DETAIL','ZA3MASTER',oStruZA4,,)
oModel:SetRelation( 'ZA4DETAIL', { { 'ZA4_FILIAL', 'xFilial( "ZA4" )' }, { 'ZA4_ALBUM', 'ZA3_ALBUM' } }, ZA4->( IndexKey( 1 ) ) )


return oModel
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
static Function ViewDef()
local oView := FWFormView():new()
local oStruct := FWFormStruct(2,'ZA3')
local oStructZA4 := FWFormStruct(2,'ZA4')

oView:SetModel(ModelDef())

oView:AddField('ZA3_VIEW',oStruct,'ZA3MASTER')
oView:addgrid('ZA4_VIEW',oStructZA4,'ZA4DETAIL')

oView:addincrementalfield('ZA4_VIEW','ZA4_ALBUM')

oView:CreateHorizontalBox('BOXZA3',50)
oView:CreateHorizontalBox('BOXZA2',50)

oView:SetOwnerView('ZA3_VIEW','BOXZA3')
oView:SetOwnerView('ZA4_VIEW','BOXZA2')

oView:EnableTitleView("ZA4DETAIL")
Return oView




USER FUNCTION TMP()
    local nLeft := 1
    local nTopBtn := 202
    local showBar := .T.
    local isMute := .F.
    local nVolume := 70
 
    SetStyle(5)
 
    DEFINE MSDIALOG oDlg TITLE "TMediaPlayer" FROM 0,0 TO 424,510 PIXEL
 
        oMedia := TMediaPlayer():New(1,nLeft,255,200,oDlg,"C:/legal/outro.mp3",nVolume,showBar)
 
        TButton():New( nTopBtn, nLeft, "Open", oDlg,;
            {|| oMedia:openFile( FWInputBox("Escolha o arquivo", "C:/legal/") ) },;
            28,010,,,.F.,.T.,.F.,,.F.,,,.F. )
 
 
    ACTIVATE MSDIALOG oDlg CENTERED
 
RETURN
 

 user function plali()

local cTitulo:="bom dia"
Local oDlg, oFont, oSay,oGet, cIdade := space(3),cNome:= space(30),oButton,cpass:= space(8)
local aItems:= {'Rock','Pagode','Punk','Gospel'}
local oCombo1
Local oDlg    
Local oFolder
local showBar := .T.
local nLeft := 1
local nVolume := 70
 local nTopBtn := 232

DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 700,700 PIXEL


 // Cria Fonte para visualização
oFont := TFont():New('Courier new',,-18,.T.)

// Cria o Objeto tSay usando o comando @ .. SAY
@ 10,10 SAY oSay PROMPT 'Playlist:'  SIZE 200,20 COLORS CLR_BLACK,CLR_WHITE FONT oFont OF oDlg PIXEL

@ 30,15 FOLDER oFolder SIZE 200, 200 OF oDlg  PIXEL
 
oFolder:AddItem("ROCK",.T.)
oFolder:AddItem("PAGODE",.T.)
oFolder:AddItem("PUNK",.T.)
oFolder:AddItem("GOSPEL",.T.)
 
@ 10,10 SAY "Texto na Aba 01" OF oFolder:aDialogs[1] PIXEL
@ 10,10 SAY "Texto na Aba 02" OF oFolder:aDialogs[2] PIXEL
         
oFolder:SetOption(1)

oMedia := TMediaPlayer():New(250,nLeft,215,21,oDlg,,,showBar)

TButton():New( nTopBtn, nLeft, "Open", oDlg,;
            {|| oMedia:openFile( FWInputBox("Escolha o arquivo", "C:/legal/") ) },;
            28,010,,,.F.,.T.,.F.,,.F.,,,.F. )

// @ 090,050 BUTTON 'ENTRAR'  FONT oFont  SIZE  100,10 PIXEL OF oDlg ACTION u_entrar(oDlg,cNome,cpass)
// @ 070,050 BUTTON 'CANCELAR' FONT oFont SIZE  100,10 PIXEL OF oDlg ACTION u_cancela(oDlg)


ACTIVATE MSDIALOG oDlg CENTERED




 return
