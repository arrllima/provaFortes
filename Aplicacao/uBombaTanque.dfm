object frmBombaTanque: TfrmBombaTanque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Bombas/Tanques'
  ClientHeight = 584
  ClientWidth = 670
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
  object pBotoesBombaTanque: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 49
    Align = alTop
    TabOrder = 0
    object Button3: TButton
      Left = 594
      Top = 1
      Width = 75
      Height = 47
      Align = alRight
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 565
    Width = 670
    Height = 19
    Panels = <>
  end
  object pTanque: TPanel
    Left = 0
    Top = 49
    Width = 670
    Height = 224
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 79
      Top = 77
      Width = 67
      Height = 18
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 432
      Top = 77
      Width = 83
      Height = 18
      Caption = 'Combust'#237'vel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = 39
      Width = 67
      Height = 24
      Caption = 'Tanque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 670
      Height = 33
      DataSource = dsTanque
      Align = alTop
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimmo registro'
        'Inserir registro'
        'Apagar registro'
        'Editar registro'
        'Gravar'
        'Cancelar'
        'Atualizar'
        'Gravar Base'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object dbDescTanque: TDBEdit
      Left = 154
      Top = 74
      Width = 269
      Height = 26
      DataField = 'DESCRICAO'
      DataSource = dsTanque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbgTanque: TDBGrid
      Left = 0
      Top = 112
      Width = 670
      Height = 112
      Align = alBottom
      DataSource = dsTanque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
    end
    object dbcbCombTanque: TDBComboBox
      Left = 518
      Top = 74
      Width = 145
      Height = 26
      DataField = 'COMBUSTIVEL'
      DataSource = dsTanque
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Gasolina'
        #211'leo Diesel')
      ParentFont = False
      TabOrder = 2
    end
  end
  object pBomba: TPanel
    Left = 0
    Top = 273
    Width = 670
    Height = 292
    Align = alClient
    TabOrder = 3
    object Label3: TLabel
      Left = 4
      Top = 87
      Width = 55
      Height = 18
      Caption = 'Tanque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 272
      Top = 87
      Width = 67
      Height = 18
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 127
      Width = 51
      Height = 18
      Caption = 'Modelo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 4
      Top = 45
      Width = 62
      Height = 24
      Caption = 'Bomba'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbnBomba: TDBNavigator
      Left = 1
      Top = 1
      Width = 668
      Height = 33
      DataSource = dsBomba
      Align = alTop
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimmo registro'
        'Inserir registro'
        'Apagar registro'
        'Editar registro'
        'Gravar'
        'Cancelar'
        'Atualizar'
        'Gravar Base'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object dblcbTanqueBomba: TDBLookupComboBox
      Left = 64
      Top = 83
      Width = 194
      Height = 26
      DataField = 'TANQUE_ID'
      DataSource = dsBomba
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsTanque
      ParentFont = False
      TabOrder = 0
    end
    object dbDescBomba: TDBEdit
      Left = 343
      Top = 84
      Width = 258
      Height = 26
      DataField = 'DESCRICAO'
      DataSource = dsBomba
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbModeloBomba: TDBEdit
      Left = 64
      Top = 124
      Width = 194
      Height = 26
      DataField = 'MODELO'
      DataSource = dsBomba
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbgBomba: TDBGrid
      Left = 1
      Top = 160
      Width = 668
      Height = 131
      Align = alBottom
      DataSource = dsBomba
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
    end
  end
  object dsTanque: TDataSource
    DataSet = DM.FDTTanque
    Left = 616
    Top = 176
  end
  object dsBomba: TDataSource
    DataSet = DM.FDTBomba
    Left = 616
    Top = 456
  end
end
