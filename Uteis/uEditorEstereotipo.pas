unit uEditorEstereotipo;

interface

uses
  System.UITypes, System.Classes, System.SysUtils,
  DesignEditors, DesignIntf, uEstereotipo, uPropriedades;

type

  TEstereotipoEditor = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(string), TEstereotipo, 'Tipo', TEstereotipoEditor);
end;

{ TTiposEditor }


function TEstereotipoEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paValueList];
end;

procedure TEstereotipoEditor.GetValues(Proc: TGetStrProc);
var
  I: Integer;
begin
  inherited;

  Proc(CTipoOpcao);

  for I := 0 to High(CTipoEstereotipoComponente) do
    Proc(CTipoEstereotipoComponente[I]);

end;

end.
