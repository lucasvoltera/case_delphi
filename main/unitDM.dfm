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
    Left = 144
    Top = 313
  end
  object sqlCidades: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = dsCidades
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM cidades')
    Left = 289
    Top = 120
    object sqlCidadescodigo_cidade: TAutoIncField
      DisplayWidth = 14
      FieldName = 'codigo_cidade'
      ReadOnly = True
    end
    object sqlCidadesnome: TWideStringField
      DisplayWidth = 25
      FieldName = 'nome'
      Size = 100
    end
    object sqlCidadesestado: TWideStringField
      DisplayWidth = 35
      FieldName = 'estado'
      Size = 50
    end
    object sqlCidadescep_Inicial: TWideStringField
      DisplayWidth = 10
      FieldName = 'cep_Inicial'
      Size = 10
    end
    object sqlCidadescep_Final: TWideStringField
      DisplayWidth = 10
      FieldName = 'cep_Final'
      Size = 10
    end
  end
  object tbCidades: TADOTable
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    TableName = 'cidades'
    Left = 289
    Top = 208
    object tbCidadescodigo_cidade: TAutoIncField
      FieldName = 'codigo_cidade'
      ReadOnly = True
    end
    object tbCidadesnome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object tbCidadesestado: TWideStringField
      FieldName = 'estado'
      Required = True
      Size = 50
    end
    object tbCidadescep_Inicial: TWideStringField
      FieldName = 'cep_Inicial'
      Required = True
      EditMask = '#####-###;1;_'
      Size = 10
    end
    object tbCidadescep_Final: TWideStringField
      FieldName = 'cep_Final'
      Required = True
      EditMask = '#####-###;1;_'
      Size = 10
    end
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = tbCidades
    Left = 393
    Top = 208
  end
  object tbClientes: TADOTable
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    IndexFieldNames = 'codigo_cliente'
    MasterFields = 'codigo_cidade'
    TableName = 'clientes'
    Left = 281
    Top = 449
    object tbClientescodigo_cliente: TAutoIncField
      FieldName = 'codigo_cliente'
      ReadOnly = True
    end
    object tbClientesCGC_CPF_cliente: TWideStringField
      FieldName = 'CGC_CPF_cliente'
      Required = True
    end
    object tbClientesnome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object tbClientestelefone: TWideStringField
      FieldName = 'telefone'
      EditMask = '(##) #####-####;1;_'
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
      Required = True
    end
    object tbClientescep: TWideStringField
      FieldName = 'cep'
      EditMask = '#####-###;1;_'
      Size = 10
    end
    object tbClientesnome_cidade: TWideStringField
      FieldKind = fkLookup
      FieldName = 'nome_cidade'
      LookupDataSet = sqlCidades
      LookupKeyFields = 'codigo_cidade'
      LookupResultField = 'nome'
      KeyFields = 'codigo_Cidade'
      Lookup = True
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = tbClientes
    Left = 393
    Top = 448
  end
  object sqlClientes: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    DataSource = dsClientes
    Parameters = <
      item
        Name = 'pConsulta'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'select * from clientes;')
    Left = 281
    Top = 561
    object sqlClientescodigo_cliente: TAutoIncField
      FieldName = 'codigo_cliente'
      ReadOnly = True
    end
    object sqlClientesCGC_CPF_cliente: TWideStringField
      FieldName = 'CGC_CPF_cliente'
    end
    object sqlClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object sqlClientestelefone: TWideStringField
      FieldName = 'telefone'
    end
    object sqlClientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object sqlClientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object sqlClientescomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 50
    end
    object sqlClientesemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object sqlClientescodigo_Cidade: TIntegerField
      FieldName = 'codigo_Cidade'
    end
    object sqlClientescep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object sqlClientesnomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeCidade'
      LookupDataSet = tbCidades
      LookupKeyFields = 'codigo_cidade'
      LookupResultField = 'nome'
      KeyFields = 'codigo_Cidade'
      Size = 50
      Lookup = True
    end
  end
  object dsSqlCidades: TDataSource
    AutoEdit = False
    DataSet = sqlCidades
    Left = 385
    Top = 120
  end
  object dsSqlClientes: TDataSource
    AutoEdit = False
    DataSet = sqlClientes
    Left = 400
    Top = 560
  end
  object pipelineClientes: TppBDEPipeline
    DataSource = dsReport
    UserName = 'pipelineClientes'
    Left = 796
    Top = 456
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = dsSqlReport
    Left = 670
    Top = 448
  end
  object dsSqlReport: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'CLIENTE_INICIAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CLIENTE_FINAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CIDADE_INICIAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CIDADE_FINAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ESTADO'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT '
      '  clientes.Codigo_Cliente as codCliente,'
      '  clientes.CGC_CPF_Cliente as cpfCnpjCliente,'
      '  clientes.nome as nomeCliente,'
      '  clientes.telefone as telefoneCliente,'
      '  clientes.endereco as enderecoCliente,'
      '  clientes.bairro as bairroCliente,'
      '  clientes.complemento as complementoCliente,'
      '  clientes.email as emailCliente,'
      '  clientes.cep as cepCliente,'
      '  cidades.codigo_cidade as codCidade,'
      '  cidades.nome as nomeCidade,'
      '  cidades.estado as nomeEstadoCidade,'
      '  cidades.cep_Inicial as cepIncialCidade,'
      '  cidades.cep_Final as cepFinalCidade'
      'FROM CLIENTES'
      
        'INNER JOIN CIDADES ON CLIENTES.codigo_Cidade = cidades.codigo_ci' +
        'dade'
      'WHERE'
      
        'clientes.CODIGO_CLIENTE BETWEEN :CLIENTE_INICIAL AND :CLIENTE_FI' +
        'NAL AND'
      
        'cidades.CODIGO_CIDADE BETWEEN :CIDADE_INICIAL AND :CIDADE_FINAL ' +
        'AND'
      'ESTADO = :ESTADO')
    Left = 680
    Top = 568
    object dsSqlReportcodCliente: TAutoIncField
      FieldName = 'codCliente'
      ReadOnly = True
    end
    object dsSqlReportcpfCnpjCliente: TWideStringField
      FieldName = 'cpfCnpjCliente'
    end
    object dsSqlReportnomeCliente: TWideStringField
      FieldName = 'nomeCliente'
      Size = 100
    end
    object dsSqlReporttelefoneCliente: TWideStringField
      FieldName = 'telefoneCliente'
    end
    object dsSqlReportenderecoCliente: TWideStringField
      FieldName = 'enderecoCliente'
      Size = 100
    end
    object dsSqlReportbairroCliente: TWideStringField
      FieldName = 'bairroCliente'
      Size = 50
    end
    object dsSqlReportcomplementoCliente: TWideStringField
      FieldName = 'complementoCliente'
      Size = 50
    end
    object dsSqlReportemailCliente: TWideStringField
      FieldName = 'emailCliente'
      Size = 100
    end
    object dsSqlReportcepCliente: TWideStringField
      FieldName = 'cepCliente'
      Size = 10
    end
    object dsSqlReportcodCidade: TAutoIncField
      FieldName = 'codCidade'
      ReadOnly = True
    end
    object dsSqlReportnomeCidade: TWideStringField
      FieldName = 'nomeCidade'
      Size = 100
    end
    object dsSqlReportnomeEstadoCidade: TWideStringField
      FieldName = 'nomeEstadoCidade'
      Size = 50
    end
    object dsSqlReportcepIncialCidade: TWideStringField
      FieldName = 'cepIncialCidade'
      Size = 10
    end
    object dsSqlReportcepFinalCidade: TWideStringField
      FieldName = 'cepFinalCidade'
      Size = 10
    end
  end
  object reportClientes: TppReport
    AutoStop = False
    DataPipeline = pipelineClientes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 804
    Top = 568
    Version = '22.03'
    mmColumnWidth = 0
    DataPipelineName = 'pipelineClientes'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19897
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8043
        mmLeft = 59267
        mmTop = 3598
        mmWidth = 74083
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 4022
        mmLeft = 3598
        mmTop = 15028
        mmWidth = 191559
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 96520
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 4657
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'nomeCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 32597
        mmTop = 4657
        mmWidth = 122767
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4869
        mmLeft = 15028
        mmTop = 11853
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'telefoneCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 34925
        mmTop = 11853
        mmWidth = 64558
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CPFou CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 19262
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'cpfCnpjCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 43392
        mmTop = 19262
        mmWidth = 68580
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 34925
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'telefoneCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 34078
        mmTop = 34925
        mmWidth = 68580
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 42757
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'enderecoCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 37253
        mmTop = 42757
        mmWidth = 119592
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 51012
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'bairroCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 31750
        mmTop = 51012
        mmWidth = 82550
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Complemento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 59690
        mmWidth = 27940
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'complementoCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 45085
        mmTop = 59690
        mmWidth = 85514
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 68157
        mmWidth = 9948
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'cepCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 27517
        mmTop = 68157
        mmWidth = 34713
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4869
        mmLeft = 15028
        mmTop = 75988
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'nomeCidade'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 31750
        mmTop = 75988
        mmWidth = 115359
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4869
        mmLeft = 15028
        mmTop = 83608
        mmWidth = 16510
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'nomeEstadoCidade'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 34078
        mmTop = 83608
        mmWidth = 84667
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 15028
        mmTop = 27517
        mmWidth = 12065
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'emailCliente'
        DataPipeline = pipelineClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientes'
        mmHeight = 4868
        mmLeft = 28787
        mmTop = 27517
        mmWidth = 110702
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 90805
        mmWidth = 191559
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pipelineClientesAgrupado: TppBDEPipeline
    DataSource = dsReportAgrupado
    UserName = 'pipelineClientesAgrupado'
    Left = 776
    Top = 88
  end
  object dsReportAgrupado: TDataSource
    AutoEdit = False
    DataSet = dsSqlReportAgrupado
    Left = 658
    Top = 120
  end
  object dsSqlReportAgrupado: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'CLIENTE_INICIAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CLIENTE_FINAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CIDADE_INICIAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CIDADE_FINAL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ESTADO'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  clientes.Codigo_Cliente AS codCliente,'
      '  clientes.CGC_CPF_Cliente AS cpfCnpjCliente,'
      '  clientes.nome AS nomeCliente,'
      '  clientes.telefone AS telefoneCliente,'
      '  clientes.endereco AS enderecoCliente,'
      '  clientes.bairro AS bairroCliente,'
      '  clientes.complemento AS complementoCliente,'
      '  clientes.email AS emailCliente,'
      '  clientes.cep AS cepCliente,'
      '  cidades.codigo_cidade,'
      '  cidades.nome AS nomeCidade,'
      '  cidades.estado AS nomeEstadoCidade,'
      '  cidades.cep_Inicial AS cepInicialCidade,'
      '  cidades.cep_Final AS cepFinalCidade'
      'FROM CLIENTES'
      
        'INNER JOIN CIDADES ON CLIENTES.codigo_Cidade = cidades.codigo_ci' +
        'dade'
      'WHERE'
      
        'clientes.CODIGO_CLIENTE BETWEEN :CLIENTE_INICIAL AND :CLIENTE_FI' +
        'NAL AND'
      
        'cidades.CODIGO_CIDADE BETWEEN :CIDADE_INICIAL AND :CIDADE_FINAL ' +
        'AND'
      'ESTADO = :ESTADO'
      'order by cidades.codigo_cidade;')
    Left = 653
    Top = 224
    object dsSqlReportAgrupadocodCliente: TIntegerField
      FieldName = 'codCliente'
      ReadOnly = True
    end
    object dsSqlReportAgrupadocpfCnpjCliente: TWideStringField
      FieldName = 'cpfCnpjCliente'
      ReadOnly = True
    end
    object dsSqlReportAgrupadonomeCliente: TWideStringField
      FieldName = 'nomeCliente'
      ReadOnly = True
      Size = 100
    end
    object dsSqlReportAgrupadotelefoneCliente: TWideStringField
      FieldName = 'telefoneCliente'
      ReadOnly = True
    end
    object dsSqlReportAgrupadoenderecoCliente: TWideStringField
      FieldName = 'enderecoCliente'
      ReadOnly = True
      Size = 100
    end
    object dsSqlReportAgrupadobairroCliente: TWideStringField
      FieldName = 'bairroCliente'
      ReadOnly = True
      Size = 50
    end
    object dsSqlReportAgrupadocomplementoCliente: TWideStringField
      FieldName = 'complementoCliente'
      ReadOnly = True
      Size = 50
    end
    object dsSqlReportAgrupadoemailCliente: TWideStringField
      FieldName = 'emailCliente'
      ReadOnly = True
      Size = 100
    end
    object dsSqlReportAgrupadocepCliente: TWideStringField
      FieldName = 'cepCliente'
      ReadOnly = True
      Size = 10
    end
    object dsSqlReportAgrupadocodigo_cidade: TAutoIncField
      FieldName = 'codigo_cidade'
      ReadOnly = True
    end
    object dsSqlReportAgrupadonomeCidade: TWideStringField
      FieldName = 'nomeCidade'
      ReadOnly = True
      Size = 100
    end
    object dsSqlReportAgrupadonomeEstadoCidade: TWideStringField
      FieldName = 'nomeEstadoCidade'
      ReadOnly = True
      Size = 50
    end
    object dsSqlReportAgrupadocepInicialCidade: TWideStringField
      FieldName = 'cepInicialCidade'
      ReadOnly = True
      Size = 10
    end
    object dsSqlReportAgrupadocepFinalCidade: TWideStringField
      FieldName = 'cepFinalCidade'
      ReadOnly = True
      Size = 10
    end
  end
  object reportClientesAgrupado: TppReport
    AutoStop = False
    DataPipeline = pipelineClientesAgrupado
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 776
    Top = 184
    Version = '22.03'
    mmColumnWidth = 0
    DataPipelineName = 'pipelineClientesAgrupado'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21590
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Clientes Por Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8043
        mmLeft = 43180
        mmTop = 6773
        mmWidth = 98214
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 4022
        mmLeft = 0
        mmTop = 16722
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 61383
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'digo do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4869
        mmLeft = 13758
        mmTop = 6138
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'codCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 6085
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CPF ou CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4869
        mmLeft = 13758
        mmTop = 11853
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'cpfCnpjCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 11906
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 13758
        mmTop = 17780
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'nomeCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 17727
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 13758
        mmTop = 23495
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'telefoneCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 23548
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 13758
        mmTop = 29422
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'enderecoCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 29369
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 13758
        mmTop = 35137
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'bairroCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 35190
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4869
        mmLeft = 13758
        mmTop = 41063
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'complementoCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 41010
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4869
        mmLeft = 13758
        mmTop = 46778
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'emailCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 46831
        mmWidth = 101600
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 13758
        mmTop = 52705
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'cepCliente'
        DataPipeline = pipelineClientesAgrupado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipelineClientesAgrupado'
        mmHeight = 4763
        mmLeft = 53711
        mmTop = 52652
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'nomeCidade'
      DataPipeline = pipelineClientesAgrupado
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pipelineClientesAgrupado'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4869
          mmLeft = 5292
          mmTop = 1693
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'nomeCidade'
          DataPipeline = pipelineClientesAgrupado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipelineClientesAgrupado'
          mmHeight = 4763
          mmLeft = 32279
          mmTop = 1588
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4869
          mmLeft = 101600
          mmTop = 1693
          mmWidth = 38365
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'nomeEstadoCidade'
          DataPipeline = pipelineClientesAgrupado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipelineClientesAgrupado'
          mmHeight = 4763
          mmLeft = 141552
          mmTop = 1588
          mmWidth = 52652
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 2381
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object sqlValidarCEP: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'cep'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 4000
        Value = Null
      end>
    SQL.Strings = (
      'select codigo_cidade, nome'
      'from cidades'
      'where :cep between cep_Inicial and cep_final')
    Left = 540
    Top = 370
    object sqlValidarCEPcodigo_cidade: TAutoIncField
      FieldName = 'codigo_cidade'
      ReadOnly = True
    end
    object sqlValidarCEPnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
  end
end
