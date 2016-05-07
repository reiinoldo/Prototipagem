unit uGrade;

interface

uses
  System.SysUtils, System.Classes,System.Rtti, System.UITypes,
  FMX.Types, FMX.Controls, FMX.Layouts, FMX.Graphics, FMX.Grid,
  uDocumentacao, uEstereotipo, uListaDeEstereotipos, FMX.dialogs;

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
    fEstereotipo: TListaDeItens;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create (AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Documentacao : TDocOwner read fDoc write fDoc ;
    property DocumentacaoEstereotipo : TListaDeItens read fEstereotipo write fEstereotipo ;
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
  fEstereotipo := TListaDeItens.Create(AOwner);
end;

destructor TGrade.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;


end.

