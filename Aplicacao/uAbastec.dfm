object frmAbastec: TfrmAbastec
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Abastecimento'
  ClientHeight = 430
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 153
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbCodigoAbastec: TDBText
      Left = 68
      Top = 16
      Width = 78
      Height = 17
      DataField = 'CODIGO'
      DataSource = dsAbastec
    end
    object Label1: TLabel
      Left = 6
      Top = 16
      Width = 56
      Height = 21
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 116
      Width = 51
      Height = 18
      Caption = 'Bomba:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 72
      Width = 36
      Height = 18
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 399
      Top = 116
      Width = 94
      Height = 18
      Caption = 'Imposto (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 316
      Top = 72
      Width = 172
      Height = 18
      Caption = 'Valor Abastecimento (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 444
      Top = 16
      Width = 68
      Height = 18
      Caption = 'Qtd Litros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dblcbBombaDesc: TDBLookupComboBox
      Left = 69
      Top = 111
      Width = 284
      Height = 29
      DataField = 'BOMBA_ID'
      DataSource = dsAbastec
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = DM.dsLkBomba
      TabOrder = 1
    end
    object dbQtdLitros: TDBEdit
      Left = 518
      Top = 16
      Width = 73
      Height = 29
      DataField = 'QTD_LITROS'
      DataSource = dsAbastec
      MaxLength = 5
      TabOrder = 2
    end
    object dbVlrAbast: TDBEdit
      Left = 495
      Top = 63
      Width = 96
      Height = 29
      DataField = 'VLR_ABAST'
      DataSource = dsAbastec
      MaxLength = 11
      TabOrder = 3
    end
    object dbVlrImp: TDBEdit
      Left = 502
      Top = 113
      Width = 89
      Height = 29
      DataField = 'VLR_IMP'
      DataSource = dsAbastec
      Enabled = False
      TabOrder = 4
    end
    object dbDataAbastec: TDBEdit
      Left = 68
      Top = 67
      Width = 101
      Height = 26
      DataField = 'DATA_ABAST'
      DataSource = dsAbastec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 411
    Width = 603
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 193
    Width = 603
    Height = 218
    Align = alClient
    DataSource = dsAbastec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 153
    Width = 603
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 544
      Height = 40
      DataSource = dsAbastec
      Align = alClient
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object bSairAbatec: TButton
      Left = 544
      Top = 0
      Width = 59
      Height = 40
      Align = alRight
      Caption = 'Sair'
      TabOrder = 1
      OnClick = bSairAbatecClick
    end
  end
  object dsAbastec: TDataSource
    DataSet = DM.FDAbastec
    Left = 544
    Top = 344
  end
end
