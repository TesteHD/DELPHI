inherited frmCAD_CLIENTE: TfrmCAD_CLIENTE
  Left = 121
  Top = 88
  Caption = 'Cadastro de Cliente'
  ClientHeight = 390
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 334
  end
  inherited tab: TPageControl
    Height = 334
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 33
        object edtCOD_CLIENTE: TEditLabel
          Left = 112
          Top = 8
          Width = 129
          Height = 21
          _LabelCaption = 'C'#243'digo'
          _Campo = 'COD_CLIENTE'
          LabelComponent.Width = 40
          LabelComponent.Height = 13
          LabelComponent.Caption = 'C'#243'digo'
          _NotNull = True
          _Chave = True
          _Tipo = Pesquisa
          CharCase = ecUpperCase
          MaxLength = 9
          TabOrder = 0
          OnChange = edtCOD_CLIENTEChange
          OnClickButton = edtCOD_CLIENTEClickButton
          OnEnter = edtCOD_CLIENTEEnter
        end
      end
      inherited pnl2: TPanel
        Top = 33
        Height = 273
        object edtNOM_CLIENTE: TEditLabel
          Left = 112
          Top = 8
          Width = 569
          Height = 21
          _LabelCaption = 'Nome'
          _Campo = 'NOM_CLIENTE'
          LabelComponent.Width = 33
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Nome'
          _NotNull = True
          CharCase = ecUpperCase
          MaxLength = 80
          TabOrder = 0
        end
        object edtNOM_RUA: TEditLabel
          Left = 112
          Top = 32
          Width = 385
          Height = 21
          _LabelCaption = 'Rua'
          _Campo = 'NOM_RUA'
          LabelComponent.Width = 22
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Rua'
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 1
        end
        object edtNOM_BAIRRO: TEditLabel
          Left = 112
          Top = 56
          Width = 209
          Height = 21
          _LabelCaption = 'Bairro'
          _Campo = 'NOM_BAIRRO'
          LabelComponent.Width = 35
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Bairro'
          CharCase = ecUpperCase
          MaxLength = 40
          TabOrder = 2
        end
        object edtNUM_CEP: TEditLabel
          Left = 112
          Top = 80
          Width = 96
          Height = 21
          _LabelCaption = 'CEP'
          _Campo = 'NUM_CEP'
          LabelComponent.Width = 23
          LabelComponent.Height = 13
          LabelComponent.Caption = 'CEP'
          _Tipo = CEP
          CharCase = ecUpperCase
          EditMask = '99999\-999;0; '
          MaxLength = 9
          TabOrder = 3
        end
        object edtCOD_CIDADE: TEditLabel
          Left = 112
          Top = 104
          Width = 129
          Height = 21
          _LabelCaption = 'Cidade'
          _Campo = 'COD_CIDADE'
          _Edit = edtNOM_CIDADE
          LabelComponent.Width = 40
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Cidade'
          _NotNull = True
          _Tipo = Pesquisa
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          TabOrder = 4
          OnClickButton = edtCOD_CIDADEClickButton
          OnExit = edtCOD_CIDADEExit
        end
        object edtNOM_CIDADE: TEditTag
          Left = 240
          Top = 104
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 6
          _Tipo = tpChar
          _Default = False
        end
        object edtNUM_FONE: TEditLabel
          Left = 112
          Top = 128
          Width = 95
          Height = 21
          _LabelCaption = 'Telefone'
          _Campo = 'NUM_FONE'
          LabelComponent.Width = 49
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Telefone'
          _Tipo = Fone
          CharCase = ecUpperCase
          EditMask = '\(99\)9999\-9999;0; '
          MaxLength = 13
          TabOrder = 7
        end
        object edtNUM_FAX: TEditLabel
          Left = 112
          Top = 152
          Width = 95
          Height = 21
          _LabelCaption = 'Fax'
          _Campo = 'NUM_FAX'
          LabelComponent.Width = 20
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Fax'
          _Tipo = Fone
          CharCase = ecUpperCase
          EditMask = '\(99\)9999\-9999;0; '
          MaxLength = 13
          TabOrder = 8
        end
        object edtNOM_EMAIL: TEditLabel
          Left = 112
          Top = 176
          Width = 385
          Height = 21
          _LabelCaption = 'e-mail'
          _Campo = 'NOM_EMAIL'
          LabelComponent.Width = 36
          LabelComponent.Height = 13
          LabelComponent.Caption = 'e-mail'
          CharCase = ecLowerCase
          MaxLength = 60
          TabOrder = 9
        end
        object edtNOM_CONTATO: TEditLabel
          Left = 112
          Top = 200
          Width = 385
          Height = 21
          _LabelCaption = 'Contato'
          _Campo = 'NOM_CONTATO'
          LabelComponent.Width = 45
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Contato'
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 10
        end
        object edtNOM_GERENTE: TEditLabel
          Left = 112
          Top = 224
          Width = 385
          Height = 21
          _LabelCaption = 'Gerente'
          _Campo = 'NOM_GERENTE'
          LabelComponent.Width = 46
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Gerente'
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 11
        end
        object edtPER_MARGEM: TEditLabel
          Left = 112
          Top = 248
          Width = 97
          Height = 21
          _LabelCaption = '(%) Margem'
          _Campo = 'PER_MARGEM'
          LabelComponent.Width = 72
          LabelComponent.Height = 13
          LabelComponent.Caption = '(%) Margem'
          _NotNull = True
          _Tipo = Num_Decimal
          _FormatoNumerico = 5.200000000000000000
          CharCase = ecUpperCase
          MaxLength = 80
          TabOrder = 12
        end
      end
    end
  end
end
