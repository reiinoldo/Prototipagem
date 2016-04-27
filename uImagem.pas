unit uImagem;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, FMX.Objects,
  uDocumentacao;

type

  TDocOwner = class(TDocumentacao)
  published
    property Tipo;
  end;

  TImagem = class(TImage)
  private
    { Private declarations }
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
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TImagem]);
end;

{ TImagem }

constructor TImagem.Create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TImagem.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
