unit uDocumentacao;

interface

uses
  System.Classes, uPropriedades, FMX.Dialogs;

type

  TDocumentacao = class(TPersistent)
  private
    { Protected declarations }
    fVisibilidade: TVisibilidade;
    fTipo: String;
    fClasse: Boolean;
    function TipoIsStored:Boolean;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create(AOwner: TPersistent);
    property Tipo: String read fTipo write fTipo stored TipoIsStored;
    property Classe: Boolean read fClasse write fClasse;
  published
    { Published declarations }
    property Visibilidade: TVisibilidade read fVisibilidade write fVisibilidade;

  end;

implementation

{ TDoc }

constructor TDocumentacao.create(AOwner: TPersistent);
begin
  Self.Visibilidade := Privado;
  Self.Tipo := CTipoOpcao;
end;

function TDocumentacao.TipoIsStored: Boolean;
begin
  Result := fTipo <> CTipoOpcao;
end;

end.
