unit uDocumentacao;

interface

uses
  System.Classes, uPropriedades, FMX.Dialogs;

type
  TDoc = class(TPersistent)
  private
    fId: Integer;
    fNome: String;
    fVisibilidade: TVisibilidade;
    fTipo: TTipo;
    fValorInicial: String;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create(AOwner: TPersistent);
//    procedure Assign(Source: TPersistent); override;
    property Id: Integer read fId write fId;
    property Nome: String read fNome write fNome;
    property ValorInicial: String read fValorInicial write fValorInicial;
    property Tipo: TTipo read fTipo write fTipo default caracter;
  published
    { Published declarations }
    property Visibilidade: TVisibilidade read fVisibilidade write fVisibilidade default privado;

  end;

implementation

{ TDoc }

//procedure TDoc.Assign(Source: TPersistent);
//begin
//  if (Source = nil) or (Source is TDoc) then
//  begin
//
//    if Source <> nil then
//    begin
//      Visibilidade := TDoc(Source).Visibilidade;
//      Tipo := TDoc(Source).Tipo;
//      showMessage('<> nil');
//    end
//    else
//    begin
//      Visibilidade := TVisibilidade.privado;
//      Tipo := TTipo.caracter;
//      showMessage('=nil');
//    end;
//
//  end
//  else
//    inherited;
//  showMessage('inherited');
//end;

constructor TDoc.create(AOwner: TPersistent);
begin
  Self.Visibilidade := privado;
  Self.Tipo := caracter;

end;

end.
