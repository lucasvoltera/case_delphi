unit unitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

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
