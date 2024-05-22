unit Orcamento.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXPanels, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, uFuncoes,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Orcamento.Model.Conexao,
  Orcamento.View.TelaConfiguracao, Orcamento.View.TelaLogin, uLib, uConexao;

type
  TfrmPrincipal = class(TForm)
    pnlImg: TPanel;
    pnlBottom: TPanel;
    pnlButtonBuscar: TPanel;
    pnlButtonExport: TPanel;
    pnlButtonExit: TPanel;
    pnlTop: TPanel;
    pnlCenter: TPanel;
    btnBuscar: TSpeedButton;
    btnSair: TSpeedButton;
    btnExport: TSpeedButton;
    dbGridPrincipal: TDBGrid;
    dataSource: TDataSource;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
begin
  dmDados.ConsultaOrcamento;
  AutoFitDBGridColumns(dbGridPrincipal);
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if not ArquivoINIExiste(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini') then
  begin
    MessageDlg('Arquivo de configura��o n�o encontrado!', mtWarning, [mbOk], 0);
    frmConfig := TFrmConfig.Create(nil);
    try
      frmConfig.ShowModal();
    finally
      FreeAndNil(frmConfig);
    end;
  end;
  frmLogin := TFrmLogin.Create(nil);
    try
      frmLogin.ShowModal();
      if dmDados.fdConnection.Connected then
        begin
          frmLogin.ModalResult := ReturnForm(mrOk);
        end;
      if frmLogin.ModalResult	<> mrOk then
      begin
        Application.Terminate;
        frmPrincipal.Free;
      end;
      except
      on e: Exception do
      begin
        ShowMessage(PWideChar('Test' + e.Message));
        FreeAndNil(frmLogin);
      end;
    end;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  AutoFitDBGridColumns(dbGridPrincipal);
end;

end.
