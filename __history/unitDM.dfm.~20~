object DM: TDM
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=sinqia;Data Source=DESKTOP' +
      '-CRROML5;Use Procedure for Prepare=1;Auto Translate=True;Packet ' +
      'Size=4096;Workstation ID=DESKTOP-CRROML5;Initial File Name="";Us' +
      'e Encryption for Data=False;Tag with column collation when possi' +
      'ble=False;MARS Connection=False;DataTypeCompatibility=0;Trust Se' +
      'rver Certificate=False;Server SPN=DESKTOP-CRROML5\Lucas;Applicat' +
      'ion Intent=READWRITE;MultiSubnetFailover=False;Use FMTONLY=False' +
      ';Authentication="";Access Token="";TransparentNetworkIPResolutio' +
      'n=True;Connect Retry Count=1;Connect Retry Interval=10'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 248
    Top = 296
  end
  object sqlCidades: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    DataSource = dsCidades
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM cidades')
    Left = 352
    Top = 128
    object sqlCidadescodigo_cidade: TAutoIncField
      FieldName = 'codigo_cidade'
      ReadOnly = True
    end
    object sqlCidadesnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object sqlCidadesestado: TWideStringField
      FieldName = 'estado'
      Size = 50
    end
    object sqlCidadescep_Inicial: TWideStringField
      FieldName = 'cep_Inicial'
      Size = 10
    end
    object sqlCidadescep_Final: TWideStringField
      FieldName = 'cep_Final'
      Size = 10
    end
  end
  object tbCidades: TADOTable
    Active = True
    Connection = conexao
    CursorType = ctStatic
    TableName = 'cidades'
    Left = 352
    Top = 216
    object tbCidadescodigo_cidade: TAutoIncField
      FieldName = 'codigo_cidade'
      ReadOnly = True
    end
    object tbCidadesnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object tbCidadesestado: TWideStringField
      FieldName = 'estado'
      Size = 50
    end
    object tbCidadescep_Inicial: TWideStringField
      FieldName = 'cep_Inicial'
      Size = 10
    end
    object tbCidadescep_Final: TWideStringField
      FieldName = 'cep_Final'
      Size = 10
    end
  end
  object dsCidades: TDataSource
    DataSet = tbCidades
    Left = 448
    Top = 216
  end
  object tbClientes: TADOTable
    Connection = conexao
    CursorType = ctStatic
    TableName = 'clientes'
    Left = 384
    Top = 520
    object tbClientescodigo_cliente: TAutoIncField
      FieldName = 'codigo_cliente'
      ReadOnly = True
    end
    object tbClientesCGC_CPF_cliente: TWideStringField
      FieldName = 'CGC_CPF_cliente'
    end
    object tbClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object tbClientestelefone: TWideStringField
      FieldName = 'telefone'
    end
    object tbClientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object tbClientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object tbClientescomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 50
    end
    object tbClientesemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object tbClientescodigo_Cidade: TIntegerField
      FieldName = 'codigo_Cidade'
    end
    object tbClientescep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 496
    Top = 520
  end
  object sqlClientes: TADOQuery
    Connection = conexao
    DataSource = dsClientes
    Parameters = <>
    Left = 376
    Top = 624
  end
  object dsSqlCidades: TDataSource
    DataSet = sqlCidades
    Left = 440
    Top = 136
  end
  object dsSqlClientes: TDataSource
    DataSet = sqlClientes
    Left = 496
    Top = 624
  end
end
