object formConCidade: TformConCidade
  Left = 0
  Top = 0
  Caption = 'formConCidades'
  ClientHeight = 592
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblBusca: TLabel
    Left = 387
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
  object Label1: TLabel
    Left = 72
    Top = 48
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
  object radioGroupOpcoes: TRadioGroup
    Left = 115
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
  object txtConsulta: TEdit
    Left = 387
    Top = 211
    Width = 310
    Height = 23
    CanUndoSelText = True
    TabOrder = 1
  end
  object btBuscar: TButton
    Left = 267
    Top = 265
    Width = 238
    Height = 40
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = btBuscarClick
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 328
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
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Title.Caption = 'ESTADO'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Inicial'
        Title.Caption = 'CEP INICIAL'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_Final'
        Title.Caption = 'CEP FINAL'
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 129
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 982
  end
end
