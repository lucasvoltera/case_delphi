object formCadCidades: TformCadCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastrar Cidades'
  ClientHeight = 689
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object lblName: TLabel
    Left = 72
    Top = 246
    Width = 54
    Height = 28
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEstado: TLabel
    Left = 72
    Top = 318
    Width = 59
    Height = 28
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCepInicial: TLabel
    Left = 72
    Top = 398
    Width = 89
    Height = 28
    Caption = 'Cep Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCepFinal: TLabel
    Left = 247
    Top = 398
    Width = 80
    Height = 28
    Caption = 'Cep Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCod: TLabel
    Left = 72
    Top = 169
    Width = 65
    Height = 28
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 72
    Top = 192
    Width = 65
    Height = 29
    DataField = 'codigo_cidade'
    DataSource = DM.dsCidades
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 996
    object lblTitulo: TLabel
      Left = 48
      Top = 44
      Width = 279
      Height = 45
      Caption = 'Cadastrar Cidades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object txtName: TDBEdit
    Left = 72
    Top = 280
    Width = 337
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsCidades
    TabOrder = 1
  end
  object editCepInicial: TDBEdit
    Left = 72
    Top = 432
    Width = 145
    Height = 23
    DataField = 'cep_Inicial'
    DataSource = DM.dsCidades
    TabOrder = 3
  end
  object editCepFinal: TDBEdit
    Left = 247
    Top = 432
    Width = 162
    Height = 23
    DataField = 'cep_Final'
    DataSource = DM.dsCidades
    TabOrder = 4
  end
  object btPrimeiro: TButton
    Left = 456
    Top = 168
    Width = 57
    Height = 41
    Caption = '<<'
    TabOrder = 5
    OnClick = btPrimeiroClick
  end
  object btProximo: TButton
    Left = 583
    Top = 168
    Width = 58
    Height = 41
    Caption = '>'
    TabOrder = 6
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 647
    Top = 168
    Width = 58
    Height = 41
    Caption = '>>'
    TabOrder = 7
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 711
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = btInserirClick
  end
  object btSalvar: TButton
    Left = 775
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 839
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Deletar'
    TabOrder = 10
    OnClick = btDeletarClick
  end
  object btCancelar: TButton
    Left = 903
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 11
    OnClick = btCancelarClick
  end
  object btAnterior: TButton
    Left = 519
    Top = 168
    Width = 58
    Height = 41
    Caption = '<'
    TabOrder = 12
    OnClick = btAnteriorClick
  end
  object gridCidades: TDBGrid
    Left = 456
    Top = 232
    Width = 505
    Height = 305
    DataSource = DM.dsCidades
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo_cidade'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Inicial'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Final'
        Width = 103
        Visible = True
      end>
  end
  object txtEstado: TDBComboBox
    Left = 72
    Top = 360
    Width = 337
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'estado'
    DataSource = DM.dsCidades
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
    TabOrder = 2
  end
end