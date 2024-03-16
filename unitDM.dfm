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
    CommandTimeout = 0
    DataSource = dsCidades
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM cidades')
    Left = 353
    Top = 128
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
    Left = 353
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
    AutoEdit = False
    DataSet = tbCidades
    Left = 448
    Top = 216
  end
  object tbClientes: TADOTable
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandTimeout = 0
    IndexFieldNames = 'codigo_Cidade'
    TableName = 'clientes'
    Left = 353
    Top = 401
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
    AutoEdit = False
    DataSet = tbClientes
    Left = 473
    Top = 400
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
    Left = 353
    Top = 513
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
    Left = 473
    Top = 128
  end
  object dsSqlClientes: TDataSource
    AutoEdit = False
    DataSet = sqlClientes
    Left = 480
    Top = 520
  end
  object pipelineClientes: TppBDEPipeline
    DataSource = dsReport
    UserName = 'pipelineClientes'
    Left = 860
    Top = 440
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = dsSqlReport
    Left = 686
    Top = 440
  end
  object dsSqlReport: TADOQuery
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
    Left = 868
    Top = 560
    Version = '22.03'
    mmColumnWidth = 0
    DataPipelineName = 'pipelineClientes'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'nomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 11906
        mmTop = 3440
        mmWidth = 24342
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
        mmHeight = 4763
        mmLeft = 38365
        mmTop = 3440
        mmWidth = 122767
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'telefoneCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 11906
        mmTop = 10583
        mmWidth = 28575
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
        mmHeight = 4763
        mmLeft = 41540
        mmTop = 10583
        mmWidth = 64558
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
    Left = 840
    Top = 120
  end
  object dsReportAgrupado: TDataSource
    AutoEdit = False
    DataSet = dsSqlReportAgrupado
    Left = 690
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
      'SELECT '
      '  MAX(clientes.Codigo_Cliente) AS codCliente,'
      '  MAX(clientes.CGC_CPF_Cliente) AS cpfCnpjCliente,'
      '  MAX(clientes.nome) AS nomeCliente,'
      '  MAX(clientes.telefone) AS telefoneCliente,'
      '  MAX(clientes.endereco) AS enderecoCliente,'
      '  MAX(clientes.bairro) AS bairroCliente,'
      '  MAX(clientes.complemento) AS complementoCliente,'
      '  MAX(clientes.email) AS emailCliente,'
      '  MAX(clientes.cep) AS cepCliente,'
      '  cidades.codigo_cidade,'
      '  MAX(cidades.nome) AS nomeCidade,'
      '  MAX(cidades.estado) AS nomeEstadoCidade,'
      '  MAX(cidades.cep_Inicial) AS cepInicialCidade,'
      '  MAX(cidades.cep_Final) AS cepFinalCidade'
      'FROM CLIENTES'
      
        'INNER JOIN CIDADES ON CLIENTES.codigo_Cidade = cidades.codigo_ci' +
        'dade'
      'WHERE'
      
        'clientes.CODIGO_CLIENTE BETWEEN :CLIENTE_INICIAL AND :CLIENTE_FI' +
        'NAL AND'
      
        'cidades.CODIGO_CIDADE BETWEEN :CIDADE_INICIAL AND :CIDADE_FINAL ' +
        'AND'
      'ESTADO = :ESTADO'
      'GROUP BY cidades.codigo_cidade;')
    Left = 692
    Top = 240
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
    Left = 872
    Top = 240
    Version = '22.03'
    mmColumnWidth = 0
    DataPipelineName = 'pipelineClientesAgrupado'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'nomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 16669
        mmTop = 10319
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
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
        mmLeft = 43127
        mmTop = 10319
        mmWidth = 122767
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'telefoneCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 16669
        mmTop = 17463
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
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
        mmLeft = 46302
        mmTop = 17463
        mmWidth = 64558
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'nomeCidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 8202
        mmTop = 2910
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
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
        mmLeft = 36513
        mmTop = 2910
        mmWidth = 112977
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 32279
        mmWidth = 191559
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
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
end
