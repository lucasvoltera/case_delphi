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
    Nome: TLabel;
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

end.
