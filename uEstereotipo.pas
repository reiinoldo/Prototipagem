unit uEstereotipo;

interface

uses
  System.SysUtils, System.Classes;

type
  TEstereotipo = class(TComponent)
  private
    { Private declarations }
    FTipo: String;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Tipo: String read FTipo write FTipo;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TEstereotipo]);
end;

end.
