unit cadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TformCadClientes = class(TForm)
    Panel1: TPanel;
    lblTitulo: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCompleto: TLabel;
    lblEmail: TLabel;
    lblCidade: TLabel;
    lblCep: TLabel;
    lblNome: TLabel;
    editCPF: TDBEdit;
    editTelefone: TDBEdit;
    editEmail: TDBEdit;
    editBairro: TDBEdit;
    editEndereço: TDBEdit;
    editCompleto: TDBEdit;
    editCEP: TDBEdit;
    gridClientes: TDBGrid;
    btPrimeiro: TButton;
    btProximo: TButton;
    btUltimo: TButton;
    btInserir: TButton;
    btSalvar: TButton;
    btDeletar: TButton;
    btCancelar: TButton;
    btAnterior: TButton;
    editNome: TDBEdit;
    comboCidade: TDBLookupComboBox;
    btEditar: TButton;
    lblCod: TLabel;
    DBText1: TDBText;
    editCPFMask: TMaskEdit;
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure editCPFMaskExit(Sender: TObject);
    procedure editCPFMaskEnter(Sender: TObject);
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

function GetNumbers(const Text: string): String;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(Text) do
  begin
    if Text[i] in ['0'..'9'] then
      Result := Result + Text[i];
  end;
end;


procedure TformCadClientes.btAnteriorClick(Sender: TObject);
begin
  DM.tbClientes.Prior;
end;

procedure TformCadClientes.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;
  btEditar.Enabled := True;

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

procedure TformCadClientes.btEditarClick(Sender: TObject);
begin
   // Verifica se há algum registro selecionado no DBGrid
  if DM.tbClientes.IsEmpty then
  begin
    Application.MessageBox('Não há registros para editar.', 'Alerta', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  // Desabilita os botões de inserir e deletar
  btInserir.Enabled := False;
  btDeletar.Enabled := False;
  btEditar.Enabled := False;

  // Habilita os botões de salvar e cancelar
  btSalvar.Enabled := True;
  btCancelar.Enabled := True;

  // Ativa o modo de edição
  DM.tbClientes.Edit;
end;

procedure TformCadClientes.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled := False;
  btDeletar.Enabled := False;
  btEditar.Enabled := False;

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
  editCPF.Text := EditCPFMask.Text;

  DM.sqlValidarCEP.Close;
  DM.sqlValidarCEP.Parameters.ParamByName('cep').Value := editCEP.Text;
  DM.sqlValidarCEP.Open;

  if (DM.sqlValidarCEPcodigo_cidade.AsString <> comboCidade.KeyValue) then
  begin
    showmessage('Cep invláido para a cidade cadastrada');
    editCEP.SetFocus;
    Abort;
  end;

  btInserir.Enabled := True;
  btDeletar.Enabled := True;
  btEditar.Enabled := True;

  btSalvar.Enabled := False;
  btCancelar.Enabled := False;

  DM.tbClientes.Post;
end;

procedure TformCadClientes.btUltimoClick(Sender: TObject);
begin
   DM.tbClientes.Last;
end;


procedure TformCadClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self := nil;
end;

procedure TformCadClientes.FormCreate(Sender: TObject);
begin
  DM.tbClientes.Close;
  DM.tbClientes.Open;
  DM.tbCidades.Close;
  DM.tbCidades.Open;
  btSalvar.Enabled := False;
  btCancelar.Enabled := False;
end;

procedure TformCadClientes.editCPFMaskEnter(Sender: TObject);
begin
  editCPFMask.EditMask := '';
end;

procedure TformCadClientes.editCPFMaskExit(Sender: TObject);
var
  numeros : string;
begin
  numeros := GetNumbers(editCPFMask.Text);
  editCPFMask.Clear;
  editCPFMask.Text := numeros;

    // Verifica o comprimento do texto inserido no campo editCPF
  if Length(editCPFMask.Text) <= 11 then
  begin
    // Aplica a máscara de CPF (###.###.###-##)
    editCPFMask.EditMask := '###.###.###-##;1;_';
  end
  else if (Length(editCPFMask.Text) > 11) then
  begin
    // Aplica a máscara de CNPJ (##.###.###/####-##)
    editCPFMask.EditMask := '##.###.###/####-##;1;_';
  end;
end;

end.
