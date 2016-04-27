unit uGrade;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, FMX.Layouts,
  FMX.Grid, uDocumentacao, System.Rtti;

type

  TDocOwner = class(TDocumentacao)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Classe;
  end;

  TGrade = class(TStringGrid)
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
  RegisterComponents('Prototipagem', [TGrade]);
end;

{ TGrade }

constructor TGrade.Create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TGrade.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
