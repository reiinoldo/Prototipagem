unit uRotulo;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls, uDocumentacao;

type
  TRotulo = class(TLabel)
  private
    { Private declarations }
    fDoc: TDoc;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create (AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Documentacao : TDoc read fDoc write fDoc ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TRotulo]);
end;

{ TRotulo }

constructor TRotulo.create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDoc.Create(AOwner);
end;

destructor TRotulo.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
