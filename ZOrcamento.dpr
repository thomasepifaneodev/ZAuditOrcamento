program ZOrcamento;

uses
  Vcl.Forms,
  Orcamento.View.Principal in 'src\View\Orcamento.View.Principal.pas' {frmPrincipal},
  Orcamento.Model.Conexao in 'src\Model\Orcamento.Model.Conexao.pas' {dmDados: TDataModule},
  uFuncoes in 'Classes\uFuncoes.pas',
  uLib in 'Classes\uLib.pas',
  uConexao in 'Classes\uConexao.pas',
  Orcamento.View.TelaConfiguracao in 'src\View\Orcamento.View.TelaConfiguracao.pas' {frmConfig},
  Orcamento.View.TelaLogin in 'src\View\Orcamento.View.TelaLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
