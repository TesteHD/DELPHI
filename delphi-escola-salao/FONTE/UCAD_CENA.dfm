inherited frmCAD_CENA: TfrmCAD_CENA
  Left = 25
  Top = 70
  Caption = 'Cadastro de Cena'
  ClientHeight = 171
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 115
  end
  inherited tab: TPageControl
    Height = 115
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 25
        object edtCOD_CENA: TEditLabel
          Left = 112
          Top = 3
          Width = 121
          Height = 21
          _LabelCaption = 'C'#243'digo'
          _Campo = 'COD_CENA'
          LabelComponent.Width = 40
          LabelComponent.Height = 13
          LabelComponent.Caption = 'C'#243'digo'
          _NotNull = True
          _Chave = True
          _Tipo = Pesquisa
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = edtCOD_CENAChange
          OnClickButton = edtCOD_CENAClickButton
          OnEnter = edtCOD_CENAEnter
          OnExit = edtCOD_CENAExit
        end
      end
      inherited pnl2: TPanel
        Top = 25
        Height = 62
        object memNOM_CENA: TMemoTag
          Left = 112
          Top = 3
          Width = 593
          Height = 54
          MaxLength = 150
          TabOrder = 0
          LabelPosition = lpLeft
          _Campo = 'NOM_CENA'
          _NotNull = True
          _Label.Width = 56
          _Label.Height = 13
          _Label.Caption = 'Descri'#231#227'o'
        end
      end
    end
  end
end
