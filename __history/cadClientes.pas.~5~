unit cadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TformCadClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    btPrimeiro: TButton;
    btProximo: TButton;
    btUltimo: TButton;
    btInserir: TButton;
    btSalvar: TButton;
    btDeletar: TButton;
    btCancelar: TButton;
    btAnterior: TButton;
    DBEditName: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadClientes: TformCadClientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadClientes.btAnteriorClick(Sender: TObject);
begin
  DM.tbClientes.Prior;
end;

procedure TformCadClientes.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;

  DM.tbClientes.Cancel;
end;

procedure TformCadClientes.btDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente deletar o registro?', 'Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then
    begin
      DM.tbClientes.Delete;
    end;
end;

procedure TformCadClientes.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled := False;
  btDeletar.Enabled := False;

  btSalvar.Enabled := True;
  btCancelar.Enabled := True;

  DM.tbClientes.Append;
end;

procedure TformCadClientes.btPrimeiroClick(Sender: TObject);
begin
  DM.tbClientes.First;
end;

procedure TformCadClientes.btProximoClick(Sender: TObject);
begin
   DM.tbClientes.Next;
end;

procedure TformCadClientes.btSalvarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;

  DM.tbClientes.Post;
end;

procedure TformCadClientes.btUltimoClick(Sender: TObject);
begin
   DM.tbClientes.Last;
end;

end.
