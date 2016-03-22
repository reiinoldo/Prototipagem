unit botao;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TBotao = class(TCustomButton)
  private
    { Private declarations }
    fId: Integer;
    fMetodo: String;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Metodo: String read fMetodo write fMetodo;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TBotao]);
end;

end.
