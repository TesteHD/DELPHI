object frmPrincipal: TfrmPrincipal
  Left = 90
  Top = 90
  Width = 655
  Height = 472
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
    Width = 647
    Height = 30
    Caption = 'tlbTop'
    TabOrder = 0
    Visible = False
  end
  object stb: TStatusBar
    Left = 0
    Top = 398
    Width = 647
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
    Height = 368
    Align = alLeft
    Caption = 'tlb'
    TabOrder = 2
  end
  object mnu: TMainMenu
    Left = 48
    Top = 40
    object mnuMovimentacao: TMenuItem
      Caption = '&Movimenta'#231#227'o'
      object frmNotasFiscais: TMenuItem
        Caption = '&Notas Fiscais'
        object mnuFIS_ENTRADA: TMenuItem
          Caption = '&Entrada'
          OnClick = mnuFIS_ENTRADAClick
        end
        object mnuFIS_SAIDA: TMenuItem
          Caption = '&Sa'#237'da'
          OnClick = mnuFIS_SAIDAClick
        end
      end
      object mnuAcertoEstoque: TMenuItem
        Caption = '&Acerto Saldo F'#237'sico Estoque'
        OnClick = mnuAcertoEstoqueClick
      end
      object mnuVenda: TMenuItem
        Caption = '&Vendas'
        object mnuVEN_PEDIDO: TMenuItem
          Caption = '&Preenchimento Pedido/Licita'#231#227'o'
          OnClick = mnuVEN_PEDIDOClick
        end
      end
    end
    object mnuPesquisa: TMenuItem
      Caption = '&Pesquisa'
      object mnuPesqMovProduto: TMenuItem
        Caption = 'Pesquisa &Movimenta'#231#227'o Produto'
        OnClick = mnuPesqMovProdutoClick
      end
    end
    object mnuRelatorio: TMenuItem
      Caption = '&Relat'#243'rio'
      object mnuRelProduto: TMenuItem
        Caption = '&Produtos'
        OnClick = mnuRelProdutoClick
      end
      object mnuContagem: TMenuItem
        Caption = '&Contagem'
        OnClick = mnuContagemClick
      end
      object mnuInventario: TMenuItem
        Caption = '&Invent'#225'rio'
        OnClick = mnuInventarioClick
      end
    end
    object mnuCadastro: TMenuItem
      Caption = '&Cadastros'
      object mnuCAD_EMPRESA: TMenuItem
        Caption = '&Empresa'
        OnClick = mnuCAD_EMPRESAClick
      end
      object mnuCAD_FILIAL: TMenuItem
        Caption = 'Fi&lial'
        OnClick = mnuCAD_FILIALClick
      end
      object mnuCAD_CLIENTE: TMenuItem
        Caption = '&Cliente'
        OnClick = mnuCAD_CLIENTEClick
      end
      object mnuCAD_FORNECEDOR: TMenuItem
        Caption = '&Fornecedor'
        OnClick = mnuCAD_FORNECEDORClick
      end
      object mnuCAD_CIDADE: TMenuItem
        Caption = 'Ci&dade'
        OnClick = mnuCAD_CIDADEClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuCAD_P_ATIVO: TMenuItem
        Caption = '&Princ'#237'pio Ativo'
        OnClick = mnuCAD_P_ATIVOClick
      end
      object mnuCAD_APRES: TMenuItem
        Caption = '&Apresenta'#231#227'o'
        OnClick = mnuCAD_APRESClick
      end
      object mnuCAD_PRODUTO: TMenuItem
        Caption = 'P&roduto'
        OnClick = mnuCAD_PRODUTOClick
      end
      object mnuCAD_PRECO: TMenuItem
        Caption = 'Pre'#231'o de Compra do Produto'
        OnClick = mnuCAD_PRECOClick
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
