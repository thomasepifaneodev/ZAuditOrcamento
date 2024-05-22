unit Orcamento.View.TelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, uConexao, Orcamento.Model.Conexao;

type
  TfrmLogin = class(TForm)
    btnEntrar: TButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
if (edtUsuario.Text = '') or (edtSenha.Text = '')	 then
  MessageDlg('Informe usu�rio e senha!', mtWarning, [mbOk], 0)
  else
  begin
    try
      LoginUser(edtUsuario.Text, edtSenha.Text);

    if dmDados.fdConnection.Connected then
    begin
      Close;
    end;
  except on e: Exception do
  begin
    MessageDlg('N�o foi poss�vel conectar. Verifique as configura��es!', mtWarning, [mbOk], 0);
  end;
  end;
  end;
end;
procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtUsuario.SetFocus;
end;

end.
