object FormDataRelatorio: TFormDataRelatorio
  Left = 1048
  Top = 299
  BorderStyle = bsNone
  ClientHeight = 272
  ClientWidth = 250
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 53
    Top = 153
    Width = 140
    Height = 41
    BevelInner = bvLowered
    Color = clInactiveCaption
    TabOrder = 1
    object SpeedButton10: TSpeedButton
      Left = 24
      Top = 10
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      OnClick = SpeedButton10Click
    end
    object SpeedButton11: TSpeedButton
      Left = 95
      Top = 10
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = SpeedButton11Click
    end
  end
  object Panel1: TPanel
    Left = 53
    Top = 65
    Width = 140
    Height = 80
    BevelInner = bvLowered
    Color = clInactiveCaption
    TabOrder = 2
    object Mask2: TMaskEdit
      Left = 31
      Top = 46
      Width = 75
      Height = 21
      EditMask = '!99/99/00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      Text = '  /  /  '
    end
    object Mask1: TMaskEdit
      Left = 31
      Top = 10
      Width = 75
      Height = 21
      EditMask = '!99/99/00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
      Text = '  /  /  '
    end
  end
  object ComboBox1: TComboBox
    Left = 53
    Top = 32
    Width = 138
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'M. BENZ/L 2219'
      'M.BENZ /L 2325'
      'M. BENZ 2428')
  end
  object Button1: TButton
    Left = 152
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '6'
  end
  object Button2: TButton
    Left = 152
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'Transporte'
    TableName = 'Combustivel.DB'
    Left = 8
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 8
    Top = 88
  end
  object soma: TQuery
    DatabaseName = 'Transporte'
    Left = 8
    Top = 128
  end
end
