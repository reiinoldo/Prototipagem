unit uRotulo;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls, uDocumentacao;

type
  TDocOwner = class(TDocumentacao)
  published
    property Tipo;
    property Atributo;
  end;

  TRotulo = class(TLabel)
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
  RegisterComponents('Prototipagem', [TRotulo]);
end;


{ TRotulo }

constructor TRotulo.Create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TRotulo.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
