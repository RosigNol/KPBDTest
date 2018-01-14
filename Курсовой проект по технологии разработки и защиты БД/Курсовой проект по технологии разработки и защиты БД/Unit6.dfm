object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1059#1095#1080#1090#1077#1083#1100#1089#1082#1072#1103' '#1091#1095#1077#1090#1085#1072#1103' '#1079#1072#1087#1080#1089#1100
  ClientHeight = 417
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPageControl1: TsPageControl
    Left = 0
    Top = 0
    Width = 789
    Height = 417
    ActivePage = sTabSheet6
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1090#1077#1089#1090#1086#1074'.'
      OnShow = sTabSheet1Show
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sLabel2: TsLabel
        Left = 16
        Top = 8
        Width = 5
        Height = 24
        ParentFont = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 155
        Width = 778
        Height = 231
        DataSource = DataModule1.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object sComboBox1: TsComboBox
        Left = 224
        Top = 128
        Width = 145
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = -1
        ParentFont = False
        TabOrder = 1
        Text = 'sComboBox1'
        OnChange = sComboBox1Change
      end
      object sComboBox2: TsComboBox
        Left = 400
        Top = 128
        Width = 145
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = -1
        ParentFont = False
        TabOrder = 2
        Text = 'sComboBox2'
        OnChange = sComboBox2Change
      end
      object sComboBox3: TsComboBox
        Left = 576
        Top = 128
        Width = 193
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = -1
        ParentFont = False
        TabOrder = 3
        Text = 'sComboBox3'
        OnChange = sComboBox3Change
      end
      object sCheckBox1: TsCheckBox
        Left = 8
        Top = 103
        Width = 17
        Height = 15
        TabOrder = 4
        OnClick = sCheckBox1Click
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox2: TsCheckBox
        Left = 224
        Top = 103
        Width = 17
        Height = 15
        TabOrder = 5
        OnClick = sCheckBox2Click
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox3: TsCheckBox
        Left = 400
        Top = 103
        Width = 17
        Height = 15
        TabOrder = 6
        OnClick = sCheckBox3Click
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox4: TsCheckBox
        Left = 576
        Top = 103
        Width = 17
        Height = 15
        TabOrder = 7
        OnClick = sCheckBox4Click
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 8
        Top = 128
        Width = 186
        Height = 21
        Date = 41772.468578831020000000
        Time = 41772.468578831020000000
        Enabled = False
        TabOrder = 8
        OnChange = DateTimePicker1Change
      end
      object sPanel1: TsPanel
        Left = 8
        Top = 36
        Width = 761
        Height = 45
        TabOrder = 9
        SkinData.SkinSection = 'PANEL'
        object sLabel1: TsLabel
          Left = 24
          Top = 14
          Width = 5
          Height = 22
          ParentFont = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
        end
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = #1054#1095#1080#1089#1090#1082#1072' '#1078#1091#1088#1085#1072#1083#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1089#1090#1091#1076#1077#1085#1090#1086#1074'.'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GridPanel5: TGridPanel
        Left = 35
        Top = 16
        Width = 702
        Height = 321
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = sPanel2
            Row = 0
          end
          item
            Column = 0
            Control = DBGrid2
            Row = 1
          end
          item
            Column = 0
            Control = sButton1
            Row = 2
          end
          item
            Column = 0
            Control = sButton2
            Row = 3
          end>
        RowCollection = <
          item
            Value = 23.590403900521280000
          end
          item
            Value = 52.427488736330870000
          end
          item
            Value = 10.564818571693420000
          end
          item
            Value = 13.417288791454440000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        object sPanel2: TsPanel
          Left = 1
          Top = 1
          Width = 700
          Height = 75
          Align = alClient
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sLabel3: TsLabel
            Left = 24
            Top = 8
            Width = 5
            Height = 22
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 76
          Width = 700
          Height = 167
          Align = alClient
          DataSource = DataModule1.DataSource2
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object sButton1: TsButton
          Left = 1
          Top = 243
          Width = 700
          Height = 33
          Align = alClient
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
        object sButton2: TsButton
          Left = 1
          Top = 293
          Width = 700
          Height = 25
          Align = alBottom
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 3
          OnClick = sButton2Click
          SkinData.SkinSection = 'BUTTON'
          ExplicitTop = 295
        end
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1077#1084' '#1080' '#1076#1080#1089#1094#1080#1087#1083#1080#1085'.'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GridPanel4: TGridPanel
        Left = 3
        Top = 0
        Width = 742
        Height = 393
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = sPanel3
            Row = 0
          end
          item
            Column = 0
            Control = sPanel4
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          742
          393)
        object sPanel3: TsPanel
          Left = 1
          Top = 27
          Width = 740
          Height = 142
          Anchors = []
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sLabel4: TsLabel
            Left = 24
            Top = 15
            Width = 5
            Height = 24
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sEdit1: TsEdit
            Left = 24
            Top = 45
            Width = 489
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = sEdit1Click
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
          object sButton3: TsButton
            Left = 24
            Top = 96
            Width = 489
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = sButton3Click
            SkinData.SkinSection = 'BUTTON'
          end
        end
        object sPanel4: TsPanel
          Left = 1
          Top = 196
          Width = 740
          Height = 196
          Anchors = []
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object sLabel5: TsLabel
            Left = 21
            Top = 8
            Width = 5
            Height = 22
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sEdit2: TsEdit
            Left = 21
            Top = 86
            Width = 489
            Height = 21
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = sEdit2Click
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
          object sButton5: TsButton
            Left = 21
            Top = 137
            Width = 489
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = sButton5Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sComboBox7: TsComboBox
            Left = 21
            Top = 43
            Width = 489
            Height = 21
            Alignment = taLeftJustify
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taAlignTop
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = -1
            ParentFont = False
            TabOrder = 2
            OnChange = sComboBox7Change
          end
        end
      end
    end
    object sTabSheet4: TsTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1074#1086#1087#1088#1086#1089#1086#1074' '#1080' '#1086#1090#1074#1077#1090#1086#1074'.'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GridPanel3: TGridPanel
        Left = 3
        Top = 0
        Width = 775
        Height = 393
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = sPanel5
            Row = 0
          end
          item
            Column = 1
            Control = sPanel6
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          775
          393)
        object sPanel5: TsPanel
          Left = 15
          Top = 5
          Width = 357
          Height = 383
          Anchors = []
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sLabel7: TsLabel
            Left = 17
            Top = 16
            Width = 5
            Height = 22
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sButton10: TsButton
            Left = 17
            Top = 349
            Width = 313
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = sButton10Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sComboBox4: TsComboBox
            Left = 12
            Top = 44
            Width = 325
            Height = 21
            Alignment = taLeftJustify
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taAlignTop
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = -1
            ParentFont = False
            TabOrder = 1
            OnChange = sComboBox4Change
          end
          object sComboBox5: TsComboBox
            Left = 12
            Top = 88
            Width = 325
            Height = 21
            Alignment = taLeftJustify
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taAlignTop
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = -1
            ParentFont = False
            TabOrder = 2
            OnChange = sComboBox5Change
          end
          object sEdit4: TsEdit
            Left = 12
            Top = 132
            Width = 325
            Height = 21
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = sEdit4Click
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
        end
        object sPanel6: TsPanel
          Left = 387
          Top = 5
          Width = 387
          Height = 383
          Anchors = []
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object sLabel6: TsLabel
            Left = 21
            Top = 11
            Width = 5
            Height = 22
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sButton7: TsButton
            Left = 21
            Top = 349
            Width = 357
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = sButton7Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sCheckBox5: TsCheckBox
            Left = 21
            Top = 225
            Width = 17
            Height = 15
            TabOrder = 1
            SkinData.SkinSection = 'CHECKBOX'
            ImgChecked = 0
            ImgUnchecked = 0
          end
          object sEdit3: TsEdit
            Left = 21
            Top = 182
            Width = 357
            Height = 21
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = sEdit3Click
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
          object sComboBox6: TsComboBox
            Left = 21
            Top = 132
            Width = 357
            Height = 21
            Alignment = taLeftJustify
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taAlignTop
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = -1
            ParentFont = False
            TabOrder = 3
            OnChange = sComboBox6Change
          end
          object sComboBox8: TsComboBox
            Left = 21
            Top = 45
            Width = 357
            Height = 21
            Alignment = taLeftJustify
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taAlignTop
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = -1
            ParentFont = False
            TabOrder = 4
            OnChange = sComboBox8Change
          end
          object sComboBox9: TsComboBox
            Left = 21
            Top = 88
            Width = 357
            Height = 21
            Alignment = taLeftJustify
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taAlignTop
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = -1
            ParentFont = False
            TabOrder = 5
            OnChange = sComboBox9Change
          end
        end
      end
    end
    object sTabSheet5: TsTabSheet
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1080' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1094#1077#1085#1086#1082'.'
      OnShow = sTabSheet5Show
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GridPanel2: TGridPanel
        Left = 57
        Top = 11
        Width = 705
        Height = 385
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = sPanel9
            Row = 0
          end
          item
            Column = 0
            Control = DBGrid3
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          705
          385)
        object sPanel9: TsPanel
          Left = 1
          Top = 1
          Width = 703
          Height = 191
          Align = alClient
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          ExplicitLeft = 0
          ExplicitTop = 0
          DesignSize = (
            703
            191)
          object sLabel8: TsLabel
            Left = 32
            Top = 24
            Width = 5
            Height = 24
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sLabel9: TsLabel
            Left = 8
            Top = 64
            Width = 213
            Height = 22
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1094#1077#1085#1082#1080':'
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sLabel10: TsLabel
            Left = 323
            Top = 64
            Width = 168
            Height = 22
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1094#1077#1085#1082#1080':'
            ParentFont = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
          end
          object sEdit5: TsEdit
            Left = 8
            Top = 94
            Width = 241
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = sEdit5Click
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
          object sButton8: TsButton
            Left = 8
            Top = 136
            Width = 241
            Height = 41
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 1
            OnClick = sButton8Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sButton9: TsButton
            Left = 323
            Top = 136
            Width = 278
            Height = 41
            Anchors = []
            TabOrder = 2
            OnClick = sButton9Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sEdit6: TsEdit
            Left = 323
            Top = 92
            Width = 278
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
          end
        end
        object DBGrid3: TDBGrid
          Left = 192
          Top = 206
          Width = 320
          Height = 163
          Anchors = []
          DataSource = DataModule1.DataSource3
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object sTabSheet6: TsTabSheet
      Caption = #1054#1090#1095#1077#1090#1099'.'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GridPanel1: TGridPanel
        Left = 80
        Top = 30
        Width = 657
        Height = 336
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = sPanel7
            Row = 0
          end
          item
            Column = 0
            Control = sPanel8
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          657
          336)
        object sPanel7: TsPanel
          Left = 112
          Top = 32
          Width = 433
          Height = 105
          Anchors = []
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sButton6: TsButton
            Left = 72
            Top = 16
            Width = 289
            Height = 73
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = sButton6Click
            SkinData.SkinSection = 'BUTTON'
          end
        end
        object sPanel8: TsPanel
          Left = 112
          Top = 199
          Width = 433
          Height = 105
          Anchors = []
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object sButton4: TsButton
            Left = 72
            Top = 8
            Width = 289
            Height = 73
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            OnClick = sButton4Click
            SkinData.SkinSection = 'BUTTON'
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 80
    object G1: TMenuItem
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      object N1: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1082#1072' '#1078#1091#1088#1085#1072#1083#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1077#1084' '#1080' '#1076#1080#1089#1094#1080#1087#1083#1080#1085
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1074#1086#1087#1088#1086#1089#1086#1074' '#1080' '#1086#1090#1074#1077#1090#1086#1074
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1094#1077#1085#1082#1086
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1054#1090#1095#1077#1090#1099
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N7Click
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.0.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41785.842932638900000000
    ReportOptions.LastChange = 41785.842932638900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      '  procedure DialogPage1OnActivate(Sender: TfrxComponent);'
      'begin'
      '  While Not ADOQuery2.Eof do'
      'begin'
      
        ' ComboBox2.Items.Add(ADOQuery2.FieldByName('#39'NameDiscipline'#39').AsS' +
        'tring);'
      ' ADOQuery2.Next;'
      'end;'
      'While Not ADOQuery3.Eof do'
      'begin'
      ' ComboBox1.Items.Add(ADOQuery3.FieldByName('#39'GroupSt'#39').AsString);'
      ' ADOQuery3.Next;'
      'end;    '
      ''
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 200
    Datasets = <
      item
        DataSet = frxReport1.ADOQuery1
        DataSetName = 'ADOQuery1'
      end
      item
        DataSet = frxReport1.ADOQuery2
        DataSetName = 'ADOQuery2'
      end
      item
        DataSet = frxReport1.ADOQuery3
        DataSetName = 'ADOQuery3'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 52479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ADOQuery1: TfrxADOQuery
        UserName = 'ADOQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          ' '
          'SELECT     fam, GroupSt, NameDiscipline, Mark, DateSt'
          'FROM         Results INNER JOIN'
          
            '                      Student ON Results.NumberStudent = Student' +
            '.NumberStudent INNER JOIN'
          
            '                      Discipline ON Results.NumberDiscipline = D' +
            'iscipline.NumberDiscipline  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 130
        pTop = 20
        Parameters = <>
      end
      object ADOQuery2: TfrxADOQuery
        UserName = 'ADOQuery2'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'Select NameDiscipline From Discipline;  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 132
        pTop = 84
        Parameters = <>
      end
      object ADOQuery3: TfrxADOQuery
        UserName = 'ADOQuery3'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'Select Distinct GroupSt From Student;  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 132
        pTop = 160
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090#1085#1086#1089#1090#1100' '#1087#1086' '#1079#1072#1076#1072#1085#1085#1086#1081' '#1075#1088#1091#1087#1087#1077' '#1080' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1077'.')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 30.000000000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 151.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1060#1072#1084#1080#1083#1080#1103)
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 151.000000000000000000
          Width = 894.378480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1054#1094#1077#1085#1082#1072)
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 52.677180000000000000
        Width = 1046.929810000000000000
        Condition = 'ADOQuery1."NameDiscipline"'
        object Memo5: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          DataField = 'NameDiscipline'
          DataSet = frxReport1.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[ADOQuery1."NameDiscipline"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 82.677180000000000000
        Width = 1046.929810000000000000
        Condition = 'ADOQuery1."GroupSt"'
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          DataField = 'GroupSt'
          DataSet = frxReport1.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[ADOQuery1."GroupSt"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 112.677180000000000000
        Width = 1046.929810000000000000
        Condition = 'ADOQuery1."DateSt"'
        object Memo7: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          DataField = 'DateSt'
          DataSet = frxReport1.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[ADOQuery1."DateSt"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 142.677180000000000000
        Width = 1046.929810000000000000
        DataSet = frxReport1.ADOQuery1
        DataSetName = 'ADOQuery1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'fam'
          DataSet = frxReport1.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."fam"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 151.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Mark'
          DataSet = frxReport1.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."Mark"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 1000.000000000000000000
        Width = 1046.929810000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 970.000000000000000000
        Width = 1046.929810000000000000
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Top = 940.000000000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 1000.000000000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo11: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 341.000000000000000000
      ClientHeight = 302.000000000000000000
      Left = 173.000000000000000000
      Top = 147.000000000000000000
      Width = 692.000000000000000000
      ClientWidth = 676.000000000000000000
      OnActivate = 'DialogPage1OnActivate'
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 52.000000000000000000
        Width = 301.000000000000000000
        Height = 33.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091':'
        Color = clBtnFace
      end
      object Label2: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 136.000000000000000000
        Width = 218.000000000000000000
        Height = 31.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091':'
        Color = clBtnFace
      end
      object ComboBox1: TfrxComboBoxControl
        Left = 428.000000000000000000
        Top = 136.000000000000000000
        Width = 229.000000000000000000
        Height = 33.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Color = clWindow
        ItemIndex = -1
      end
      object ComboBox2: TfrxComboBoxControl
        Left = 428.000000000000000000
        Top = 52.000000000000000000
        Width = 229.000000000000000000
        Height = 33.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Color = clWindow
        ItemIndex = -1
      end
      object Button1: TfrxButtonControl
        Left = 128.000000000000000000
        Top = 228.000000000000000000
        Width = 99.000000000000000000
        Height = 37.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1054#1050
        ModalResult = 1
      end
      object Button2: TfrxButtonControl
        Left = 400.000000000000000000
        Top = 228.000000000000000000
        Width = 111.000000000000000000
        Height = 37.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '5.0.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41779.500849247700000000
    ReportOptions.LastChange = 41791.929611377320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure DialogPage1OnActivate(Sender: TfrxComponent);'
      'begin'
      '  While Not ADOQuery2.Eof do'
      'begin'
      ' ComboBox1.Items.Add(ADOQuery2.FieldByName('#39'fam'#39').AsString);'
      ' ADOQuery2.Next;'
      'end;  '
      'end;'
      ''
      'procedure ComboBox1OnChange(Sender: TfrxComponent);'
      'begin'
      
        'ComboBox2.Enabled:=true;                                        ' +
        '                '
      'While Not ADOQuery3.Eof do'
      'begin'
      
        ' ComboBox2.Items.Add(ADOQuery3.FieldByName('#39'NumberStudentTicket'#39 +
        ').AsString);'
      ' ADOQuery3.Next;'
      'end;  '
      'end;'
      ''
      'procedure ComboBox2OnChange(Sender: TfrxComponent);'
      'begin'
      '  DateEdit1.Enabled:=true;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 264
    Datasets = <
      item
        DataSet = frxReport2.ADOQuery1
        DataSetName = 'ADOQuery1'
      end
      item
        DataSet = frxReport2.ADOQuery2
        DataSetName = 'ADOQuery2'
      end
      item
        DataSet = frxReport2.ADOQuery3
        DataSetName = 'ADOQuery3'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 52479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ADOQuery1: TfrxADOQuery
        UserName = 'ADOQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'p1'
            DataType = ftWideString
            Expression = 'ComboBox1.Text'
          end
          item
            Name = 'p2'
            DataType = ftWideString
            Expression = 'ComboBox2.Text'
          end
          item
            Name = 'p3'
            DataType = ftDate
            Expression = 'FormatDateTime('#39'dd.mm.yyyy'#39',DateEdit1.Date)'
          end>
        SQL.Strings = (
          
            'SELECT  fam, NumberStudentTicket, Formulation, UnResults.NumberA' +
            'nswer, TrueNumberAnswer, ThemeName, NameDiscipline, DateSt      ' +
            '           '
          'FROM         Student INNER JOIN'
          
            '                      UnResults ON Student.NumberStudent = UnRes' +
            'ults.NumberStudent INNER JOIN'
          
            '                      Answers ON UnResults.NumberAnswer = Answer' +
            's.NumberAnswer INNER JOIN'
          
            '                      Question ON UnResults.NumberQuestion = Que' +
            'stion.NumberQuestion AND UnResults.NumberTheme = Question.Number' +
            'Theme AND UnResults.NumberDiscipline = Question.NumberDiscipline' +
            ' AND '
          
            '                      Answers.NumberQuestion = Question.NumberQu' +
            'estion AND Answers.NumberTheme = Question.NumberTheme AND Answer' +
            's.NumberDiscipline = Question.NumberDiscipline INNER JOIN'
          
            '                      Discipline ON UnResults.NumberDiscipline =' +
            ' Discipline.NumberDiscipline INNER JOIN'
          
            '                      Theme ON Question.NumberTheme = Theme.Numb' +
            'erTheme AND Question.NumberDiscipline = Theme.NumberDiscipline A' +
            'ND Discipline.NumberDiscipline = Theme.NumberDiscipline'
          
            '                      Where fam= :p1 and NumberStudentTicket= :p' +
            '2 and DateSt= :p3;                                              ' +
            '                                                                ' +
            '                                               ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 130
        pTop = 20
        Parameters = <
          item
            Name = 'p1'
            DataType = ftWideString
            Expression = 'ComboBox1.Text'
          end
          item
            Name = 'p2'
            DataType = ftWideString
            Expression = 'ComboBox2.Text'
          end
          item
            Name = 'p3'
            DataType = ftDate
            Expression = 'FormatDateTime('#39'dd.mm.yyyy'#39',DateEdit1.Date)'
          end>
      end
      object ADOQuery2: TfrxADOQuery
        UserName = 'ADOQuery2'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'Select Distinct fam From Student;                               ' +
            '                                                                ' +
            '         ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 108
        pTop = 168
        Parameters = <>
      end
      object ADOQuery3: TfrxADOQuery
        UserName = 'ADOQuery3'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'p1'
            DataType = ftWideString
            Expression = 'ComboBox1.Text'
          end>
        SQL.Strings = (
          
            'Select NumberStudentTicket From Student Where fam= :p1;         ' +
            '                                                                ' +
            '                                                    ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 208
        pTop = 168
        Parameters = <
          item
            Name = 'p1'
            DataType = ftWideString
            Expression = 'ComboBox1.Text'
          end>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1076#1083#1103' '#1088#1077#1096#1077#1085#1080#1103' '#1089#1087#1086#1088#1085#1099#1093' '#1074#1086#1087#1088#1086#1089#1086#1074'.')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 30.000000000000000000
        Width = 1046.929810000000000000
        Condition = 'ADOQuery1."NameDiscipline"'
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          DataField = 'NameDiscipline'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[ADOQuery1."NameDiscipline"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 60.000000000000000000
        Width = 1046.929810000000000000
        DataSet = frxReport2.ADOQuery1
        DataSetName = 'ADOQuery1'
        RowCount = 0
        object Memo3: TfrxMemoView
          Width = 157.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1060#1072#1084#1080#1083#1080#1103)
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 160.897650000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'fam'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."fam"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo5: TfrxMemoView
          Top = 18.897650000000000000
          Width = 157.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1089#1090#1091#1076#1077#1085#1095#1077#1089#1082#1086#1075#1086)
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 160.897650000000000000
          Top = 18.897650000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NumberStudentTicket'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."NumberStudentTicket"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          Top = 37.795300000000000000
          Width = 157.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1060#1086#1088#1084#1091#1083#1080#1088#1086#1074#1082#1072)
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 160.897650000000000000
          Top = 37.795300000000000000
          Width = 1476.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Formulation'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."Formulation"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Top = 56.692950000000000000
          Width = 157.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1086#1090#1074#1077#1090#1072)
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 160.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NumberAnswer'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."NumberAnswer"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Top = 75.590600000000000000
          Width = 157.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1055#1088#1072#1074#1080#1083#1100#1085#1099#1081' '#1086#1090#1074#1077#1090)
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          Left = 160.897650000000000000
          Top = 75.590600000000000000
          Width = 168.708720000000000000
          Height = 18.897650000000000000
          DataField = 'TrueNumberAnswer'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."TrueNumberAnswer"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Top = 94.488250000000000000
          Width = 157.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            #1058#1077#1084#1072)
          ParentFont = False
          Style = 'Header'
        end
        object Memo14: TfrxMemoView
          Left = 160.897650000000000000
          Top = 94.488250000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          DataField = 'ThemeName'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ADOQuery1."ThemeName"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 1000.000000000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 1000.000000000000000000
        Width = 1046.929810000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 355.000000000000000000
      ClientHeight = 316.000000000000000000
      Left = 265.000000000000000000
      Top = 150.000000000000000000
      Width = 696.000000000000000000
      ClientWidth = 680.000000000000000000
      OnActivate = 'DialogPage1OnActivate'
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 24.000000000000000000
        Width = 256.000000000000000000
        Height = 31.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102':'
        Color = clBtnFace
      end
      object Label2: TfrxLabelControl
        Left = 12.000000000000000000
        Top = 92.000000000000000000
        Width = 380.000000000000000000
        Height = 31.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1089#1090#1091#1076'. '#1073#1080#1083#1077#1090#1072':'
        Color = clBtnFace
      end
      object Label3: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 148.000000000000000000
        Width = 428.000000000000000000
        Height = 31.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1091' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1090#1077#1089#1090#1072':'
        Color = clBtnFace
      end
      object ComboBox1: TfrxComboBoxControl
        Left = 472.000000000000000000
        Top = 24.000000000000000000
        Width = 185.000000000000000000
        Height = 33.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Color = clWindow
        Text = #1060#1072#1084#1080#1083#1080#1103'!'
        ItemIndex = -1
        OnChange = 'ComboBox1OnChange'
        OnClick = 'ComboBox1OnClick'
      end
      object ComboBox2: TfrxComboBoxControl
        Left = 472.000000000000000000
        Top = 92.000000000000000000
        Width = 189.000000000000000000
        Height = 33.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Enabled = False
        ShowHint = True
        Color = clWindow
        Text = #1053#1086#1084#1077#1088' '#1089#1090#1091#1076'. '#1073#1080#1083#1077#1090#1072'!'
        ItemIndex = -1
        OnChange = 'ComboBox2OnChange'
        OnClick = 'ComboBox2OnClick'
      end
      object DateEdit1: TfrxDateEditControl
        Left = 472.000000000000000000
        Top = 148.000000000000000000
        Width = 189.000000000000000000
        Height = 33.000000000000000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Enabled = False
        ShowHint = True
        Color = clWindow
        Date = 41779.502533564800000000
        Time = 41779.502533564800000000
        WeekNumbers = False
        OnClick = 'DateEdit1OnClick'
      end
      object Button1: TfrxButtonControl
        Left = 84.000000000000000000
        Top = 240.000000000000000000
        Width = 151.000000000000000000
        Height = 49.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1054#1050
        ModalResult = 1
      end
      object Button2: TfrxButtonControl
        Left = 388.000000000000000000
        Top = 236.000000000000000000
        Width = 151.000000000000000000
        Height = 53.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
    end
  end
end
