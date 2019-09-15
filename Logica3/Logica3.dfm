object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fortes Avalia'#231#227'o - L'#243'gica 3'
  ClientHeight = 321
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 61
    Width = 26
    Height = 13
    Caption = 'Vetor'
  end
  object Button1: TButton
    Left = 30
    Top = 24
    Width = 131
    Height = 25
    Caption = 'Ordena Vetor'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 24
    Width = 137
    Height = 25
    Caption = 'Verifica Repeti'#231#227'o'
    TabOrder = 1
    OnClick = Button2Click
  end
  object mVetor: TMemo
    Left = 30
    Top = 80
    Width = 475
    Height = 209
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
