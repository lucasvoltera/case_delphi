object formConCidade: TformConCidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'formConCidades'
  ClientHeight = 609
  ClientWidth = 865
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
  object lblBusca: TLabel
    Left = 411
    Top = 161
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
  object radioGroupOpcoes: TRadioGroup
    Left = 139
    Top = 163
    Width = 206
    Height = 71
    Caption = 'Op'#231#245'es de Busca'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Estado')
    TabOrder = 0
    OnClick = radioGroupOpcoesClick
  end
  object editConsulta: TEdit
    Left = 411
    Top = 211
    Width = 310
    Height = 23
    CanUndoSelText = True
    TabOrder = 1
  end
  object btBuscar: TButton
    Left = 291
    Top = 257
    Width = 238
    Height = 40
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = btBuscarClick
  end
  object gridConCidades: TDBGrid
    Left = 72
    Top = 320
    Width = 729
    Height = 233
    DataSource = DM.dsSqlCidades
    TabOrder = 3
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
        Width = 173
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
        Width = 148
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
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'CEP FINAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 129
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 840
    object lblTitulo: TLabel
      Left = 267
      Top = 36
      Width = 285
      Height = 41
      Caption = 'Consulta de Cidades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
