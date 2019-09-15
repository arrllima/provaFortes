object frmLogica1Triangulo: TfrmLogica1Triangulo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fortes Avalia'#231#227'o - L'#243'gica 1 - Tipo Tri'#226'ngulo'
  ClientHeight = 383
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 98
    Top = 35
    Width = 122
    Height = 19
    Caption = 'Tamanho Lado A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 98
    Top = 75
    Width = 120
    Height = 19
    Caption = 'Tamanho Lado B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 98
    Top = 112
    Width = 121
    Height = 19
    Caption = 'Tamanho Lado C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 224
    Width = 409
    Height = 9
    Shape = bsTopLine
  end
  object lTipoTriangulo: TLabel
    Left = 13
    Top = 256
    Width = 102
    Height = 24
    Caption = 'Triangulo...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lDescTriangulo: TLabel
    Left = 12
    Top = 296
    Width = 86
    Height = 24
    Caption = 'Descricao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object seLadoA: TSpinEdit
    Left = 234
    Top = 32
    Width = 65
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 100
    MinValue = 1
    ParentFont = False
    TabOrder = 0
    Value = 1
  end
  object seLadoB: TSpinEdit
    Left = 234
    Top = 72
    Width = 65
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 100
    MinValue = 1
    ParentFont = False
    TabOrder = 1
    Value = 1
  end
  object seLadoC: TSpinEdit
    Left = 234
    Top = 109
    Width = 65
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 100
    MinValue = 1
    ParentFont = False
    TabOrder = 2
    Value = 1
  end
  object bVerifTriangulo: TButton
    Left = 98
    Top = 160
    Width = 201
    Height = 41
    Caption = 'Verificar Tipo de Tri'#226'ngulo'
    TabOrder = 3
    OnClick = bVerifTrianguloClick
  end
end
