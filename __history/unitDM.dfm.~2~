object DM: TDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=master;Data Source=DESKTOP' +
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
    Left = 272
    Top = 296
  end
  object sqlCidades: TADOQuery
    Connection = conexao
    DataSource = dsCidades
    Parameters = <>
    Left = 800
    Top = 224
  end
  object tbCidades: TADOTable
    Active = True
    Connection = conexao
    CursorType = ctStatic
    TableName = 'cidades'
    Left = 408
    Top = 200
  end
  object dsCidades: TDataSource
    DataSet = tbCidades
    Left = 632
    Top = 224
  end
  object tbClientes: TADOTable
    Active = True
    Connection = conexao
    CursorType = ctStatic
    TableName = 'clientes'
    Left = 408
    Top = 400
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 640
    Top = 368
  end
  object sqlClientes: TADOQuery
    Connection = conexao
    DataSource = dsClientes
    Parameters = <>
    Left = 808
    Top = 376
  end
end
