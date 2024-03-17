unit cadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadCidades = class(TForm)
    Panel1: TPanel;
    lblTitulo: TLabel;
    txtName: TDBEdit;
    editCepInicial: TDBEdit;
    lblName: TLabel;
    lblEstado: TLabel;
    editCepFinal: TDBEdit;
    lblCepInicial: TLabel;
    lblCepFinal: TLabel;
    btPrimeiro: TButton;
    btProximo: TButton;
    btUltimo: TButton;
    btInserir: TButton;
    btSalvar: TButton;
    btDeletar: TButton;
    btCancelar: TButton;
    btAnterior: TButton;
    gridCidades: TDBGrid;
    txtEstado: TDBComboBox;
    lblCod: TLabel;
    DBText1: TDBText;
    btEditar: TButton;
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
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

procedure TformCadCidades.btAnteriorClick(Sender: TObject);
begin
  DM.tbCidades.Prior;
end;


procedure TformCadCidades.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;
  btEditar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;

  DM.tbCidades.Cancel;
end;

procedure TformCadCidades.btDeletarClick(Sender: TObject);
begin

  if Application.MessageBox('Deseja Realmente deletar o registro?', 'Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then
    begin
      DM.tbCidades.Delete;
    end;
end;

procedure TformCadCidades.btEditarClick(Sender: TObject);
begin
  // Verifica se há algum registro selecionado no DBGrid
  if DM.tbCidades.IsEmpty then
  begin
    Application.MessageBox('Não há registros para editar.', 'Alerta', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  // Desabilita os botões de inserir e deletar
  btInserir.Enabled := False;
  btDeletar.Enabled := False;
  btEditar.Enabled := True;

  // Habilita os botões de salvar e cancelar
  btSalvar.Enabled := True;
  btCancelar.Enabled := True;

  // Ativa o modo de edição
  DM.tbCidades.Edit;
end;

procedure TformCadCidades.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled := False;
  btDeletar.Enabled := False;
  btEditar.Enabled := False;

  btSalvar.Enabled := True;
  btCancelar.Enabled := True;

  DM.tbCidades.Append;
end;

procedure TformCadCidades.btPrimeiroClick(Sender: TObject);
begin
  DM.tbCidades.First;
end;

procedure TformCadCidades.btProximoClick(Sender: TObject);
begin
  DM.tbCidades.Next;
end;

procedure TformCadCidades.btSalvarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;
  btEditar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;

  DM.tbCidades.Post;

end;

procedure TformCadCidades.btUltimoClick(Sender: TObject);
begin
  DM.tbCidades.Last;
end;


procedure TformCadCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self := nil;
end;

procedure TformCadCidades.FormCreate(Sender: TObject);
begin
  DM.tbCidades.Close;
  DM.tbCidades.Open;
  btSalvar.Enabled := False;
  btCancelar.Enabled := False;
end;

end.
