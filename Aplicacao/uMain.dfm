object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fortes - Avalia'#231#227'o - Aplica'#231#227'o MVP'
  ClientHeight = 571
  ClientWidth = 794
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
  object pMainTit: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 41
    Align = alTop
    BevelOuter = bvSpace
    TabOrder = 0
    ExplicitWidth = 711
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 77
      Height = 21
      Caption = 'Posto ABC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pMainBotoes: TPanel
    Left = 691
    Top = 41
    Width = 103
    Height = 511
    Align = alRight
    BevelOuter = bvSpace
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 608
    ExplicitHeight = 414
    object bAbastec: TButton
      Left = 1
      Top = 1
      Width = 101
      Height = 39
      Align = alTop
      Caption = 'Abastecimento'
      TabOrder = 0
      OnClick = bAbastecClick
    end
    object bRelatorio: TButton
      Left = 1
      Top = 40
      Width = 101
      Height = 25
      Align = alTop
      Caption = 'Relat'#243'rio'
      TabOrder = 1
      OnClick = bRelatorioClick
    end
    object bSair: TButton
      Left = 1
      Top = 485
      Width = 101
      Height = 25
      Align = alBottom
      Caption = 'Sair Sistema'
      TabOrder = 2
      OnClick = bSairClick
      ExplicitTop = 388
    end
    object bBombaTanque: TButton
      Left = 1
      Top = 65
      Width = 101
      Height = 25
      Align = alTop
      Caption = 'Bombas/Tanques'
      TabOrder = 3
      OnClick = bBombaTanqueClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 552
    Width = 794
    Height = 19
    Panels = <>
    ExplicitTop = 455
    ExplicitWidth = 711
  end
end
