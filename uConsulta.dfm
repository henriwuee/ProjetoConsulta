object fConsulta: TfConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta de estoque'
  ClientHeight = 760
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblBusca: TLabel
    Left = 40
    Top = 32
    Width = 99
    Height = 14
    Caption = 'Campo para busca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDetalhes: TLabel
    Left = 40
    Top = 320
    Width = 180
    Height = 15
    Caption = 'Detalhes do produto selecionado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDesc: TLabel
    Left = 40
    Top = 352
    Width = 121
    Height = 16
    Caption = 'Descri'#231#227'o do produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPrecoVenda: TLabel
    Left = 40
    Top = 456
    Width = 88
    Height = 16
    Caption = 'Pre'#231'o de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 264
    Top = 456
    Width = 100
    Height = 16
    Caption = 'Pre'#231'o de revenda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 514
    Top = 456
    Width = 125
    Height = 16
    Caption = 'Quantidade dispon'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 779
    Top = 456
    Width = 126
    Height = 16
    Caption = 'Quantidade reservada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 40
    Top = 374
    Width = 721
    Height = 59
    DataField = 'PRODUTO'
    DataSource = DataModule2.dtsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 40
    Top = 478
    Width = 88
    Height = 51
    DataField = 'PRECOVENDA'
    DataSource = DataModule2.dtsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 264
    Top = 486
    Width = 100
    Height = 51
    DataField = 'PRECOREVENDA'
    DataSource = DataModule2.dtsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 514
    Top = 478
    Width = 125
    Height = 51
    DataField = 'QTDE'
    DataSource = DataModule2.dtsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 779
    Top = 478
    Width = 126
    Height = 51
    DataField = 'QTDERESERVADA'
    DataSource = DataModule2.dtsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBusca2: TLabel
    Left = 191
    Top = 56
    Width = 154
    Height = 17
    Caption = 'F2 - Alterar campo de busca'
  end
  object Image1: TImage
    Left = 40
    Top = 560
    Width = 217
    Height = 177
    Center = True
    Stretch = True
    Visible = False
  end
  object edtBuscaProduto: TEdit
    Left = 40
    Top = 79
    Width = 865
    Height = 78
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 70
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'Pesquisar Produto - F3'
    OnClick = edtBuscaProdutoClick
    OnKeyPress = edtBuscaProdutoKeyPress
  end
  object CBBuscaProduto: TComboBox
    Left = 40
    Top = 52
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ckbBuscaParcial: TCheckBox
    Left = 448
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Busca Parcial'
    TabOrder = 2
  end
  object ckbBuscaTudo: TCheckBox
    Left = 448
    Top = 31
    Width = 146
    Height = 17
    Caption = 'Busca de todos os produto'
    TabOrder = 3
  end
  object ckbBuscaCampos: TCheckBox
    Left = 448
    Top = 56
    Width = 97
    Height = 17
    Caption = 'Todos os campos'
    TabOrder = 4
    OnClick = ckbBuscaCamposClick
  end
  object ckbEsc: TCheckBox
    Left = 600
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Sair com ESC'
    TabOrder = 5
  end
  object ckbFocoBusca: TCheckBox
    Left = 600
    Top = 31
    Width = 129
    Height = 17
    Caption = 'Manter foco na busca'
    TabOrder = 6
  end
  object ckbFoto: TCheckBox
    Left = 600
    Top = 56
    Width = 137
    Height = 17
    Caption = 'Mostrar foto do produto'
    TabOrder = 7
    OnClick = ckbFotoClick
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 163
    Width = 865
    Height = 134
    DataSource = DataModule2.dtsEstoque
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawDataCell = DBGrid1DrawDataCell
  end
  object btnConsultaLote: TButton
    Left = 779
    Top = 316
    Width = 112
    Height = 37
    Caption = 'Consulta de lotes'
    TabOrder = 9
    OnClick = btnConsultaLoteClick
  end
end
