program case_delphi;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {Form1},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  cadCidades in 'cadCidades.pas' {formCadCidades},
  cadClientes in 'cadClientes.pas' {formCadClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformCadCidades, formCadCidades);
  Application.CreateForm(TformCadClientes, formCadClientes);
  Application.Run;
end.