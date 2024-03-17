﻿object formCadClientes: TformCadClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'formCadClientes'
  ClientHeight = 648
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
  object lblTelefone: TLabel
    Left = 21
    Top = 349
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
    Top = 517
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
    Left = 240
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
  object lblCompleto: TLabel
    Left = 240
    Top = 437
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
    Left = 21
    Top = 437
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
    Left = 240
    Top = 517
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
    TabOrder = 0
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
    TabOrder = 2
  end
  object editTelefone: TDBEdit
    Left = 21
    Top = 383
    Width = 172
    Height = 23
    DataField = 'telefone'
    DataSource = DM.dsClientes
    MaxLength = 14
    TabOrder = 3
  end
  object editEmail: TDBEdit
    Left = 232
    Top = 295
    Width = 180
    Height = 23
    DataField = 'email'
    DataSource = DM.dsClientes
    TabOrder = 4
  end
  object editBairro: TDBEdit
    Left = 240
    Top = 383
    Width = 172
    Height = 23
    DataField = 'bairro'
    DataSource = DM.dsClientes
    TabOrder = 5
  end
  object editEndereço: TDBEdit
    Left = 21
    Top = 551
    Width = 172
    Height = 23
    DataField = 'endereco'
    DataSource = DM.dsClientes
    TabOrder = 6
  end
  object editCompleto: TDBEdit
    Left = 240
    Top = 471
    Width = 172
    Height = 23
    DataField = 'complemento'
    DataSource = DM.dsClientes
    TabOrder = 7
  end
  object editCEP: TDBEdit
    Left = 240
    Top = 551
    Width = 172
    Height = 23
    DataField = 'cep'
    DataSource = DM.dsClientes
    MaxLength = 9
    TabOrder = 8
  end
  object gridClientes: TDBGrid
    Left = 448
    Top = 232
    Width = 567
    Height = 369
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
    Left = 448
    Top = 185
    Width = 57
    Height = 41
    Caption = '<<'
    TabOrder = 10
    OnClick = btPrimeiroClick
  end
  object btProximo: TButton
    Left = 575
    Top = 185
    Width = 58
    Height = 41
    Caption = '>'
    TabOrder = 11
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 639
    Top = 185
    Width = 58
    Height = 41
    Caption = '>>'
    TabOrder = 12
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 703
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Inserir'
    TabOrder = 13
    OnClick = btInserirClick
  end
  object btSalvar: TButton
    Left = 895
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Salvar'
    TabOrder = 14
    OnClick = btSalvarClick
  end
  object btDeletar: TButton
    Left = 767
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Deletar'
    TabOrder = 15
    OnClick = btDeletarClick
  end
  object btCancelar: TButton
    Left = 959
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 16
    OnClick = btCancelarClick
  end
  object btAnterior: TButton
    Left = 511
    Top = 185
    Width = 58
    Height = 41
    Caption = '<'
    TabOrder = 17
    OnClick = btAnteriorClick
  end
  object comboCidade: TDBLookupComboBox
    Left = 21
    Top = 471
    Width = 172
    Height = 23
    DataField = 'codigo_Cidade'
    DataSource = DM.dsClientes
    KeyField = 'codigo_cidade'
    ListField = 'nome'
    ListSource = DM.dsCidades
    TabOrder = 18
  end
  object btEditar: TButton
    Left = 831
    Top = 185
    Width = 58
    Height = 41
    Caption = 'Editar'
    TabOrder = 19
    OnClick = btEditarClick
  end
end
