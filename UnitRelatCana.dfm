object FormRelatCana: TFormRelatCana
  Left = 209
  Top = 130
  BorderStyle = bsNone
  Caption = 'FormRelatCana'
  ClientHeight = 308
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 40
    Top = 32
    Width = 320
    Height = 219
    BevelInner = bvLowered
    Color = clInactiveCaption
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Datas'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Mask1: TMaskEdit
      Left = 27
      Top = 55
      Width = 73
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
    object Mask2: TMaskEdit
      Left = 27
      Top = 79
      Width = 73
      Height = 21
      EditMask = '!99/99/00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      Text = '  /  /  '
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Frota'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object Edit4: TEdit
      Left = 128
      Top = 56
      Width = 75
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 216
      Top = 24
      Width = 81
      Height = 25
      Caption = 'Motorista'
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object Edit5: TEdit
      Left = 216
      Top = 56
      Width = 81
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object BitBtn4: TBitBtn
      Left = 130
      Top = 82
      Width = 167
      Height = 25
      Caption = 'Motorista e Frota'
      TabOrder = 7
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 24
      Top = 112
      Width = 273
      Height = 25
      Caption = '2325 / RODOVIARIA'
      TabOrder = 8
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 24
      Top = 144
      Width = 273
      Height = 25
      Caption = '2219 / FNV'
      TabOrder = 9
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 24
      Top = 176
      Width = 273
      Height = 25
      Caption = '2428 / GUERRA'
      TabOrder = 10
      OnClick = BitBtn7Click
    end
  end
  object Button1: TButton
    Left = 160
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button1Click
  end
end
