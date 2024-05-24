unit uFuncoes;

interface

uses
  Vcl.DBGrids;

procedure AutoFitDBGridColumns(DBGrid: TDBGrid; const ColunaIndex: Integer = 2; const ColunaMulti: Integer = 3);

implementation

procedure AutoFitDBGridColumns(DBGrid: TDBGrid; const ColunaIndex: Integer = 2; const ColunaMulti: Integer = 3);
var
  TotalWidth, ColWidth, SpecialColWidth, RemainingWidth, i, RegularColsCount: Integer;
begin
  if DBGrid.Columns.Count = 0 then Exit;

    TotalWidth := DBGrid.ClientWidth;

    RegularColsCount := DBGrid.Columns.Count - 1;

    SpecialColWidth := (TotalWidth * ColunaMulti) div (ColunaMulti + RegularColsCount);

    ColWidth := (TotalWidth - SpecialColWidth) div RegularColsCount;

  for i := 0 to DBGrid.Columns.Count - 1 do
  begin
    if i = ColunaIndex then
      DBGrid.Columns[i].Width := SpecialColWidth - 8
    else
      DBGrid.Columns[i].Width := ColWidth - 2;
  end;
end;

end.


