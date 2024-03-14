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
    tbCidadescodigo_cidade: TIntegerField;
    tbCidadesnome: TWideStringField;
    tbCidadesestado: TWideStringField;
    tbCidadescep_Inicial: TWideStringField;
    tbCidadescep_Final: TWideStringField;
    tbClientesodigo_cliente: TIntegerField;
    tbClientesCGC_CPF_cliente: TWideStringField;
    tbClientesnome: TWideStringField;
    tbClientestelefone: TWideStringField;
    tbClientesendereco: TWideStringField;
    tbClientesbairro: TWideStringField;
    tbClientescomplemento: TWideStringField;
    tbClientesemail: TWideStringField;
    tbClientescodigo_Cidade: TIntegerField;
    tbClientescep: TWideStringField;
    procedure tbCidadesAfterScroll(DataSet: TDataSet);

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


procedure TDM.tbCidadesAfterScroll(DataSet: TDataSet);
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


end.
