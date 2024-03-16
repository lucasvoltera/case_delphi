unit conCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TformConCidade = class(TForm)
    lblBusca: TLabel;
    radioGroupOpcoes: TRadioGroup;
    txtConsulta: TEdit;
    btBuscar: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Panel1: TPanel;
    procedure btBuscarClick(Sender: TObject);
    procedure radioGroupOpcoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConCidade: TformConCidade;

implementation

{$R *.dfm}

uses unitDM;

procedure TformConCidade.btBuscarClick(Sender: TObject);
begin
  DM.sqlCidades.Close;
  DM.sqlCidades.SQL.Clear;

  if radioGroupOpcoes.ItemIndex = 0 then
     begin
        DM.sqlCidades.SQL.Add('SELECT * FROM cidades WHERE nome LIKE :pConsulta');
        DM.sqlCidades.Parameters.ParamByName('pConsulta').Value := txtConsulta.Text + '%'
     end
  else
      begin
        DM.sqlCidades.SQL.Add('SELECT * FROM cidades WHERE estado LIKE :pConsulta');
        DM.sqlCidades.Parameters.ParamByName('pConsulta').Value := txtConsulta.Text + '%';
      end;

   DM.sqlCidades.Open;
end;

procedure TformConCidade.radioGroupOpcoesClick(Sender: TObject);
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