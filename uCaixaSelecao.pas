unit uCaixaSelecao;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, FMX.StdCtrls,
  uDocumentacao;

type

  TDocOwner = class(TDocumentacao)
  published
    property Tipo;
    property Atributo;
  end;

  TCaixaSelecao = class(TCheckBox)
  private
    { Private declarations }
    fDoc: TDocOwner;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create (AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Documentacao : TDocOwner read fDoc write fDoc ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TCaixaSelecao]);
end;

{ TCaixaSelecao }

constructor TCaixaSelecao.create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TCaixaSelecao.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
