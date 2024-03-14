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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
