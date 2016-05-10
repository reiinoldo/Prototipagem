unit uEditorTipos;

interface

uses
  System.UITypes, System.Classes, System.SysUtils,
  DesignEditors, DesignIntf,
  uDocumentacao, uPropriedades;

type

  TTiposEditor = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(string), TDocumentacao, 'Tipo', TTiposEditor);
  RegisterPropertyEditor(TypeInfo(string), TDocumentacao, 'Retorno', TTiposEditor);
end;

{ TTiposEditor }


function TTiposEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paValueList];
end;

procedure TTiposEditor.GetValues(Proc: TGetStrProc);
var
  I: Integer;
begin
  inherited;

  Proc(CTipoOpcao);

  for I := 0 to High(CTTipoComponente) do
    Proc(CTTipoComponente[I]);

end;

end.
