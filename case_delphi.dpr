program case_delphi;

uses
  Vcl.Forms,
  unitPrincipal in './main/unitPrincipal.pas' {formTelaPrincipal},
  unitDM in './main/unitDM.pas' {DM: TDataModule},
  cadCidades in './cidades/cadastroCidades/cadCidades.pas' {formCadCidades},
  cadClientes in './Clientes/cadastroClientes/cadClientes.pas' {formCadClientes},
  conCidades in './cidades/consultaCidades/conCidades.pas' {formConCidade},
  conCliente in './clientes/consultaClientes/conCliente.pas' {formConCliente},
  relClientes in './relatorio/relClientes.pas' {formRelClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformTelaPrincipal, formTelaPrincipal);
  Application.Run;
end.
