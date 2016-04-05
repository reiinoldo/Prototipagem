unit uCaixaCombinacao;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls,
  uDocumentacao;

type
  TDocOwner = class(TDoc)
  published
    property Tipo;
  end;

  TCaixaCombinacao = class(TCheckBox)
  private
    { Private declarations }
    fDoc: TDocOwner;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create (AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Documentacao : TDocOwner read fDoc write fDoc ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TCaixaCombinacao]);
end;

{ TCaixaCombinacao }

constructor TCaixaCombinacao.create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TCaixaCombinacao.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
