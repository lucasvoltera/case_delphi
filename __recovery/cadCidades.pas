unit cadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadCidades = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    lblName: TLabel;
    label2: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    btPrimeiro: TButton;
    btProximo: TButton;
    btUltimo: TButton;
    btInserir: TButton;
    btSalvar: TButton;
    btDeletar: TButton;
    btCancelar: TButton;
    btAnterior: TButton;
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadCidades: TformCadCidades;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadCidades.btCancelarClick(Sender: TObject);
begin
       btInserir.Enabled := True;
  btDeletar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;
end;

procedure TformCadCidades.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled := False;
  btDeletar.Enabled := False;

  btSalvar.Enabled := True;
  btCancelar.Enabled := True;
end;

procedure TformCadCidades.btSalvarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;

end;

end.
