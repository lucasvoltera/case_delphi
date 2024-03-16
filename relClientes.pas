unit relClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformRelClientes = class(TForm)
    Panel1: TPanel;
    lblTitulo: TLabel;
    editClienteInicial: TEdit;
    editClienteFinal: TEdit;
    lblCodCliente: TLabel;
    editCidadeInicial: TEdit;
    editCidadeFinal: TEdit;
    lblCodCidade: TLabel;
    codClienteInicial: TLabel;
    lblcodClienteFinal: TLabel;
    lblcodCidadeInciial: TLabel;
    lblcodCidadeFinal: TLabel;
    lblEstado: TLabel;
    btRelatorio: TButton;
    checkAgruparCidade: TCheckBox;
    comboEstado: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelClientes: TformRelClientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TformRelClientes.btRelatorioClick(Sender: TObject);
begin
  if (checkAgruparCidade.Checked) then
  begin
    DM.dsSqlReportAgrupado.Close;
    DM.dsSqlReportAgrupado.Parameters.ParamByName('CLIENTE_INICIAL').Value := editClienteInicial.Text;
    DM.dsSqlReportAgrupado.Parameters.ParamByName('CLIENTE_FINAL').Value := editClienteFinal.Text;
    DM.dsSqlReportAgrupado.Parameters.ParamByName('CIDADE_INICIAL').Value := editCidadeInicial.Text;
    DM.dsSqlReportAgrupado.Parameters.ParamByName('CIDADE_FINAL').Value := editCidadeFinal.Text;
    DM.dsSqlReportAgrupado.Parameters.ParamByName('ESTADO').Value := comboEstado.Text;
    DM.dsSqlReportAgrupado.Open;

    if (DM.dsSqlReportAgrupado.RecordCount = 0) then
    begin
      showmessage('Não foram localizados registros com os filtros informados');
      Abort;
    end;

    DM.reportClientesAgrupado.Print;
  end
  else
  begin
    DM.dsSqlReport.Close;
    DM.dsSqlReport.Parameters.ParamByName('CLIENTE_INICIAL').Value := editClienteInicial.Text;
    DM.dsSqlReport.Parameters.ParamByName('CLIENTE_FINAL').Value := editClienteFinal.Text;
    DM.dsSqlReport.Parameters.ParamByName('CIDADE_INICIAL').Value := editCidadeInicial.Text;
    DM.dsSqlReport.Parameters.ParamByName('CIDADE_FINAL').Value := editCidadeFinal.Text;
    DM.dsSqlReport.Parameters.ParamByName('ESTADO').Value := comboEstado.Text;
    DM.dsSqlReport.Open;

    if (DM.dsSqlReport.RecordCount = 0) then
    begin
      showmessage('Não foram localizados registros com os filtros informados');
      Abort;
    end;

    DM.reportClientes.Print;
  end;

end;

procedure TformRelClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self := nil;
end;

end.
