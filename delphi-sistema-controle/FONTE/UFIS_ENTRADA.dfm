inherited frmFIS_ENTRADA: TfrmFIS_ENTRADA
  Left = 56
  Top = 30
  Caption = 'Entrada de Nota Fiscal'
  ClientHeight = 464
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 408
  end
  inherited tab: TPageControl
    Height = 408
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 105
        object edtNUM_DOCUMENTO: TEditLabel
          Left = 112
          Top = 80
          Width = 121
          Height = 21
          _LabelCaption = 'N'#250'mero'
          _Campo = 'NUM_DOCUMENTO'
          LabelComponent.Width = 45
          LabelComponent.Height = 13
          LabelComponent.Caption = 'N'#250'mero'
          _NotNull = True
          _Chave = True
          _Tipo = Numero
          _FormatoNumerico = 10.000000000000000000
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 9
        end
        object edtCOD_EMPRESA: TEditLabel
          Left = 112
          Top = 8
          Width = 129
          Height = 21
          _LabelCaption = 'Empresa'
          _Campo = 'COD_EMPRESA'
          _Edit = edtNOM_EMPRESA
          LabelComponent.Width = 50
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Empresa'
          _NotNull = True
          _Chave = True
          _Tipo = Pesquisa
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = edtCOD_EMPRESAChange
          OnClickButton = edtCOD_EMPRESAClickButton
          OnEnter = edtCOD_EMPRESAEnter
          OnExit = edtCOD_EMPRESAExit
        end
        object edtNOM_EMPRESA: TEditTag
          Left = 240
          Top = 8
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 1
          _Tipo = tpChar
          _Default = False
        end
        object edtCOD_FILIAL: TEditLabel
          Left = 112
          Top = 32
          Width = 129
          Height = 21
          _LabelCaption = 'Filial'
          _Campo = 'COD_FILIAL'
          _Edit = edtNOM_FILIAL
          LabelComponent.Width = 25
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Filial'
          _NotNull = True
          _Chave = True
          _Tipo = Pesquisa
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 2
          OnClickButton = edtCOD_FILIALClickButton
          OnExit = edtCOD_FILIALExit
        end
        object edtNOM_FILIAL: TEditTag
          Left = 240
          Top = 32
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 3
          _Tipo = tpChar
          _Default = False
        end
        object edtCOD_FORNECEDOR: TEditLabel
          Left = 112
          Top = 56
          Width = 129
          Height = 21
          _LabelCaption = 'Fornecedor'
          _Campo = 'COD_FORNECEDOR'
          _Edit = edtNOM_FORNECEDOR
          LabelComponent.Width = 64
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Fornecedor'
          _NotNull = True
          _Chave = True
          _Tipo = Pesquisa
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          TabOrder = 4
          OnClickButton = edtCOD_FORNECEDORClickButton
          OnExit = edtCOD_FORNECEDORExit
        end
        object edtNOM_FORNECEDOR: TEditTag
          Left = 240
          Top = 56
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 5
          _Tipo = tpChar
          _Default = False
        end
        object edtNOM_SERIE: TEditLabel
          Left = 344
          Top = 80
          Width = 41
          Height = 21
          _LabelCaption = 'S'#233'rie'
          _Campo = 'NOM_SERIE'
          LabelComponent.Width = 30
          LabelComponent.Height = 13
          LabelComponent.Caption = 'S'#233'rie'
          _Chave = True
          _FormatoNumerico = 10.000000000000000000
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 10
          OnExit = edtNOM_SERIEExit
        end
      end
      inherited pnl2: TPanel
        Top = 105
        Height = 275
        object lblValorTotal: TLabel
          Left = 519
          Top = 256
          Width = 165
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Total: 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtDAT_EMISSAO: TEditLabel
          Left = 112
          Top = 32
          Width = 120
          Height = 21
          _LabelCaption = 'Emiss'#227'o'
          _Campo = 'DAT_EMISSAO'
          LabelComponent.Width = 47
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Emiss'#227'o'
          _NotNull = True
          _Tipo = Data
          CharCase = ecUpperCase
          EditMask = '99/99/0000;1; '
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
        object edtDAT_ENTRADA: TEditLabel
          Left = 344
          Top = 32
          Width = 120
          Height = 21
          _LabelCaption = 'Entrada'
          _Campo = 'DAT_ENTRADA'
          LabelComponent.Width = 44
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Entrada'
          _NotNull = True
          _Tipo = Data
          CharCase = ecUpperCase
          EditMask = '99/99/0000;1; '
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object edtVAL_TOTAL: TEditLabel
          Left = 112
          Top = 56
          Width = 121
          Height = 21
          _LabelCaption = 'Valor Total'
          _Campo = 'VAL_TOTAL'
          LabelComponent.Width = 62
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Valor Total'
          _NotNull = True
          _Tipo = Num_Decimal
          _FormatoNumerico = 14.200000000000000000
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 3
        end
        object edtVAL_CUSTOS_NF: TEditLabel
          Left = 344
          Top = 56
          Width = 121
          Height = 21
          _LabelCaption = 'Custos NF'
          _Campo = 'VAL_CUSTOS_NF'
          LabelComponent.Width = 57
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Custos NF'
          _NotNull = True
          _Tipo = Num_Decimal
          _FormatoNumerico = 14.200000000000000000
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 4
          Text = '0,00'
          OnExit = edtVAL_CUSTOS_NFExit
        end
        object edtVAL_CUSTOS: TEditLabel
          Left = 560
          Top = 56
          Width = 121
          Height = 21
          _LabelCaption = 'Outros Custos'
          _Campo = 'VAL_CUSTOS'
          LabelComponent.Width = 81
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Outros Custos'
          _NotNull = True
          _Tipo = Num_Decimal
          _FormatoNumerico = 14.200000000000000000
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 5
          Text = '0,00'
          OnExit = edtVAL_CUSTOSExit
        end
        object grpSexo: TGroupBox
          Left = 113
          Top = 0
          Width = 456
          Height = 28
          Caption = 'Tipo'
          TabOrder = 0
          object optNormal: TRadioButtonTag
            Left = 56
            Top = 9
            Width = 113
            Height = 17
            Caption = '&Normal'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TabStop = True
            _Campo = 'FLG_TIPO'
            _Tipo = tpChar
            _Valor = 'N'
            _Default = True
          end
          object optDevolucao: TRadioButtonTag
            Left = 184
            Top = 9
            Width = 113
            Height = 17
            Caption = '&Devolu'#231#227'o'
            TabOrder = 1
            _Campo = 'FLG_TIPO'
            _Tipo = tpChar
            _Valor = 'D'
            _Default = False
          end
          object optAjuste: TRadioButtonTag
            Left = 336
            Top = 9
            Width = 113
            Height = 17
            Caption = '&Ajuste'
            TabOrder = 2
            _Campo = 'FLG_TIPO'
            _Tipo = tpChar
            _Valor = 'A'
            _Default = False
          end
        end
        object edtCOD_PRODUTO: TEditLabel
          Left = 112
          Top = 80
          Width = 129
          Height = 21
          _LabelCaption = 'Produto'
          _Edit = edtNOM_PRODUTO
          LabelComponent.Width = 44
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Produto'
          _Chave = True
          _Tipo = Pesquisa
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          TabOrder = 6
          OnClickButton = edtCOD_PRODUTOClickButton
          OnExit = edtCOD_PRODUTOExit
        end
        object edtNOM_PRODUTO: TEditTag
          Left = 240
          Top = 80
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 8
          _Tipo = tpChar
          _Default = False
        end
        object edtQTD_MOV: TEditLabel
          Left = 112
          Top = 104
          Width = 121
          Height = 21
          _LabelCaption = 'Quantidade'
          LabelComponent.Width = 65
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Quantidade'
          _Tipo = Num_Decimal
          _FormatoNumerico = 12.300000000000000000
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 9
        end
        object edtVAL_MOV: TEditLabel
          Left = 344
          Top = 104
          Width = 121
          Height = 21
          _LabelCaption = 'Valor Total'
          LabelComponent.Width = 62
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Valor Total'
          _Tipo = Num_Decimal
          _FormatoNumerico = 14.200000000000000000
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 10
          OnExit = edtVAL_MOVExit
        end
        object lvw: TListViewTag
          Left = 112
          Top = 128
          Width = 569
          Height = 121
          Columns = <
            item
              Caption = 'C'#243'digo'
              Width = 60
            end
            item
              Caption = 'Produto'
              Width = 300
            end
            item
              Alignment = taRightJustify
              Caption = 'Quantidade'
              Width = 100
            end
            item
              Alignment = taRightJustify
              Caption = 'Valor Total'
              Width = 100
            end>
          RowSelect = True
          TabOrder = 13
          ViewStyle = vsReport
          OnDblClick = lvwDblClick
          OnKeyDown = lvwKeyDown
        end
        object btnInserirProduto: TButton
          Left = 472
          Top = 104
          Width = 75
          Height = 23
          Caption = 'Inserir'
          TabOrder = 11
          OnClick = btnInserirProdutoClick
        end
        object btnExcluirProduto: TButton
          Left = 552
          Top = 104
          Width = 75
          Height = 23
          Caption = 'Excluir'
          TabOrder = 12
          OnClick = btnExcluirProdutoClick
        end
      end
    end
  end
end
