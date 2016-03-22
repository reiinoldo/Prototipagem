unit rotulo;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls, propriedades;

type
  TRotulo = class(TLabel)
  private
    { Private declarations }
    fId: Integer;
    fNome: String;
    fVisibilidade: TVisibilidade;
    fModificabilidade: TModificabilidade;
    fTipo: TTipo;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Visibilidade: TVisibilidade read fVisibilidade write fVisibilidade default privado;
    property Modificabilidade: TModificabilidade read fModificabilidade write fModificabilidade default alteravel;
    property Tipo: TTipo read fTipo write fTipo default caracter;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TRotulo]);
end;

end.
