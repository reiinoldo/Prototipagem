unit uCaixaSelecao;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, FMX.ListBox,
  uDocumentacao;

type
  TCaixaSelecao = class(TCustomComboBox)
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
    property Position;
    property Items;
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
  fDoc := TDoc.Create(AOwner);
end;

destructor TCaixaSelecao.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
