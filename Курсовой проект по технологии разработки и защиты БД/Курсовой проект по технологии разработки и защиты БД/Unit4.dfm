object Form4: TForm4
  Left = -49
  Top = 0
  Caption = #1058#1077#1089#1090
  ClientHeight = 741
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel5: TsLabel
    Left = 8
    Top = 79
    Width = 4
    Height = 19
    ParentFont = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
  end
  object sLabel3: TsLabel
    Left = 8
    Top = 123
    Width = 4
    Height = 19
    ParentFont = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
  end
  object Image1: TImage
    Left = 688
    Top = 160
    Width = 674
    Height = 581
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 8
    Width = 1362
    Height = 65
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 16
      Top = 24
      Width = 4
      Height = 19
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
    end
    object sLabel2: TsLabel
      Left = 664
      Top = 22
      Width = 4
      Height = 19
      ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
    end
  end
  object sRadioGroup1: TsRadioGroup
    Left = 8
    Top = 160
    Width = 641
    Height = 505
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
  end
  object sButton1: TsButton
    Left = 0
    Top = 688
    Width = 649
    Height = 45
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    OnClick = sButton1Click
    SkinData.SkinSection = 'BUTTON'
  end
end
