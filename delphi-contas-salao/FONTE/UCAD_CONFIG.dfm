inherited frmCAD_CONFIG: TfrmCAD_CONFIG
  Left = 26
  Top = 53
  Caption = 'Configura'#231#245'es'
  ClientHeight = 410
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 354
  end
  inherited tab: TPageControl
    Height = 354
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 2
      end
      inherited pnl2: TPanel
        Top = 2
        Height = 324
        object tabConfiguracao: TPageControl
          Left = 3
          Top = 0
          Width = 729
          Height = 321
          ActivePage = tabConfigContas
          TabOrder = 0
          object tabConfigContas: TTabSheet
            Caption = 'Contas'
            object edtCOD_CONTA_CAIXA: TEditLabel
              Left = 117
              Top = 6
              Width = 129
              Height = 21
              _LabelCaption = 'Conta Din. M'#227'os'
              _Campo = 'COD_CONTA_CAIXA'
              _Edit = edtNOM_CONTA_CAIXA
              LabelComponent.Width = 94
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Conta Din. M'#227'os'
              _NotNull = True
              _Tipo = Pesquisa
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 0
              OnClickButton = edtCOD_CONTA_CAIXAClickButton
              OnExit = edtCOD_CONTA_CAIXAExit
            end
            object edtNOM_CONTA_CAIXA: TEditTag
              Left = 245
              Top = 6
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 2
              _Tipo = tpChar
              _Default = False
            end
            object edtCOD_CONTA_CC: TEditLabel
              Left = 117
              Top = 30
              Width = 129
              Height = 21
              _LabelCaption = 'Conta C/C'
              _Campo = 'COD_CONTA_CC'
              _Edit = edtNOM_CONTA_CC
              LabelComponent.Width = 61
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Conta C/C'
              _NotNull = True
              _Tipo = Pesquisa
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 3
              OnClickButton = edtCOD_CONTA_CCClickButton
              OnExit = edtCOD_CONTA_CCExit
            end
            object edtNOM_CONTA_CC: TEditTag
              Left = 245
              Top = 30
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 5
              _Tipo = tpChar
              _Default = False
            end
            object edtCOD_CONTA_OUTR: TEditLabel
              Left = 117
              Top = 54
              Width = 129
              Height = 21
              _LabelCaption = 'Conta Outras'
              _Campo = 'COD_CONTA_OUTR'
              _Edit = edtNOM_CONTA_OUTR
              LabelComponent.Width = 76
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Conta Outras'
              _Tipo = Pesquisa
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 6
              OnClickButton = edtCOD_CONTA_OUTRClickButton
              OnExit = edtCOD_CONTA_OUTRExit
            end
            object edtNOM_CONTA_OUTR: TEditTag
              Left = 245
              Top = 54
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 8
              _Tipo = tpChar
              _Default = False
            end
            object edtCOD_CONTA_OM_DES: TEditLabel
              Left = 117
              Top = 78
              Width = 129
              Height = 21
              _LabelCaption = 'OMTJ Depesa'
              _Campo = 'COD_CONTA_OM_DES'
              _Edit = edtNOM_CONTA_OM_DES
              LabelComponent.Width = 77
              LabelComponent.Height = 13
              LabelComponent.Caption = 'OMTJ Depesa'
              _NotNull = True
              _Tipo = Pesquisa
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 9
              OnClickButton = edtCOD_CONTA_OM_DESClickButton
              OnExit = edtCOD_CONTA_OM_DESExit
            end
            object edtNOM_CONTA_OM_DES: TEditTag
              Left = 245
              Top = 78
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 11
              _Tipo = tpChar
              _Default = False
            end
            object edtCOD_CONTA_OM_PCP: TEditLabel
              Left = 117
              Top = 102
              Width = 129
              Height = 21
              _LabelCaption = 'OMTJ Passivo CP'
              _Campo = 'COD_CONTA_OM_PCP'
              _Edit = edtNOM_CONTA_OM_PCP
              LabelComponent.Width = 97
              LabelComponent.Height = 13
              LabelComponent.Caption = 'OMTJ Passivo CP'
              _NotNull = True
              _Tipo = Pesquisa
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 12
              OnClickButton = edtCOD_CONTA_OM_PCPClickButton
              OnExit = edtCOD_CONTA_OM_PCPExit
            end
            object edtNOM_CONTA_OM_PCP: TEditTag
              Left = 245
              Top = 102
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 14
              _Tipo = tpChar
              _Default = False
            end
            object GroupBox1: TGroupBox
              Left = 2
              Top = 130
              Width = 719
              Height = 161
              Caption = 'Contas de Despesa - Remessa para Associa'#231#227'o'
              TabOrder = 15
              object edtCOD_CONTA_FUNDOSR: TEditLabel
                Left = 115
                Top = 16
                Width = 129
                Height = 21
                _LabelCaption = 'Fundo SR'
                _Campo = 'COD_CONTA_FUNDOSR'
                _Edit = edtNOM_CONTA_FUNDOSR
                LabelComponent.Width = 54
                LabelComponent.Height = 13
                LabelComponent.Caption = 'Fundo SR'
                _Tipo = Pesquisa
                CharCase = ecUpperCase
                MaxLength = 9
                TabOrder = 0
                OnClickButton = edtCOD_CONTA_FUNDOSRClickButton
                OnExit = edtCOD_CONTA_FUNDOSRExit
              end
              object edtNOM_CONTA_FUNDOSR: TEditTag
                Left = 243
                Top = 16
                Width = 441
                Height = 21
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 2
                _Tipo = tpChar
                _Default = False
              end
              object edtCOD_CONTA_SALASSEMB: TEditLabel
                Left = 115
                Top = 40
                Width = 129
                Height = 21
                _LabelCaption = 'Sal'#227'o Assemb.'
                _Campo = 'COD_CONTA_SALASSEMB'
                _Edit = edtNOM_CONTA_SALASSEMB
                LabelComponent.Width = 85
                LabelComponent.Height = 13
                LabelComponent.Caption = 'Sal'#227'o Assemb.'
                _Tipo = Pesquisa
                CharCase = ecUpperCase
                MaxLength = 9
                TabOrder = 3
                OnClickButton = edtCOD_CONTA_SALASSEMBClickButton
                OnExit = edtCOD_CONTA_SALASSEMBExit
              end
              object edtNOM_CONTA_SALASSEMB: TEditTag
                Left = 243
                Top = 40
                Width = 441
                Height = 21
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 5
                _Tipo = tpChar
                _Default = False
              end
              object edtCOD_CONTA_AJUFIN: TEditLabel
                Left = 115
                Top = 64
                Width = 129
                Height = 21
                _LabelCaption = 'Ajuda Fin.'
                _Campo = 'COD_CONTA_AJUFIN'
                _Edit = edtNOM_CONTA_AJUFIN
                LabelComponent.Width = 57
                LabelComponent.Height = 13
                LabelComponent.Caption = 'Ajuda Fin.'
                _Tipo = Pesquisa
                CharCase = ecUpperCase
                MaxLength = 9
                TabOrder = 6
                OnClickButton = edtCOD_CONTA_AJUFINClickButton
                OnExit = edtCOD_CONTA_AJUFINExit
              end
              object edtNOM_CONTA_AJUFIN: TEditTag
                Left = 243
                Top = 64
                Width = 441
                Height = 21
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 8
                _Tipo = tpChar
                _Default = False
              end
              object edtCOD_CONTA_AUXCAL: TEditLabel
                Left = 115
                Top = 88
                Width = 129
                Height = 21
                _LabelCaption = 'Aux'#237'lio Cal.'
                _Campo = 'COD_CONTA_AUXCAL'
                _Edit = edtNOM_CONTA_AUXCAL
                LabelComponent.Width = 65
                LabelComponent.Height = 13
                LabelComponent.Caption = 'Aux'#237'lio Cal.'
                _Tipo = Pesquisa
                CharCase = ecUpperCase
                MaxLength = 9
                TabOrder = 9
                OnClickButton = edtCOD_CONTA_AUXCALClickButton
                OnExit = edtCOD_CONTA_AUXCALExit
              end
              object edtNOM_CONTA_AUXCAL: TEditTag
                Left = 243
                Top = 88
                Width = 441
                Height = 21
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 11
                _Tipo = tpChar
                _Default = False
              end
              object edtCOD_CONTA_CONG: TEditLabel
                Left = 115
                Top = 112
                Width = 129
                Height = 21
                _LabelCaption = 'Conta Cong.'
                _Campo = 'COD_CONTA_CONG'
                _Edit = edtNOM_CONTA_CONG
                LabelComponent.Width = 72
                LabelComponent.Height = 13
                LabelComponent.Caption = 'Conta Cong.'
                _Tipo = Pesquisa
                CharCase = ecUpperCase
                MaxLength = 9
                TabOrder = 12
                OnClickButton = edtCOD_CONTA_CONGClickButton
                OnExit = edtCOD_CONTA_CONGExit
              end
              object edtNOM_CONTA_CONG: TEditTag
                Left = 243
                Top = 112
                Width = 441
                Height = 21
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 14
                _Tipo = tpChar
                _Default = False
              end
              object edtCOD_CONTA_OUTROS: TEditLabel
                Left = 115
                Top = 136
                Width = 129
                Height = 21
                _LabelCaption = 'Outros'
                _Campo = 'COD_CONTA_OUTROS'
                _Edit = edtNOM_CONTA_OUTROS
                LabelComponent.Width = 38
                LabelComponent.Height = 13
                LabelComponent.Caption = 'Outros'
                _Tipo = Pesquisa
                CharCase = ecUpperCase
                MaxLength = 9
                TabOrder = 15
                OnClickButton = edtCOD_CONTA_OUTROSClickButton
                OnExit = edtCOD_CONTA_OUTROSExit
              end
              object edtNOM_CONTA_OUTROS: TEditTag
                Left = 243
                Top = 136
                Width = 441
                Height = 21
                CharCase = ecUpperCase
                Enabled = False
                TabOrder = 17
                _Tipo = tpChar
                _Default = False
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Dados Congrega'#231#227'o'
            ImageIndex = 1
            object edtNOM_SERVO_CONTAS: TEditLabel
              Left = 112
              Top = 8
              Width = 569
              Height = 21
              _LabelCaption = 'Servo Contas'
              _Campo = 'NOM_SERVO_CONTAS'
              LabelComponent.Width = 78
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Servo Contas'
              _NotNull = True
              MaxLength = 60
              TabOrder = 0
            end
            object edtNOM_SECRETARIO: TEditLabel
              Left = 112
              Top = 32
              Width = 569
              Height = 21
              _LabelCaption = 'Secret'#225'rio'
              _Campo = 'NOM_SECRETARIO'
              LabelComponent.Width = 59
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Secret'#225'rio'
              _NotNull = True
              MaxLength = 60
              TabOrder = 1
            end
            object edtNOM_CONGREGACAO: TEditLabel
              Left = 112
              Top = 56
              Width = 305
              Height = 21
              _LabelCaption = 'Congrega'#231#227'o'
              _Campo = 'NOM_CONGREGACAO'
              LabelComponent.Width = 76
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Congrega'#231#227'o'
              _NotNull = True
              MaxLength = 80
              TabOrder = 2
            end
            object edtNOM_CIDADE: TEditLabel
              Left = 112
              Top = 128
              Width = 569
              Height = 21
              _LabelCaption = 'Cidade'
              _Campo = 'NOM_CIDADE'
              LabelComponent.Width = 40
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Cidade'
              _NotNull = True
              MaxLength = 60
              TabOrder = 7
            end
            object edtNOM_ESTADO: TEditLabel
              Left = 112
              Top = 152
              Width = 193
              Height = 21
              _LabelCaption = 'Dsc. Estado'
              _Campo = 'NOM_ESTADO'
              LabelComponent.Width = 67
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Dsc. Estado'
              _NotNull = True
              MaxLength = 30
              TabOrder = 8
            end
            object edtNOM_UF: TEditLabel
              Left = 376
              Top = 152
              Width = 41
              Height = 21
              _LabelCaption = 'UF'
              _Campo = 'NOM_UF'
              LabelComponent.Width = 14
              LabelComponent.Height = 13
              LabelComponent.Caption = 'UF'
              _NotNull = True
              MaxLength = 2
              TabOrder = 9
            end
            object edtNUM_CONGREGACAO: TEditLabel
              Left = 552
              Top = 56
              Width = 128
              Height = 21
              _LabelCaption = 'N'#250'mero Cong.'
              _Campo = 'NUM_CONGREGACAO'
              LabelComponent.Width = 83
              LabelComponent.Height = 13
              LabelComponent.Caption = 'N'#250'mero Cong.'
              _NotNull = True
              _Chave = True
              _IsChar = True
              _FormatoNumerico = 5.000000000000000000
              CharCase = ecUpperCase
              MaxLength = 6
              TabOrder = 3
            end
            object edtNOM_BANCO_CONG: TEditLabel
              Left = 112
              Top = 176
              Width = 305
              Height = 21
              _LabelCaption = 'Banco Cong.'
              _Campo = 'NOM_BANCO_CONG'
              LabelComponent.Width = 73
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Banco Cong.'
              MaxLength = 60
              TabOrder = 10
            end
            object edtNUM_AGENCIA_CONG: TEditLabel
              Left = 112
              Top = 200
              Width = 128
              Height = 21
              _LabelCaption = 'Ag'#234'ncia Cong.'
              _Campo = 'NUM_AGENCIA_CONG'
              LabelComponent.Width = 83
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Ag'#234'ncia Cong.'
              _Chave = True
              _IsChar = True
              _FormatoNumerico = 5.000000000000000000
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 11
            end
            object edtNUM_CONTA_CORRENTE_CONG: TEditLabel
              Left = 376
              Top = 200
              Width = 128
              Height = 21
              _LabelCaption = 'C/C Cong.'
              _Campo = 'NUM_CONTA_CORRENTE_CONG'
              LabelComponent.Width = 61
              LabelComponent.Height = 13
              LabelComponent.Caption = 'C/C Cong.'
              _Chave = True
              _IsChar = True
              _FormatoNumerico = 5.000000000000000000
              CharCase = ecUpperCase
              MaxLength = 15
              TabOrder = 12
            end
            object edtNOM_FAVORECIDO_CONG: TEditLabel
              Left = 112
              Top = 224
              Width = 569
              Height = 21
              _LabelCaption = 'Favorecido Cong.'
              _Campo = 'NOM_FAVORECIDO_CONG'
              LabelComponent.Width = 100
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Favorecido Cong.'
              MaxLength = 80
              TabOrder = 13
            end
            object edtNOM_ENDERECO: TEditLabel
              Left = 112
              Top = 80
              Width = 569
              Height = 21
              _LabelCaption = 'Endere'#231'o'
              _Campo = 'NOM_ENDERECO'
              LabelComponent.Width = 53
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Endere'#231'o'
              MaxLength = 100
              TabOrder = 4
            end
            object edtNOM_BAIRRO: TEditLabel
              Left = 112
              Top = 104
              Width = 305
              Height = 21
              _LabelCaption = 'Bairro'
              _Campo = 'NOM_BAIRRO'
              LabelComponent.Width = 35
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Bairro'
              MaxLength = 40
              TabOrder = 5
            end
            object edtNUM_CEP: TEditLabel
              Left = 552
              Top = 104
              Width = 127
              Height = 21
              _LabelCaption = 'CEP'
              _Campo = 'NUM_CEP'
              LabelComponent.Width = 23
              LabelComponent.Height = 13
              LabelComponent.Caption = 'CEP'
              _Chave = True
              _Tipo = CEP
              _IsChar = True
              _FormatoNumerico = 5.000000000000000000
              CharCase = ecUpperCase
              EditMask = '99999\-999;0; '
              MaxLength = 9
              TabOrder = 6
            end
          end
          object tabAssociacao: TTabSheet
            Caption = 'Dados Associa'#231#227'o'
            ImageIndex = 2
            object edtNOM_BANCO_ASS: TEditLabel
              Left = 112
              Top = 8
              Width = 305
              Height = 21
              _LabelCaption = 'Banco'
              _Campo = 'NOM_BANCO_ASS'
              LabelComponent.Width = 35
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Banco'
              MaxLength = 60
              TabOrder = 0
            end
            object edtNUM_AGENCIA_ASS: TEditLabel
              Left = 112
              Top = 32
              Width = 128
              Height = 21
              _LabelCaption = 'Ag'#234'ncia'
              _Campo = 'NUM_AGENCIA_ASS'
              LabelComponent.Width = 45
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Ag'#234'ncia'
              _Chave = True
              _IsChar = True
              _FormatoNumerico = 5.000000000000000000
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 1
            end
            object edtNUM_CONTA_DEPOSITO_ASS: TEditLabel
              Left = 376
              Top = 32
              Width = 128
              Height = 21
              _LabelCaption = 'C/C'
              _Campo = 'NUM_CONTA_DEPOSITO_ASS'
              LabelComponent.Width = 23
              LabelComponent.Height = 13
              LabelComponent.Caption = 'C/C'
              _Chave = True
              _IsChar = True
              _FormatoNumerico = 5.000000000000000000
              CharCase = ecUpperCase
              MaxLength = 15
              TabOrder = 2
            end
            object edtNOM_FAVORECIDO_ASS: TEditLabel
              Left = 112
              Top = 56
              Width = 569
              Height = 21
              _LabelCaption = 'Favorecido'
              _Campo = 'NOM_FAVORECIDO_ASS'
              LabelComponent.Width = 62
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Favorecido'
              MaxLength = 80
              TabOrder = 3
            end
          end
          object tabFechamento: TTabSheet
            Caption = 'Fechamento'
            ImageIndex = 3
            object edtVAL_RES_OMTJ: TEditLabel
              Left = 112
              Top = 8
              Width = 128
              Height = 21
              _LabelCaption = 'Resolu'#231#227'o OMTJ'
              _Campo = 'VAL_RES_OMTJ'
              LabelComponent.Width = 92
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Resolu'#231#227'o OMTJ'
              _NotNull = True
              _Chave = True
              _Tipo = Num_Decimal
              _IsChar = True
              _FormatoNumerico = 14.200000000000000000
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object edtVAL_AJU_FIN: TEditLabel
              Left = 112
              Top = 32
              Width = 128
              Height = 21
              _LabelCaption = 'Rem. Ajuda Fin.'
              _Campo = 'VAL_AJU_FIN'
              LabelComponent.Width = 91
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Rem. Ajuda Fin.'
              _NotNull = True
              _Chave = True
              _Tipo = Num_Decimal
              _IsChar = True
              _FormatoNumerico = 14.200000000000000000
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object edtCOD_TPLANCFEC: TEditLabel
              Left = 112
              Top = 56
              Width = 129
              Height = 21
              _LabelCaption = 'Tp. Lanc. Fech.'
              _Campo = 'COD_TPLANCFEC'
              _Edit = edtNOM_TPLANCFEC
              LabelComponent.Width = 86
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Tp. Lanc. Fech.'
              _NotNull = True
              _Tipo = Pesquisa
              _IsChar = True
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 2
              OnClickButton = edtCOD_TPLANCFECClickButton
              OnExit = edtCOD_TPLANCFECExit
            end
            object edtNOM_TPLANCFEC: TEditTag
              Left = 240
              Top = 56
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 4
              _Tipo = tpChar
              _Default = False
            end
            object edtCOD_TPLANCDEP: TEditLabel
              Left = 112
              Top = 80
              Width = 129
              Height = 21
              _LabelCaption = 'Tp. Lanc. Dep.'
              _Campo = 'COD_TPLANCDEP'
              _Edit = edtNOM_TPLANCDEP
              LabelComponent.Width = 83
              LabelComponent.Height = 13
              LabelComponent.Caption = 'Tp. Lanc. Dep.'
              _NotNull = True
              _Tipo = Pesquisa
              _IsChar = True
              CharCase = ecUpperCase
              MaxLength = 9
              TabOrder = 5
              OnClickButton = edtCOD_TPLANCDEPClickButton
              OnExit = edtCOD_TPLANCDEPExit
            end
            object edtNOM_TPLANCDEP: TEditTag
              Left = 240
              Top = 80
              Width = 441
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 7
              _Tipo = tpChar
              _Default = False
            end
          end
        end
      end
    end
  end
end
