unit Orcamento.Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.PGDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.Dialogs;

type
  TdmDados = class(TDataModule)
    fdQueryOrcamento: TFDQuery;
    fdPgLink: TFDPhysPgDriverLink;
    fdConnection: TFDConnection;
    fdCreateFunction: TFDCommand;

  private
    { Private declarations }
  public
    procedure ConsultaOrcamento(DatInicial, DatFinal:  string);
    procedure ConsultaOrcamentoGeral();
    { Public declarations }

  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDados }

{ TdmDados }

procedure TdmDados.ConsultaOrcamento(DatInicial, DatFinal:  string);

begin
  try
    fdCreateFunction.Open();

    fdQueryOrcamento.SQL.Clear;
    fdQueryOrcamento.SQL.Text := 'SELECT * FROM orcamentosexcluidos('+ '''' + DatInicial + '''' + ', ' + '''' + DatFinal + ''''+ ') ORDER BY codorcamento;';
    fdQueryOrcamento.Open();

  except on e : Exception do
  begin
    ShowMessage(e.Message);
  end;
  end;

end;

procedure TdmDados.ConsultaOrcamentoGeral;
begin
try
    fdCreateFunction.Open();

    fdQueryOrcamento.SQL.Clear;
    fdQueryOrcamento.SQL.Text := 'SELECT * FROM orcamentosexcluidos((SELECT MIN(data) FROM vauditoria), (SELECT MAX(data) FROM vauditoria))';
    fdQueryOrcamento.Open();

  except on e : Exception do
  begin
    ShowMessage(e.Message);
  end;
  end;
end;

end.
