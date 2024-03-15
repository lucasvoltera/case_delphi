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
  object label2: TLabel
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
  object Label3: TLabel
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
  object Label4: TLabel
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
  object lblBusca: TLabel
    Left = 656
    Top = 480
    Width = 129
    Height = 28
    Caption = 'Digite o Nome'
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
    Width = 1002
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 996
    object Label1: TLabel
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
  object DBEdit1: TDBEdit
    Left = 72
    Top = 280
    Width = 337
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsCidades
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 352
    Width = 337
    Height = 23
    DataField = 'estado'
    DataSource = DM.dsCidades
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 432
    Width = 145
    Height = 23
    DataField = 'cep_Inicial'
    DataSource = DM.dsCidades
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 247
    Top = 432
    Width = 162
    Height = 23
    DataField = 'cep_Final'
    DataSource = DM.dsCidades
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 456
    Top = 215
    Width = 505
    Height = 233
    DataSource = DM.dsCidades
    TabOrder = 5
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
        Width = 110
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
        Width = 99
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
        Width = 116
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
        Width = 125
        Visible = True
      end>
  end
  object btPrimeiro: TButton
    Left = 456
    Top = 168
    Width = 57
    Height = 41
    Caption = '<<'
    TabOrder = 6
    OnClick = btPrimeiroClick
  end
  object btProximo: TButton
    Left = 583
    Top = 168
    Width = 58
    Height = 41
    Caption = '>'
    TabOrder = 7
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 647
    Top = 168
    Width = 58
    Height = 41
    Caption = '>>'
    TabOrder = 8
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 711
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Inserir'
    TabOrder = 9
    OnClick = btInserirClick
  end
  object btSalvar: TButton
    Left = 775
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Salvar'
    TabOrder = 10
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 839
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Deletar'
    TabOrder = 11
    OnClick = btDeletarClick
  end
  object btCancelar: TButton
    Left = 903
    Top = 168
    Width = 58
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 12
    OnClick = btCancelarClick
  end
  object btAnterior: TButton
    Left = 519
    Top = 168
    Width = 58
    Height = 41
    Caption = '<'
    TabOrder = 13
    OnClick = btAnteriorClick
  end
  object radioGroupOpcoes: TRadioGroup
    Left = 456
    Top = 480
    Width = 161
    Height = 73
    Caption = 'Op'#231#245'es de Busca'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Estado')
    TabOrder = 14
    OnClick = radioGroupOpcoesClick
  end
  object txtConsulta: TEdit
    Left = 656
    Top = 514
    Width = 305
    Height = 23
    CanUndoSelText = True
    TabOrder = 15
  end
  object btBuscar: TButton
    Left = 583
    Top = 584
    Width = 122
    Height = 33
    Caption = 'Buscar'
    TabOrder = 16
    OnClick = btBuscarClick
  end
end
