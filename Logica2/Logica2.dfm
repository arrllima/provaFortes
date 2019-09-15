object frmLogica2: TfrmLogica2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fortes Avalia'#231#227'o - L'#243'gica 2'
  ClientHeight = 387
  ClientWidth = 383
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
    Left = 16
    Top = 24
    Width = 129
    Height = 19
    Caption = 'N'#250'meros de 1 a '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object mmNumeros: TMemo
    Left = 8
    Top = 96
    Width = 345
    Height = 249
    Lines.Strings = (
      'mmNumeros')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object seTotalNumero: TSpinEdit
    Left = 144
    Top = 22
    Width = 73
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 1024
    MinValue = 1
    ParentFont = False
    TabOrder = 1
    Value = 0
  end
  object Button1: TButton
    Left = 240
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Exibir N'#250'meros'
    TabOrder = 2
    WordWrap = True
    OnClick = Button1Click
  end
end
