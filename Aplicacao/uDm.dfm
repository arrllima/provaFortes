object DM: TDM
  OldCreateOrder = False
  Height = 176
  Width = 425
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Andre\ProvaDelphiFortes\Aplicacao\ABASTECIMENTO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDAbastec: TFDQuery
    BeforePost = FDAbastecBeforePost
    Connection = FDConnection1
    SQL.Strings = (
      'select CODIGO,'
      '       DATA_ABAST,'
      '       BOMBA_ID,'
      '       QTD_LITROS,'
      '       VLR_IMP,'
      '       VLR_ABAST '
      '  from ABASTECIMENTO '
      '  order by '
      '    CODIGO')
    Left = 72
    Top = 112
    object FDAbastecCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      KeyFields = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDAbastecDATA_ABAST: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA_ABAST'
      Origin = 'DATA_ABAST'
      Required = True
    end
    object FDAbastecBomba: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'Bomba'
      LookupDataSet = FDTBomba
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'BOMBA_ID'
      Size = 30
      Lookup = True
    end
    object FDAbastecBOMBA_ID: TIntegerField
      DisplayLabel = 'Bomba'
      FieldName = 'BOMBA_ID'
      LookupDataSet = FDTBomba
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      Origin = 'BOMBA_ID'
      Required = True
      Visible = False
    end
    object FDAbastecQTD_LITROS: TCurrencyField
      DisplayLabel = 'Qtd Litros'
      DisplayWidth = 5
      FieldName = 'QTD_LITROS'
      Origin = 'QTD_LITROS'
      Required = True
      currency = False
    end
    object FDAbastecVLR_IMP: TCurrencyField
      DisplayLabel = 'Imposto (R$)'
      FieldName = 'VLR_IMP'
      Origin = 'VLR_IMP'
      Required = True
      DisplayFormat = ',0.00'
      currency = False
    end
    object FDAbastecVLR_ABAST: TCurrencyField
      DisplayLabel = 'Valor Abastecimento'
      FieldName = 'VLR_ABAST'
      Origin = 'VLR_ABAST'
      Required = True
      DisplayFormat = ',0.00'
      currency = False
    end
  end
  object FDTBomba: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'BOMBA'
    TableName = 'BOMBA'
    Left = 136
    Top = 112
    object FDTBombaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      KeyFields = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTBombaTanque: TStringField
      FieldKind = fkLookup
      FieldName = 'Tanque'
      LookupDataSet = FDTTanque
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TANQUE_ID'
      Lookup = True
    end
    object FDTBombaTANQUE_ID: TIntegerField
      FieldName = 'TANQUE_ID'
      LookupDataSet = FDTTanque
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      Origin = 'TANQUE_ID'
      Visible = False
    end
    object FDTBombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDTBombaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
  end
  object FDTTanque: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TANQUE'
    TableName = 'TANQUE'
    Left = 280
    Top = 112
    object FDTTanqueCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      KeyFields = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTTanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDTTanqueCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
  end
  object dsLkBomba: TDataSource
    DataSet = FDTBomba
    Left = 344
    Top = 112
  end
  object FDRelAbast: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.DATA_ABAST, b.DESCRICAO BOMBA, t.DESCRICAO TANQUE, a.VL' +
        'R_ABAST'
      'FROM abastecimento a'
      'LEFT JOIN bomba b  ON b.codigo = a.bomba_id'
      'LEFT JOIN tanque t ON T.codigo = b.tanque_id')
    Left = 200
    Top = 112
    object FDRelAbastDATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      Origin = 'DATA_ABAST'
      Required = True
    end
    object FDRelAbastBOMBA: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 200
      FieldName = 'BOMBA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDRelAbastTANQUE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 150
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDRelAbastVLR_ABAST: TCurrencyField
      FieldName = 'VLR_ABAST'
      Origin = 'VLR_ABAST'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
end
