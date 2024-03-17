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
    editConsulta: TEdit;
    btBuscar: TButton;
    gridConClientes: TDBGrid;
    Panel1: TPanel;
    lblTitulo: TLabel;
    procedure radioGroupOpcoesClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConCliente: TformConCliente;

implementation

{$R *.dfm}

uses unitDM;

procedure TformConCliente.btBuscarClick(Sender: TObject);
begin
  DM.sqlClientes.Close;
  DM.sqlClientes.SQL.Clear;

  case radioGroupOpcoes.ItemIndex of
    0: // Consulta por nome
       begin
         DM.sqlClientes.SQL.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');
         DM.sqlClientes.Parameters.ParamByName('pConsulta').Value := editConsulta.Text + '%';
       end;
    1: // Consulta por cidade
       begin
        DM.sqlClientes.SQL.Add('SELECT clientes.*, cidades.nome AS nome_cidade ' +
                              'FROM clientes ' +
                              'INNER JOIN cidades ON clientes.codigo_Cidade = cidades.codigo_cidade ' +
                              'WHERE cidades.nome LIKE :pConsulta');
        DM.sqlClientes.Parameters.ParamByName('pConsulta').Value := '%' + editConsulta.Text + '%';
       end;
    2: // Consulta por CEP
       begin
          DM.sqlClientes.SQL.Add('SELECT * FROM clientes WHERE cep LIKE :pConsulta');
          DM.sqlClientes.Parameters.ParamByName('pConsulta').Value := editConsulta.Text + '%';
       end;
    3: // Consulta por CPF
       begin
         DM.sqlClientes.SQL.Add('SELECT * FROM clientes WHERE CGC_CPF_cliente LIKE :pConsulta');
         DM.sqlClientes.Parameters.ParamByName('pConsulta').Value := editConsulta.Text + '%';
       end;
    4: // Consulta por email
       begin
         DM.sqlClientes.SQL.Add('SELECT * FROM clientes WHERE email LIKE :pConsulta');
         DM.sqlClientes.Parameters.ParamByName('pConsulta').Value := editConsulta.Text + '%';
       end;
    5: // Consulta por estado
     begin
       DM.sqlClientes.SQL.Add('SELECT clientes.*, cidades.nome AS nome_cidade ' +
                       'FROM clientes ' +
                       'INNER JOIN cidades ON clientes.codigo_Cidade = cidades.codigo_cidade ' +
                       'WHERE cidades.estado LIKE :pConsulta');
DM.sqlClientes.Parameters.ParamByName('pConsulta').Value := editConsulta.Text + '%';
     end;
  else
    ShowMessage('Opção inválida');
    Exit; // Sai da rotina se a opção for inválida!!
  end;

  DM.sqlClientes.Open;
end;

procedure TformConCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.sqlClientes.Close;
  DM.sqlClientes.SQL.Clear;
  DM.sqlClientes.SQL.Add('SELECT * FROM clientes');
  DM.sqlClientes.Open;
  Self := nil;
end;

procedure TformConCliente.FormCreate(Sender: TObject);
begin
  DM.sqlClientes.Close;
  DM.sqlClientes.Open;
end;

procedure TformConCliente.radioGroupOpcoesClick(Sender: TObject);
begin
  case radioGroupOpcoes.ItemIndex of
    0: lblBusca.Caption := 'Digite o Nome';
    1: lblBusca.Caption := 'Digite a Cidade';
    2: lblBusca.Caption := 'Digite o CEP';
    3: lblBusca.Caption := 'Digite o CPF';
    4: lblBusca.Caption := 'Digite o Email';
    5: lblBusca.Caption := 'Digite o Estado';
  else
    lblBusca.Caption := 'Opção inválida';
  end;
end;

end.
