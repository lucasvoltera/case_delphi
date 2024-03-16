program case_delphi;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formTelaPrincipal},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  cadCidades in 'cadCidades.pas' {formCadCidades},
  cadClientes in 'cadClientes.pas' {formCadClientes},
  conCidades in 'conCidades.pas' {formConCidade},
  conCliente in 'conCliente.pas' {formConCliente},
  relClientes in 'relClientes.pas' {formRelClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformTelaPrincipal, formTelaPrincipal);
  Application.Run;
end.
