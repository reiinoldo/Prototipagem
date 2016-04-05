unit uAreaTexto;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  uDocumentacao;

type

  TDocOwner = class(TDoc)
  published
    property Tipo;
  end;

  TAreaTexto = class(TCustomMemo)
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
    property Position;
    property Width;
    property Height;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TAreaTexto]);
end;

{ TAreaTexto }

constructor TAreaTexto.Create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TAreaTexto.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
