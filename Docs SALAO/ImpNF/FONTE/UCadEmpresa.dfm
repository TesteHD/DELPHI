inherited frmCadEmpresa: TfrmCadEmpresa
  Caption = 'Cadastro de Empresa'
  ClientHeight = 180
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 124
    inherited btnLocaliza: TBitBtn
      Visible = False
    end
  end
  inherited tab: TPageControl
    Height = 124
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 59
        object edtCodigo: TEditLabel
          Left = 96
          Top = 32
          Width = 121
          Height = 21
          _LabelCaption = 'C'#243'digo '
          _Campo = 'COD_EMPRESA'
          LabelComponent.Width = 44
          LabelComponent.Height = 13
          LabelComponent.Caption = 'C'#243'digo '
          _NotNull = True
          _Tipo = Pesquisa
          MaxLength = 2
          TabOrder = 0
          OnChange = edtCodigoEnter
          OnClickButton = edtCodigoClickButton
          OnEnter = edtCodigoEnter
          OnExit = edtCodigoExit
        end
      end
      inherited pnl2: TPanel
        Top = 59
        Height = 37
        object edtNome: TEditLabel
          Left = 96
          Top = 0
          Width = 609
          Height = 21
          _LabelCaption = 'Nome '
          _Campo = 'NOM_EMPRESA'
          LabelComponent.Width = 37
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Nome '
          _NotNull = True
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 0
        end
      end
    end
  end
end
