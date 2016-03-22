unit caixaTexto;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.Edit, propriedades;

type
  TCaixaTexto = class(TCustomEdit)
  private
    fId: Integer;
    fNome: String;
    fVisibilidade: TVisibilidade;
    fModificabilidade: TModificabilidade;
    fTipo: TTipo;
    fValorInicial: String;
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
  RegisterComponents('Prototipagem', [TCaixaTexto]);
end;

end.
