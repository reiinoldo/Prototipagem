unit uCaixaTexto;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.Edit, uDocumentacao;

type

  TDocOwner = class(TDocumentacao)
  published
    property Tipo;
  end;

  TCaixaTexto = class(TCustomEdit)
  private
    fDoc : TDocOwner;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create (AOwner: TComponent); override;
    destructor Destroy; override;

  published
    { Published declarations }
    property Documentacao : TDocOwner read fDoc write fDoc ;
    property Position;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TCaixaTexto]);
end;

{ TCaixaTexto }

constructor TCaixaTexto.create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TCaixaTexto.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
