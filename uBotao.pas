unit uBotao;

interface

uses
  System.SysUtils, System.Classes,
  FMX.Types, FMX.Controls, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Dialogs,
  uDocumentacao, uPropriedades;

type

  TParametro = class(TPersistent)
  private
    { Private declarations }
    fListaDeParametros: String;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property ListaDeParametros: String read fListaDeParametros write fListaDeParametros;
  end;

  TDocOwner = class(TDocumentacao)
  private
    { Private declarations }
    fParametros: TParametro;
    fRetorno: String;
    fAtor: TStrings;
    procedure SetAtor(const Value: TStrings);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create (AOwner: TComponent);
  published
    { Published declarations }
    property Retorno: String read fRetorno write fRetorno;
    property Parametros: TParametro read fParametros write fParametros;
    property Ator: TStrings read fAtor write SetAtor;
  end;

  TBotao = class(TCustomButton)
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
    property Position;
    property Text;
    property Documentacao : TDocOwner read fDoc write fDoc ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TBotao]);
end;

{ TBotao }

constructor TBotao.create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TBotao.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;


{ TDocOwner }

constructor TDocOwner.create(AOwner: TComponent);
begin
  fParametros := TParametro.Create;
  fAtor := TStringList.Create;
end;


procedure TDocOwner.SetAtor(const Value: TStrings);
begin
  fAtor.Assign(Value);
end;

end.
