object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 595
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    1047
    595)
  TextHeight = 15
  object Button1: TButton
    Left = 824
    Top = 8
    Width = 215
    Height = 49
    Anchors = [akTop, akRight]
    Caption = 'Dodaj'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 1031
    Height = 515
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
