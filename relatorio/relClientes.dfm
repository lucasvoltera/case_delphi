object formRelClientes: TformRelClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 338
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object lblCodCliente: TLabel
    Left = 75
    Top = 147
    Width = 159
    Height = 28
    Caption = 'C'#243'digo do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCodCidade: TLabel
    Left = 265
    Top = 147
    Width = 158
    Height = 28
    Caption = 'C'#243'digo da Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object codClienteInicial: TLabel
    Left = 35
    Top = 181
    Width = 44
    Height = 23
    Caption = 'Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblcodClienteFinal: TLabel
    Left = 44
    Top = 231
    Width = 35
    Height = 23
    Caption = 'Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblcodCidadeInciial: TLabel
    Left = 240
    Top = 181
    Width = 44
    Height = 23
    Caption = 'Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblcodCidadeFinal: TLabel
    Left = 249
    Top = 231
    Width = 35
    Height = 23
    Caption = 'Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEstado: TLabel
    Left = 449
    Top = 147
    Width = 164
    Height = 28
    Caption = 'Selecione o Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 663
    object lblTitulo: TLabel
      Left = 176
      Top = 36
      Width = 292
      Height = 41
      Caption = 'Relat'#243'rio de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object editClienteInicial: TEdit
    Left = 96
    Top = 181
    Width = 121
    Height = 23
    Hint = 'Inicial'
    NumbersOnly = True
    TabOrder = 1
    Text = '0000'
  end
  object editClienteFinal: TEdit
    Left = 96
    Top = 234
    Width = 121
    Height = 23
    Hint = 'Final'
    NumbersOnly = True
    TabOrder = 2
    Text = '9999'
  end
  object comboEstado: TComboBox
    Left = 468
    Top = 181
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 4
    Text = 'Acre'
    Items.Strings = (
      'Acre'
      'Alagoas'
      'Amap'#225
      'Amazonas'
      'Bahia'
      'Cear'#225
      'Distrito Federal'
      'Esp'#237'rito Santo'
      'Goi'#225's'
      'Maranh'#227'o'
      'Mato Grosso'
      'Mato Grosso do Sul'
      'Minas Gerais'
      'Par'#225
      'Para'#237'ba'
      'Paran'#225
      'Pernambuco'
      'Piau'#237
      'Rio de Janeiro'
      'Rio Grande do Norte'
      'Rio Grande do Sul'
      'Rond'#244'nia'
      'Roraima'
      'Santa Catarina'
      'S'#227'o Paulo'
      'Sergipe'
      'Tocantins')
  end
  object editCidadeInicial: TEdit
    Left = 290
    Top = 181
    Width = 121
    Height = 23
    Hint = 'Inicial'
    NumbersOnly = True
    TabOrder = 3
    Text = '0000'
  end
  object editCidadeFinal: TEdit
    Left = 290
    Top = 234
    Width = 121
    Height = 23
    Hint = 'Final'
    NumbersOnly = True
    TabOrder = 5
    Text = '999'
  end
  object btRelatorio: TButton
    Left = 112
    Top = 281
    Width = 401
    Height = 41
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 6
    OnClick = btRelatorioClick
  end
  object checkAgruparCidade: TCheckBox
    Left = 449
    Top = 227
    Width = 210
    Height = 34
    Caption = 'Agrupar por Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
