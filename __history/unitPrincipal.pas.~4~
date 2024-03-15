unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Clientes1: TMenuItem;
    Relatorios1: TMenuItem;
    Clientes2: TMenuItem;
    Clientes3: TMenuItem;
    procedure Sistema2Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses cadCidades, cadClientes, unitDM;

procedure TForm1.Clientes2Click(Sender: TObject);
begin
  formCadClientes.ShowModal;
end;

procedure TForm1.Clientes3Click(Sender: TObject);
begin
  formCadCidades.ShowModal;
end;

procedure TForm1.Sistema2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
