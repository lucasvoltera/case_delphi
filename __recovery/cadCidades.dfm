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
    Left = 32
    Top = 254
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
    Left = 32
    Top = 326
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
    Left = 32
    Top = 406
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
    Left = 207
    Top = 406
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
    Left = 32
    Top = 177
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
    Left = 32
    Top = 200
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
      Left = 354
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
    Left = 32
    Top = 288
    Width = 337
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsCidades
    TabOrder = 1
  end
  object editCepInicial: TDBEdit
    Left = 32
    Top = 440
    Width = 145
    Height = 23
    DataField = 'cep_Inicial'
    DataSource = DM.dsCidades
    MaxLength = 9
    TabOrder = 3
  end
  object editCepFinal: TDBEdit
    Left = 207
    Top = 440
    Width = 155
    Height = 23
    DataField = 'cep_Final'
    DataSource = DM.dsCidades
    MaxLength = 9
    TabOrder = 4
  end
  object btPrimeiro: TButton
    Left = 408
    Top = 185
    Width = 57
    Height = 41
    Caption = '<<'
    TabOrder = 5
    OnClick = btPrimeiroClick
  end
  object btProximo: TButton
    Left = 535
    Top = 185
    Width = 58
    Height = 41
    Caption = '>'
    TabOrder = 6
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 599
    Top = 185
    Width = 58
    Height = 41
    Caption = '>>'
    TabOrder = 7
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 663
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = btInserirClick
  end
  object btSalvar: TButton
    Left = 855
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 791
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Deletar'
    TabOrder = 10
    OnClick = btDeletarClick
  end
  object btCancelar: TButton
    Left = 919
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 11
    OnClick = btCancelarClick
  end
  object btAnterior: TButton
    Left = 471
    Top = 185
    Width = 58
    Height = 41
    Caption = '<'
    TabOrder = 12
    OnClick = btAnteriorClick
  end
  object gridCidades: TDBGrid
    Left = 408
    Top = 232
    Width = 566
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
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Title.Caption = 'ESTADO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Inicial'
        Title.Caption = 'CEP INICIAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Final'
        Title.Caption = 'CEP FINAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end>
  end
  object txtEstado: TDBComboBox
    Left = 32
    Top = 368
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
  object btEditar: TButton
    Left = 727
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Editar'
    TabOrder = 14
    OnClick = btEditarClick
  end
end
