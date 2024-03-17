object formCadClientes: TformCadClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'formCadClientes'
  ClientHeight = 567
  ClientWidth = 1035
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
  object lblCPF: TLabel
    Left = 21
    Top = 261
    Width = 103
    Height = 28
    Caption = 'CPF ou CGC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTelefone: TLabel
    Left = 21
    Top = 333
    Width = 72
    Height = 28
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEndereco: TLabel
    Left = 21
    Top = 413
    Width = 81
    Height = 28
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblBairro: TLabel
    Left = 21
    Top = 485
    Width = 52
    Height = 28
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCompleto: TLabel
    Left = 232
    Top = 413
    Width = 125
    Height = 28
    Caption = 'Complemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEmail: TLabel
    Left = 232
    Top = 261
    Width = 47
    Height = 28
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCidade: TLabel
    Left = 232
    Top = 485
    Width = 61
    Height = 28
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCep: TLabel
    Left = 232
    Top = 333
    Width = 33
    Height = 28
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 232
    Top = 186
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
  object lblCod: TLabel
    Left = 28
    Top = 186
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
    Left = 28
    Top = 209
    Width = 65
    Height = 29
    DataField = 'codigo_cliente'
    DataSource = DM.dsClientes
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
    Width = 1035
    Height = 121
    Align = alTop
    TabOrder = 10
    ExplicitWidth = 1029
    object lblTitulo: TLabel
      Left = 360
      Top = 37
      Width = 281
      Height = 45
      Caption = 'Cadastrar Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object editNome: TDBEdit
    Left = 232
    Top = 220
    Width = 180
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsClientes
    TabOrder = 1
  end
  object editCPF: TDBEdit
    Left = 21
    Top = 295
    Width = 158
    Height = 23
    DataField = 'CGC_CPF_cliente'
    DataSource = DM.dsClientes
    TabOrder = 0
    Visible = False
  end
  object editTelefone: TDBEdit
    Left = 21
    Top = 367
    Width = 172
    Height = 23
    DataField = 'telefone'
    DataSource = DM.dsClientes
    MaxLength = 15
    TabOrder = 4
  end
  object editEmail: TDBEdit
    Left = 232
    Top = 295
    Width = 180
    Height = 23
    DataField = 'email'
    DataSource = DM.dsClientes
    TabOrder = 3
  end
  object editBairro: TDBEdit
    Left = 21
    Top = 519
    Width = 172
    Height = 23
    DataField = 'bairro'
    DataSource = DM.dsClientes
    TabOrder = 8
  end
  object editEndereço: TDBEdit
    Left = 21
    Top = 447
    Width = 172
    Height = 23
    DataField = 'endereco'
    DataSource = DM.dsClientes
    TabOrder = 6
  end
  object editCompleto: TDBEdit
    Left = 232
    Top = 447
    Width = 180
    Height = 23
    DataField = 'complemento'
    DataSource = DM.dsClientes
    TabOrder = 7
  end
  object editCEP: TDBEdit
    Left = 232
    Top = 367
    Width = 180
    Height = 23
    DataField = 'cep'
    DataSource = DM.dsClientes
    MaxLength = 9
    TabOrder = 5
  end
  object gridClientes: TDBGrid
    Left = 448
    Top = 232
    Width = 567
    Height = 310
    DataSource = DM.dsClientes
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CGC_CPF_cliente'
        Title.Caption = 'CGC_CPF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'TELEFONE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'EMAIL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_cidade'
        Title.Caption = 'CIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 91
        Visible = True
      end>
  end
  object btPrimeiro: TButton
    Left = 448
    Top = 185
    Width = 57
    Height = 41
    Caption = '<<'
    TabOrder = 12
    OnClick = btPrimeiroClick
  end
  object btProximo: TButton
    Left = 575
    Top = 185
    Width = 58
    Height = 41
    Caption = '>'
    TabOrder = 13
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 639
    Top = 185
    Width = 58
    Height = 41
    Caption = '>>'
    TabOrder = 14
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 703
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Inserir'
    TabOrder = 15
    OnClick = btInserirClick
  end
  object btSalvar: TButton
    Left = 895
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Salvar'
    TabOrder = 16
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 831
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Deletar'
    TabOrder = 17
    OnClick = btDeletarClick
  end
  object btCancelar: TButton
    Left = 959
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 18
    OnClick = btCancelarClick
  end
  object btAnterior: TButton
    Left = 511
    Top = 185
    Width = 58
    Height = 41
    Caption = '<'
    TabOrder = 19
    OnClick = btAnteriorClick
  end
  object comboCidade: TDBLookupComboBox
    Left = 232
    Top = 519
    Width = 180
    Height = 23
    DataField = 'codigo_Cidade'
    DataSource = DM.dsClientes
    KeyField = 'codigo_cidade'
    ListField = 'nome'
    ListSource = DM.dsCidades
    TabOrder = 9
  end
  object btEditar: TButton
    Left = 767
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Editar'
    TabOrder = 20
    OnClick = btEditarClick
  end
  object editCPFMask: TMaskEdit
    Left = 21
    Top = 295
    Width = 172
    Height = 23
    MaxLength = 18
    TabOrder = 2
    Text = ''
    OnEnter = editCPFMaskEnter
    OnExit = editCPFMaskExit
  end
end
