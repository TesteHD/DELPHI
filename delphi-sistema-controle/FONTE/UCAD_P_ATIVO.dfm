inherited frmCAD_P_ATIVO: TfrmCAD_P_ATIVO
  Left = 31
  Top = 238
  Caption = 'Cadastro de Princ'#237'pio Ativo'
  ClientHeight = 163
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 107
  end
  inherited tab: TPageControl
    Height = 107
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 33
        object edtCOD_P_ATIVO: TEditLabel
          Left = 112
          Top = 8
          Width = 121
          Height = 21
          _LabelCaption = 'C'#243'digo'
          _Campo = 'COD_P_ATIVO'
          LabelComponent.Width = 40
          LabelComponent.Height = 13
          LabelComponent.Caption = 'C'#243'digo'
          _NotNull = True
          _Chave = True
          _Tipo = Pesquisa
          CharCase = ecUpperCase
          MaxLength = 6
          TabOrder = 0
          OnChange = edtCOD_P_ATIVOChange
          OnClickButton = edtCOD_P_ATIVOClickButton
          OnEnter = edtCOD_P_ATIVOEnter
        end
      end
      inherited pnl2: TPanel
        Top = 33
        Height = 46
        object edtNOM_P_ATIVO: TEditLabel
          Left = 112
          Top = 8
          Width = 473
          Height = 21
          _LabelCaption = 'Nome'
          _Campo = 'NOM_P_ATIVO'
          LabelComponent.Width = 33
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Nome'
          _NotNull = True
          CharCase = ecUpperCase
          MaxLength = 80
          TabOrder = 0
        end
      end
    end
  end
end
