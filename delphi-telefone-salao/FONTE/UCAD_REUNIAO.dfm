inherited frmCAD_REUNIAO: TfrmCAD_REUNIAO
  Left = 42
  Top = 92
  Caption = 'Cadastro de Reuni'#227'o'
  ClientHeight = 201
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl3: TPanel
    Top = 145
  end
  inherited tab: TPageControl
    Height = 145
    inherited tabCadastro: TTabSheet
      inherited pnl1: TPanel
        Height = 25
        object edtDAT_SEMANA: TEditLabel
          Left = 112
          Top = 3
          Width = 120
          Height = 21
          _LabelCaption = 'Semana'
          _Campo = 'DAT_SEMANA'
          LabelComponent.Width = 47
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Semana'
          _NotNull = True
          _Chave = True
          _Tipo = Data
          _FormatoNumerico = 4.000000000000000000
          CharCase = ecUpperCase
          EditMask = '99/99/0000;1; '
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object Calendario: TDateTimePicker
          Left = 232
          Top = 3
          Width = 21
          Height = 21
          Date = 38272.559576273150000000
          Time = 38272.559576273150000000
          TabOrder = 1
          TabStop = False
          OnChange = CalendarioChange
        end
      end
      inherited pnl2: TPanel
        Top = 25
        Height = 92
        object edtNUM_CANTICO: TEditLabel
          Left = 112
          Top = 32
          Width = 121
          Height = 21
          _LabelCaption = 'C'#226'ntico'
          _Campo = 'NUM_CANTICO'
          LabelComponent.Width = 43
          LabelComponent.Height = 13
          LabelComponent.Caption = 'C'#226'ntico'
          _FormatoNumerico = 3.000000000000000000
          MaxLength = 3
          TabOrder = 1
        end
        object edtDAT_REUNIAO: TEditLabel
          Left = 112
          Top = 8
          Width = 120
          Height = 21
          _LabelCaption = 'Reuni'#227'o'
          _Campo = 'DAT_REUNIAO'
          LabelComponent.Width = 46
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Reuni'#227'o'
          _Tipo = Data
          _FormatoNumerico = 3.000000000000000000
          EditMask = '99/99/0000;1; '
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object edtNUM_ASSIST: TEditLabel
          Left = 112
          Top = 56
          Width = 121
          Height = 21
          _LabelCaption = 'Assist'#234'ncia'
          _Campo = 'NUM_ASSIST'
          LabelComponent.Width = 63
          LabelComponent.Height = 13
          LabelComponent.Caption = 'Assist'#234'ncia'
          _FormatoNumerico = 3.000000000000000000
          MaxLength = 3
          TabOrder = 2
        end
      end
    end
  end
end
