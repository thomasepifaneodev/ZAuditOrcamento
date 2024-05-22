unit uConexao;

interface

uses Orcamento.Model.Conexao, System.Classes, System.SysUtils, Vcl.Forms, uLib,
  Vcl.Controls, System.UITypes, Winapi.Windows, Winapi.Messages, Vcl.Dialogs,
  FireDAC.Comp.Client;

procedure Conexao(Ip, Porta, Base : String);
procedure LoginUser(User, Pass : String);
function ReturnForm(Acao: TModalResult) : TModalResult;

implementation

function ReturnForm(Acao: TModalResult) : TModalResult;
begin
  Result := Acao;
end;

procedure LoginUser(User, Pass: String);
var
  Check: Boolean;
  ConsultaSql: TFDQuery;
  vFileName: string;
begin
  if (GetValorIni(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini', 'CONFIGURACAO', 'IP') = '') OR
     (GetValorIni(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini', 'CONFIGURACAO', 'PORTA') = '') OR
     (GetValorIni(ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini', 'CONFIGURACAO', 'BASE') = '') then
  begin
    MessageDlg('Verifique as informa��es do arquivo INI!', TMsgDlgType.mtError, [mbOk], 0);
    Exit;
  end;

    dmDados.fdPgLink.VendorHome := ExtractFilePath(Application.ExeName);
    vFileName := ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini';

    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Clear;
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Add('DriverID=PG');
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Add('Database=' + GetValorIni(vFileName, 'CONFIGURACAO', 'BASE'));
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Add('Port=' + GetValorIni(vFileName, 'CONFIGURACAO', 'PORTA'));
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Add('Server=' + GetValorIni(vFileName, 'CONFIGURACAO', 'IP'));
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Add('LoginTimeout=2');

    Orcamento.Model.Conexao.dmDados.fdConnection.Params.UserName := User;

  if User = 'zeus' then
  begin
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Password := Pass;
  end
  else
  begin
    Orcamento.Model.Conexao.dmDados.fdConnection.Params.Password := '@2t24F5D4n75Z8foE8541Gj54gS5+878a@341R5$sGa4ES5$j%D14s#5d!5';
  end;

  try
    Orcamento.Model.Conexao.dmDados.fdConnection.Connected := True;

    if User <> 'zeus' then
    begin
      ConsultaSql := TFDQuery.Create(nil);
      try
        ConsultaSql.Connection := dmDados.fdConnection;
        ConsultaSql.SQL.Text := 'SELECT * FROM usuarios WHERE login = :User AND Pass = MD5(:Pass);';
        ConsultaSql.ParamByName('User').AsString := User;
        ConsultaSql.ParamByName('Pass').AsString := Pass;
        ConsultaSql.Open;

        if ConsultaSql.IsEmpty then
        begin
          Orcamento.Model.Conexao.dmDados.fdConnection.Connected := False;
          MessageDlg('Usu�rio ou senha inv�lidos!', mtWarning, [mbOk], 0);
        end;
      except on e: Exception do
      begin
        MessageDlg(e.Message, TMsgDlgType.mtWarning, [mbOk], 0);
      end;
      end;
    end;
  except
    on E: Exception do
    begin
      if e.Message.Contains('password authentication failed for user') then
      begin
        MessageDlg('Usu�rio ou senha inv�lidos!', mtWarning, [mbOk], 0);
      end
      else if e.Message.Contains('does not exist') then
      begin
        MessageDlg('Erro nas informa��es de conex�o, verifique o arquivo de configura��o! ZOrcamento.ini', mtWarning, [mbOk], 0);
      end
      else
      begin
        MessageDlg('Erro ao conectar: ' + E.Message, mtError, [mbOk], 0);
        Orcamento.Model.Conexao.dmDados.fdConnection.Connected := False;
      end;
    end;
  end;
end;

procedure Conexao(Ip, Porta, Base : String);
var
  vFileName: string;
begin
  vFileName := ExtractFilePath(Application.ExeName) + 'ZOrcamento.ini';
  SetValorIni(vFileName, 'CONFIGURACAO', 'BASE', Base);
  SetValorIni(vFileName, 'CONFIGURACAO', 'IP', Ip);
  SetValorIni(vFileName, 'CONFIGURACAO', 'PORTA', Porta);
end;

end.

