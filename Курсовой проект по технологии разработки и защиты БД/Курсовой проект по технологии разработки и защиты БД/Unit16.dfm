object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 400
  Width = 497
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 24
    Top = 200
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'TransProvStudent;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fam'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@NumberStudentTicket'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@char'
        Attributes = [paNullable]
        DataType = ftWideString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Prepared = True
    Left = 256
    Top = 64
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'TransProvTeacher;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@login'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@password'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@char'
        Attributes = [paNullable]
        DataType = ftWideString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Prepared = True
    Left = 256
    Top = 120
  end
  object ADOStoredProc3: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = #1055#1086#1083#1091#1095#1077#1085#1080#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'_'#1073#1072#1083#1083#1086#1074'_'#1079#1072'_'#1074#1086#1087#1088#1086#1089';1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NumberQuestion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VariousAnswer'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@Symbol'
        Attributes = [paNullable]
        DataType = ftWideString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end
      item
        Name = '@ball'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 256
    Top = 176
  end
  object ADOStoredProc4: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'_'#1087#1088#1086#1084#1077#1078#1091#1090#1086#1095#1085#1099#1093'_'#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074';1'
    Parameters = <>
    Prepared = True
    Left = 256
    Top = 232
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 104
    Top = 200
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 64
    Top = 288
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 152
    Top = 288
  end
  object ADOStoredProc5: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = #1055#1088#1086#1084#1077#1078#1091#1090#1086#1095#1085#1072#1103'_'#1086#1090#1095#1077#1090#1085#1086#1089#1090#1100';1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fam'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@numberstudentticket'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end>
    Prepared = True
    Left = 256
    Top = 296
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 152
    Top = 352
  end
  object frxADOComponents1: TfrxADOComponents
    DefaultDatabase = ADOConnection1
    Left = 384
    Top = 240
  end
end
