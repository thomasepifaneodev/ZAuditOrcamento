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
  Orcamento.View.TelaConfiguracao, Orcamento.View.TelaLogin, uLib, uConexao,
  Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls;

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
    pnlDatas: TPanel;
    edtDataInicial: TLabeledEdit;
    edtDataFinal: TLabeledEdit;
    imgList: TImageList;
    pnlBusca: TPanel;
    edtSource: TMaskEdit;
    pnlRegistros: TPanel;
    lblQuantidadeReg: TLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDataInicialExit(Sender: TObject);
    procedure edtDataInicialEnter(Sender: TObject);
    procedure edtDataFinalEnter(Sender: TObject);
    procedure edtDataFinalExit(Sender: TObject);
    procedure edtDataInicialKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataFinalKeyPress(Sender: TObject; var Key: Char);
    procedure edtSourceChange(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtSourceKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ExportFiltro(const xCaracter: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
begin
  pnlBottom.SetFocus;
  if (edtDataInicial.Text = '') or (edtDataFinal.Text = '')	 then
  begin
    //Não faz nada!!!
  end
  else
  begin
    begin
      dmDados.ConsultaOrcamento(edtDataInicial.Text, edtDataFinal.Text);
      AutoFitDBGridColumns(dbGridPrincipal);
      edtSource.Visible := True;
      lblQuantidadeReg.Caption := 'Total de Registros: ' + dbGridPrincipal.DataSource.DataSet.RecordCount.ToString();
    end
  end;
end;


procedure TfrmPrincipal.edtDataInicialEnter(Sender: TObject);
begin
  edtDataInicial.EditMask := '';
  edtDataInicial.MaxLength := 8;
  edtDataInicial.NumbersOnly := True
end;

procedure TfrmPrincipal.edtDataInicialExit(Sender: TObject);
begin
  if edtDataInicial.GetTextLen = 8 then
  begin
    edtDataInicial.EditMask := '!99/99/0000;1;_';
    edtDataInicial.TextHint := DateToStr(Now());
  end
  else
  begin
    if edtDataInicial.GetTextLen <> 8 then
    MessageDlg('Data inicial não informada ou inválida, preencha corretamente!', mtInformation, [mbOk], 0);
    edtDataInicial.SetFocus;
  end;
end;

procedure TfrmPrincipal.edtDataInicialKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #45) then
  begin
    edtDataFinal.SetFocus;
    edtDataFinal.SelectAll;
  end;
end;

procedure TfrmPrincipal.edtDataFinalEnter(Sender: TObject);
begin
  edtDataFinal.EditMask := '';
  edtDataFinal.MaxLength := 8;
  edtDataFinal.NumbersOnly := True
end;

procedure TfrmPrincipal.edtDataFinalExit(Sender: TObject);
begin
  if edtDataFinal.GetTextLen = 8 then
  begin
    edtDataFinal.EditMask := '!99/99/0000;1;_';
  end
  else
  begin
    if edtDataFinal.GetTextLen <> 8 then
    MessageDlg('Data final não informada ou inválida, preencha corretamente!', mtInformation, [mbOk], 0);
    edtDataFinal.SetFocus;
  end;
end;

procedure TfrmPrincipal.edtDataFinalKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #45) then
  begin
    edtSource.SetFocus;
  end;
end;

procedure TfrmPrincipal.edtSourceChange(Sender: TObject);
var
  FilterValue: string;
begin
  FilterValue := edtSource.Text;

  if FilterValue = '' then
  begin
    dmDados.fdQueryOrcamento.Filtered := False;
    lblQuantidadeReg.Caption := 'Total de Registros: ' + dbGridPrincipal.DataSource.DataSet.RecordCount.ToString();
  end
  else
  begin
    dmDados.fdQueryOrcamento.Filter := 'codorcamento = ' + FilterValue ;
    dmDados.fdQueryOrcamento.Filtered := True;
    lblQuantidadeReg.Caption := 'Total de Registros: ' + dbGridPrincipal.DataSource.DataSet.RecordCount.ToString();
  end;
end;

procedure TfrmPrincipal.edtSourceKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (Key = #45) then
 begin
   edtDataInicial.SetFocus;
   edtDataInicial.SelectAll;
 end;
end;

procedure TfrmPrincipal.ExportFiltro(const xCaracter: String);
var
  I : Integer;
  xArquivoTxt : TStringList;
  xLinhaCompleta, DesktopPath : String;
begin
  xArquivoTxt := TStringList.Create;
  while not dbGridPrincipal.DataSource.DataSet.Eof do
  begin
    xLinhaCompleta := '';
  for I := 0 to dbGridPrincipal.Columns.Count - 1 do
  begin
    xLinhaCompleta := xLinhaCompleta +
    dbGridPrincipal.Columns[I].Field.AsString + xCaracter;
  end;
   dbGridPrincipal.DataSource.DataSet.Next;
   xArquivoTxt.Add(xLinhaCompleta);
end;
  DesktopPath := ExtractFilePath(Application.ExeName) + 'Arquivos Exportados';
  if not DirectoryExists (DesktopPath) then
  ForceDirectories(DesktopPath);

  xArquivoTxt.SaveToFile(DesktopPath + '\arquivo.csv');
end;

procedure TfrmPrincipal.btnExportClick(Sender: TObject);
begin
  if dmDados.fdQueryOrcamento.RecordCount <= 0 then
    MessageDlg('Sem dados para exportar!', TMsgDlgType.mtInformation, [mbOK], 0)
  else
  try
    ExportFiltro(';');
  finally
    MessageDlg('Dados exportados com sucesso!', TMsgDlgType.mtInformation, [mbOK], 0)
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente fechar a aplicação?', mtWarning, mbYesNo, 0) = IDYES then
  Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  edtSource.OnChange := edtSourceChange;
  if not ArquivoINIExiste(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini') then
  begin
    MessageDlg('Arquivo de configuração não encontrado!', mtWarning, [mbOk], 0);
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
        FreeAndNil(frmLogin);
      end;
    end;
end;


procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  AutoFitDBGridColumns(dbGridPrincipal);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  edtSource.SetFocus;
  edtDataInicial.Text := DateToStr(Now()).Replace('/','');
  edtDataFinal.Text := DateToStr(Now()).Replace('/','');
  edtDataInicial.EditMask := '!99/99/0000;1;_';
  edtDataFinal.EditMask := '!99/99/0000;1;_';
end;
end.
