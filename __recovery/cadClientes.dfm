object formCadClientes: TformCadClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'formCadClientes'
  ClientHeight = 672
  ClientWidth = 1048
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label2: TLabel
    Left = 248
    Top = 173
    Width = 33
    Height = 28
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 37
    Top = 261
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
  object Label4: TLabel
    Left = 37
    Top = 429
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
  object Label5: TLabel
    Left = 248
    Top = 349
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
  object Label6: TLabel
    Left = 248
    Top = 429
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
  object Label7: TLabel
    Left = 248
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
  object Label8: TLabel
    Left = 37
    Top = 349
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
  object Label9: TLabel
    Left = 37
    Top = 506
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
  object Label10: TLabel
    Left = 37
    Top = 173
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1048
    Height = 121
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1009
    object Label1: TLabel
      Left = 48
      Top = 45
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
  object DBEditName: TDBEdit
    Left = 37
    Top = 207
    Width = 172
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsClientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 207
    Width = 193
    Height = 23
    DataField = 'CGC_CPF_cliente'
    DataSource = DM.dsClientes
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 37
    Top = 295
    Width = 172
    Height = 23
    DataField = 'telefone'
    DataSource = DM.dsClientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 248
    Top = 295
    Width = 193
    Height = 23
    DataField = 'email'
    DataSource = DM.dsClientes
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 248
    Top = 383
    Width = 193
    Height = 23
    DataField = 'bairro'
    DataSource = DM.dsClientes
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 37
    Top = 463
    Width = 172
    Height = 23
    DataField = 'endereco'
    DataSource = DM.dsClientes
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 248
    Top = 463
    Width = 193
    Height = 23
    DataField = 'complemento'
    DataSource = DM.dsClientes
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 37
    Top = 540
    Width = 172
    Height = 23
    DataField = 'cep'
    DataSource = DM.dsClientes
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 504
    Top = 232
    Width = 505
    Height = 374
    DataSource = DM.dsClientes
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CGC_CPF_cliente'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo_Cidade'
        Width = 91
        Visible = True
      end>
  end
  object btPrimeiro: TButton
    Left = 504
    Top = 160
    Width = 57
    Height = 41
    Caption = '<<'
    TabOrder = 10
    OnClick = btPrimeiroClick
  end
  object btProximo: TButton
    Left = 631
    Top = 160
    Width = 58
    Height = 41
    Caption = '>'
    TabOrder = 11
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 695
    Top = 160
    Width = 58
    Height = 41
    Caption = '>>'
    TabOrder = 12
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 759
    Top = 160
    Width = 58
    Height = 41
    Caption = 'Inserir'
    TabOrder = 13
    OnClick = btInserirClick
  end
  object btSalvar: TButton
    Left = 823
    Top = 160
    Width = 58
    Height = 41
    Caption = 'Salvar'
    TabOrder = 14
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 887
    Top = 160
    Width = 58
    Height = 41
    Caption = 'Deletar'
    TabOrder = 15
    OnClick = btDeletarClick
  end
  object btCancelar: TButton
    Left = 951
    Top = 160
    Width = 58
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 16
    OnClick = btCancelarClick
  end
  object btAnterior: TButton
    Left = 567
    Top = 160
    Width = 58
    Height = 41
    Caption = '<'
    TabOrder = 17
    OnClick = btAnteriorClick
  end
end
