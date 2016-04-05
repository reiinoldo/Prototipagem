unit uEditorParametros;

interface

uses
  System.UITypes, System.Classes, System.SysUtils,
  DesignEditors, DesignIntf,
  uParametro, uBotao;

type

  TParametrosEditor = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(string), TParametro, 'ListaDeParametros', TParametrosEditor);
end;

{ TParametrosEditor }

procedure TParametrosEditor.Edit;
var
  ListaParametrosPropriedades: TStringList;
  i: integer;
  coluna: Integer;
  linha: Integer;
  ValorPropriedades : String;
begin
  inherited;
  frmParametro := TfrmParametro.Create(nil);
  ListaParametrosPropriedades := TStringList.Create;
  try

    ListaParametrosPropriedades.Clear;
    ExtractStrings(['|'],[], PChar(GetStrValue), ListaParametrosPropriedades);
    coluna := 0;
    linha := 0;

    for I := 0 to Pred(ListaParametrosPropriedades.Count) do
    begin

      frmParametro.Parametros.Cells[coluna, linha] := ListaParametrosPropriedades.Strings[i];

      if coluna = 0 then
        coluna := 1
      else begin
        coluna := 0;
        inc(linha);
      end;

    end;

    if frmParametro.ShowModal = mrOk then
    begin
      ValorPropriedades := '';

      for I := 0 to Pred(frmParametro.Parametros.RowCount) do
      begin

        if (frmParametro.Parametros.Cells[0, I] <> '') and (frmParametro.Parametros.Cells[1, I] <> '') then
          ValorPropriedades := ValorPropriedades + frmParametro.Parametros.Cells[0, I] + '|' + frmParametro.Parametros.Cells[1, I] + '|';

      end;

      ValorPropriedades := Copy(ValorPropriedades, 1, Length(ValorPropriedades) -1);
      SetStrValue(ValorPropriedades);

    end;

  finally
    FreeAndNil(frmParametro);
    FreeAndNil(ListaParametrosPropriedades);
  end;

end;

function TParametrosEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

end.
