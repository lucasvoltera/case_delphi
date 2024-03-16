unit relClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformRelClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    editClienteInicial: TEdit;
    editClienteFinal: TEdit;
    Label2: TLabel;
    editCidadeInicial: TEdit;
    editCidadeFinal: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    checkAgruparCidade: TCheckBox;
    comboEstado: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
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

procedure TformRelClientes.Button1Click(Sender: TObject);
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
      showmessage('N�o foram localizados registros com os filtros informados');
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
      showmessage('N�o foram localizados registros com os filtros informados');
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
