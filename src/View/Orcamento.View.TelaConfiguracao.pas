unit Orcamento.View.TelaConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, uLib, uConexao;

type
  TfrmConfig = class(TForm)
    lblIp: TLabeledEdit;
    lblPorta: TLabeledEdit;
    lblBase: TLabeledEdit;
    btnSalvarConfig: TButton;
    procedure btnSalvarConfigClick(Sender: TObject);
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
end.
