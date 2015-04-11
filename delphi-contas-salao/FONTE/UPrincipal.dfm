object frmPrincipal: TfrmPrincipal
  Left = 248
  Top = 175
  Width = 638
  Height = 433
  Caption = 'Sistema de Controle'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tlbTop: TToolBar
    Left = 0
    Top = 0
    Width = 630
    Height = 30
    ButtonHeight = 24
    Caption = 'tlbTop'
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 2
      Width = 95
      Height = 24
      Caption = '   M'#234's/Ano: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cboMes: TComboBox
      Left = 95
      Top = 2
      Width = 217
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
    end
    object edtAno: TEdit
      Left = 312
      Top = 2
      Width = 121
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object UpDown: TUpDown
      Left = 433
      Top = 2
      Width = 17
      Height = 24
      Associate = edtAno
      Max = 3000
      TabOrder = 3
      Thousands = False
    end
    object btnAtual: TButton
      Left = 450
      Top = 2
      Width = 75
      Height = 24
      Caption = 'Atual'
      TabOrder = 2
      OnClick = btnAtualClick
    end
    object btnMesAnterior: TButton
      Left = 525
      Top = 2
      Width = 28
      Height = 24
      Caption = '<<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnMesAnteriorClick
    end
    object btnProximoMes: TButton
      Left = 553
      Top = 2
      Width = 28
      Height = 24
      Caption = '>>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnProximoMesClick
    end
  end
  object stb: TStatusBar
    Left = 0
    Top = 359
    Width = 630
    Height = 20
    Panels = <
      item
        Style = psOwnerDraw
        Text = 'Mensagem'
        Width = 450
      end
      item
        Text = 'Impressora:'
        Width = 250
      end
      item
        Alignment = taCenter
        Text = '29/05/2004'
        Width = 20
      end>
  end
  object tlbLeft: TToolBar
    Left = 0
    Top = 30
    Width = 41
    Height = 329
    Align = alLeft
    Caption = 'tlb'
    TabOrder = 2
  end
  object mnu: TMainMenu
    Left = 48
    Top = 40
    object mnuMovimentacao: TMenuItem
      Caption = '&Movimenta'#231#227'o'
      object mnuMOV_LANCAMENTOS: TMenuItem
        Caption = 'Lan'#231'amentos'
        OnClick = mnuMOV_LANCAMENTOSClick
      end
      object mnuCAD_FECHAMENTO: TMenuItem
        Caption = '&Fechamento'
        OnClick = mnuCAD_FECHAMENTOClick
      end
      object mnuGerenciamento: TMenuItem
        Caption = '&Gerenciamento'
        OnClick = mnuGerenciamentoClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuContagemDinheiro: TMenuItem
        Caption = 'Contagem Dinheiro'
        OnClick = mnuContagemDinheiroClick
      end
    end
    object mnuPesquisa: TMenuItem
      Caption = '&Pesquisa'
      object mnuPesqLanc: TMenuItem
        Caption = '&Lan'#231'amentos'
        OnClick = mnuPesqLancClick
      end
      object mnuPesqFech: TMenuItem
        Caption = 'Fechamento'
        OnClick = mnuPesqFechClick
      end
    end
    object mnuRelatorio: TMenuItem
      Caption = '&Relat'#243'rio'
    end
    object mnuCadastro: TMenuItem
      Caption = '&Cadastros'
      object mnuCAD_CONTA: TMenuItem
        Caption = '&Contas'
        OnClick = mnuCAD_CONTAClick
      end
      object mnuCAD_TP_LANC: TMenuItem
        Caption = '&Tipo de Lan'#231'amento'
        OnClick = mnuCAD_TP_LANCClick
      end
      object mnuCAD_CONFIG: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = mnuCAD_CONFIGClick
      end
      object mnuCAD_PUBLICO: TMenuItem
        Caption = 'P'#250'blico'
        OnClick = mnuCAD_PUBLICOClick
      end
    end
    object mnuSair: TMenuItem
      Caption = 'Sai&r'
      OnClick = mnuSairClick
    end
  end
  object appExcept: TApplicationEvents
    OnException = appExceptException
    Left = 80
    Top = 40
  end
end
