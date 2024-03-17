unit unitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls,
  ppBands, ppCache, ppDesignLayer, ppParameter, ppStrtch, ppSubRpt;

type
  TDM = class(TDataModule)
    conexao: TADOConnection;
    sqlCidades: TADOQuery;
    tbCidades: TADOTable;
    dsCidades: TDataSource;
    tbClientes: TADOTable;
    dsClientes: TDataSource;
    sqlClientes: TADOQuery;
    dsSqlCidades: TDataSource;
    dsSqlClientes: TDataSource;
    tbClientescodigo_cliente: TAutoIncField;
    tbClientesCGC_CPF_cliente: TWideStringField;
    tbClientesnome: TWideStringField;
    tbClientestelefone: TWideStringField;
    tbClientesendereco: TWideStringField;
    tbClientesbairro: TWideStringField;
    tbClientescomplemento: TWideStringField;
    tbClientesemail: TWideStringField;
    tbClientescodigo_Cidade: TIntegerField;
    tbClientescep: TWideStringField;
    sqlCidadescodigo_cidade: TAutoIncField;
    sqlCidadesnome: TWideStringField;
    sqlCidadesestado: TWideStringField;
    sqlCidadescep_Inicial: TWideStringField;
    sqlCidadescep_Final: TWideStringField;
    tbCidadescodigo_cidade: TAutoIncField;
    tbCidadesnome: TWideStringField;
    tbCidadesestado: TWideStringField;
    tbCidadescep_Inicial: TWideStringField;
    tbCidadescep_Final: TWideStringField;
    sqlClientescodigo_cliente: TAutoIncField;
    sqlClientesCGC_CPF_cliente: TWideStringField;
    sqlClientesnome: TWideStringField;
    sqlClientestelefone: TWideStringField;
    sqlClientesendereco: TWideStringField;
    sqlClientesbairro: TWideStringField;
    sqlClientescomplemento: TWideStringField;
    sqlClientesemail: TWideStringField;
    sqlClientescodigo_Cidade: TIntegerField;
    sqlClientescep: TWideStringField;
    sqlClientesnomeCidade: TStringField;
    pipelineClientes: TppBDEPipeline;
    dsReport: TDataSource;
    dsSqlReport: TADOQuery;
    dsSqlReportcodCliente: TAutoIncField;
    dsSqlReportcpfCnpjCliente: TWideStringField;
    dsSqlReportnomeCliente: TWideStringField;
    dsSqlReporttelefoneCliente: TWideStringField;
    dsSqlReportenderecoCliente: TWideStringField;
    dsSqlReportbairroCliente: TWideStringField;
    dsSqlReportcomplementoCliente: TWideStringField;
    dsSqlReportemailCliente: TWideStringField;
    dsSqlReportcepCliente: TWideStringField;
    dsSqlReportcodCidade: TAutoIncField;
    dsSqlReportnomeCidade: TWideStringField;
    dsSqlReportnomeEstadoCidade: TWideStringField;
    dsSqlReportcepIncialCidade: TWideStringField;
    dsSqlReportcepFinalCidade: TWideStringField;
    reportClientes: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    pipelineClientesAgrupado: TppBDEPipeline;
    dsReportAgrupado: TDataSource;
    dsSqlReportAgrupado: TADOQuery;
    reportClientesAgrupado: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    dsSqlReportAgrupadocodCliente: TIntegerField;
    dsSqlReportAgrupadocpfCnpjCliente: TWideStringField;
    dsSqlReportAgrupadonomeCliente: TWideStringField;
    dsSqlReportAgrupadotelefoneCliente: TWideStringField;
    dsSqlReportAgrupadoenderecoCliente: TWideStringField;
    dsSqlReportAgrupadobairroCliente: TWideStringField;
    dsSqlReportAgrupadocomplementoCliente: TWideStringField;
    dsSqlReportAgrupadoemailCliente: TWideStringField;
    dsSqlReportAgrupadocepCliente: TWideStringField;
    dsSqlReportAgrupadocodigo_cidade: TAutoIncField;
    dsSqlReportAgrupadonomeCidade: TWideStringField;
    dsSqlReportAgrupadonomeEstadoCidade: TWideStringField;
    dsSqlReportAgrupadocepInicialCidade: TWideStringField;
    dsSqlReportAgrupadocepFinalCidade: TWideStringField;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppLabel24: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    sqlValidarCEP: TADOQuery;
    sqlValidarCEPnome: TWideStringField;
    sqlValidarCEPcodigo_cidade: TAutoIncField;
    tbClientesnome_cidade: TWideStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel16: TppLabel;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppDBText16: TppDBText;
    ppLabel18: TppLabel;
    ppDBText17: TppDBText;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppLabel20: TppLabel;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppLabel23: TppLabel;
    ppDBText22: TppDBText;
    ppLine1: TppLine;
    procedure tbCidadesAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses cadCidades;



{$R *.dfm}


procedure TDM.DataModuleCreate(Sender: TObject);
begin
  sqlCidades.Close;
  sqlClientes.Close;
end;


procedure TDM.tbCidadesAfterScroll(DataSet: TDataSet);
begin
  if tbCidades.State in [dsBrowse, dsEdit, dsInsert] then
  begin
    if tbCidades.Eof then
      begin
        formCadCidades.btProximo.Enabled := False;
        formCadCidades.btUltimo.Enabled := False;
      end
    else
      begin
        formCadCidades.btProximo.Enabled := True;
        formCadCidades.btUltimo.Enabled := True;
      end;
    if tbCidades.Bof then
      begin
        formCadCidades.btPrimeiro.Enabled := False;
        formCadCidades.btAnterior.Enabled := False;
      end
    else
      begin
        formCadCidades.btPrimeiro.Enabled := True;
        formCadCidades.btAnterior.Enabled := True;
      end;
  end;

end;


end.
