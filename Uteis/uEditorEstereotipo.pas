unit uEditorEstereotipo;

interface

uses
  System.UITypes, System.Classes, System.SysUtils,
  DesignEditors, DesignIntf, uEstereotipo;

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
begin
  inherited;
  Proc('auxiliary');
  Proc('focus');
  Proc('implementattion');
  Proc('metaclass');
  Proc('powertype');
  Proc('process');
  Proc('thread');
  Proc('type');
  Proc('utility');

end;

end.
