unit Orcamento.View.TelaConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, uLib, uConexao,
  System.ImageList, Vcl.ImgList;

type
  TfrmConfig = class(TForm)
    lblIp: TLabeledEdit;
    lblPorta: TLabeledEdit;
    lblBase: TLabeledEdit;
    btnSalvarConfig: TButton;
    imgList: TImageList;
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblIpKeyPress(Sender: TObject; var Key: Char);
    procedure lblPortaKeyPress(Sender: TObject; var Key: Char);
    procedure lblBaseKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.dfm}

procedure TfrmConfig.btnSalvarConfigClick(Sender: TObject);
begin
  try
    Conexao(lblIp.Text, lblPorta.Text, lblBase.Text);
    MessageDlg('Dados salvos com sucesso!', TMsgDlgType.mtInformation, [mbOK], 0);
    Close;
  except on e: Exception do
  begin
    MessageDlg(e.Message, TMsgDlgType.mtConfirmation, [mbOK], 0);
  end;
  end;
end;
procedure TfrmConfig.FormShow(Sender: TObject);
begin
  lblIp.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini', 'CONFIGURACAO', 'IP');
  lblPorta.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini', 'CONFIGURACAO', 'PORTA');
  lblBase.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini', 'CONFIGURACAO', 'BASE');
end;

procedure TfrmConfig.lblIpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    lblPorta.SetFocus;
  end;
end;

procedure TfrmConfig.lblPortaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    lblBase.SetFocus;
  end;
end;

procedure TfrmConfig.lblBaseKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSalvarConfigClick(Sender);
  end;
end;

end.
