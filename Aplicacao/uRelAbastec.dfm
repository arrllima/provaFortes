object frmRelAbastec: TfrmRelAbastec
  Left = 49
  Top = 219
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Abastecimento - Relat'#243'rio'
  ClientHeight = 485
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object rlpAbastec: TRLReport
    AlignWithMargins = True
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    AllowedBands = [btHeader, btTitle, btColumnHeader, btDetail, btFooter]
    AdjustableMargins = True
    DataSource = dsRelAbastec
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.WindowState = wsNormal
    RealBounds.UsedUnit = buMilimeters
    Title = 'Relat'#243'rio de Abastecimento'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 35
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 8
        Width = 259
        Height = 22
        Caption = 'Relat'#243'rio de Abastecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 597
        Top = 9
        Width = 118
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'P'#225'g.:'
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 26
        Width = 712
        Height = 11
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 233
      Width = 718
      Height = 32
      BandType = btFooter
      object RLDraw3: TRLDraw
        Left = 3
        Top = 0
        Width = 712
        Height = 11
        DrawKind = dkLine
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 0
        Top = 9
        Width = 57
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 73
      Width = 718
      Height = 131
      DataFields = 'DATA_ABAST'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 41
        BandType = btHeader
        object RLLabel2: TRLLabel
          Left = 10
          Top = 13
          Width = 33
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 47
          Top = 13
          Width = 88
          Height = 16
          DataField = 'DATA_ABAST'
          DataSource = dsRelAbastec
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 41
        Width = 718
        Height = 32
        BandType = btColumnHeader
        object RLLabel3: TRLLabel
          Left = 47
          Top = 13
          Width = 52
          Height = 16
          Caption = 'Tanque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 552
          Top = 13
          Width = 163
          Height = 16
          Caption = 'Valor abastecimento (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 264
          Top = 13
          Width = 49
          Height = 16
          Caption = 'Bomba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 73
        Width = 718
        Height = 23
        object RLDBText2: TRLDBText
          Left = 47
          Top = 6
          Width = 57
          Height = 16
          DataField = 'TANQUE'
          DataSource = dsRelAbastec
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 264
          Top = 6
          Width = 52
          Height = 16
          DataField = 'BOMBA'
          DataSource = dsRelAbastec
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 638
          Top = 6
          Width = 79
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_ABAST'
          DataSource = dsRelAbastec
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 96
        Width = 718
        Height = 26
        BandType = btSummary
        object RLLabel6: TRLLabel
          Left = 567
          Top = 7
          Width = 40
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 6
          Top = -2
          Width = 712
          Height = 11
          DrawKind = dkLine
        end
        object RLDBResult1: TRLDBResult
          Left = 616
          Top = 3
          Width = 102
          Height = 20
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataField = 'VLR_ABAST'
          DataSource = dsRelAbastec
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 204
      Width = 718
      Height = 29
      BandType = btSummary
      object RLLabel7: TRLLabel
        Left = 513
        Top = 8
        Width = 94
        Height = 16
        Caption = 'Total Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 616
        Top = 6
        Width = 101
        Height = 18
        Alignment = taRightJustify
        DataField = 'VLR_ABAST'
        DataSource = dsRelAbastec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
  end
  object dsRelAbastec: TDataSource
    DataSet = FDRelTot
    Left = 664
    Top = 320
  end
  object FDRelTot: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select a.DATA_ABAST,'
      '       b.DESCRICAO BOMBA,'
      '       t.DESCRICAO TANQUE,'
      '       a.VLR_ABAST'
      'FROM abastecimento a'
      'LEFT JOIN bomba b  ON b.codigo = a.bomba_id'
      'LEFT JOIN tanque t ON T.codigo = b.tanque_id'
      'order by a.DATA_ABAST, '
      '         t.DESCRICAO,'
      '         b.DESCRICAO')
    Left = 576
    Top = 320
    object FDRelTotDATA_ABAST: TSQLTimeStampField
      FieldName = 'DATA_ABAST'
      Origin = 'DATA_ABAST'
      Required = True
    end
    object FDRelTotBOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOMBA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDRelTotTANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDRelTotVLR_ABAST: TCurrencyField
      FieldName = 'VLR_ABAST'
      Origin = 'VLR_ABAST'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
end
