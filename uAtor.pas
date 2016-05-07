unit uAtor;

interface

uses
  System.SysUtils, System.Classes;

type
  TAtor = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TAtor]);
end;

end.
