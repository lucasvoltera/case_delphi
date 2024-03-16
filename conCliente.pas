unit conCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TformConCliente = class(TForm)
    lblBusca: TLabel;
    radioGroupOpcoes: TRadioGroup;
    txtConsulta: TEdit;
    btBuscar: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    procedure radioGroupOpcoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConCliente: TformConCliente;

implementation

{$R *.dfm}

procedure TformConCliente.radioGroupOpcoesClick(Sender: TObject);
begin
  if radioGroupOpcoes.ItemIndex = 0 then
    begin
      lblBusca.Caption := 'Digite o Nome';
    end
  else
    begin
      lblBusca.Caption := 'Digite o Estado';
    end;
end;

end.
