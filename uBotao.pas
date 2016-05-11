unit uBotao;

interface

uses
  System.SysUtils, System.Classes,
  FMX.Types, FMX.Controls, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Dialogs,
  uDocumentacao, uPropriedades, uListaDeAtores;

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
    function RetornoIsStored: Boolean;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create (AOwner: TComponent);
  published
    { Published declarations }
    property Retorno: String read fRetorno write fRetorno stored RetornoIsStored;
    property Parametros: TParametro read fParametros write fParametros;

  end;

  TBotao = class(TButton)
  private
    { Private declarations }
    fDoc : TDocOwner;
    fDocAtor: TListaDeItens;
  protected
    { Protected declarations }
  public
    { Public declarations }
   constructor Create (AOwner: TComponent); override;
   destructor Destroy; override;
  published
    { Published declarations }
    property Documentacao : TDocOwner read fDoc write fDoc ;
    property DocumentacaoAtor: TListaDeItens read fDocAtor write fDocAtor;
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
  fDocAtor := TListaDeItens.Create(Self);
end;

destructor TBotao.Destroy;
begin
  FreeAndNil(fDoc);
  FreeAndNil(fDocAtor);
  inherited;
end;


{ TDocOwner }

constructor TDocOwner.create(AOwner: TComponent);
begin
  fParametros := TParametro.Create;
end;

function TDocOwner.RetornoIsStored: Boolean;
begin
  Result := fRetorno <> CTipoOpcao;
end;

end.
