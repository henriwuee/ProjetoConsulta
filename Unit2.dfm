object fLotes: TfLotes
  Left = 0
  Top = 0
  Caption = 'Consulta de lotes'
  ClientHeight = 548
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblLotes: TLabel
    Left = 24
    Top = 16
    Width = 72
    Height = 13
    Caption = 'Busca de Lotes'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 56
    Width = 689
    Height = 409
    DataSource = DataModule2.dtsValidade
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSai: TButton
    Left = 576
    Top = 488
    Width = 137
    Height = 41
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSaiClick
  end
  object edtBuscaLote: TEdit
    Left = 24
    Top = 508
    Width = 145
    Height = 21
    TabOrder = 2
    OnKeyPress = edtBuscaLoteKeyPress
  end
  object CBBuscaLote: TComboBox
    Left = 24
    Top = 481
    Width = 145
    Height = 21
    TabOrder = 3
  end
end
