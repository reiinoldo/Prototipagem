unit uBotao;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls, uDocumentacao,
  uPropriedades, DesignEditors, DesignIntf, uParametro,fmx.Dialogs,
  ColnEdit;

var
  iAOwner: TComponent;

type
  TParametrosEditorName = String;


  TParametrosEditor = class(TStringProperty)
  private

  public
    lista: TOwnedCollection;
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  end;

  TParametro = class
  private
    { Private declarations }
    fNome: String;
    fTipo: TTipo;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Nome: String read fNome write fNome;
    property Tipo: TTipo read fTipo write fTipo;
  end;



  TDocOwner = class(TDoc)
  private
    { Private declarations }
    fParametros: TParametro;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create (AOwner: TComponent);
  published
    { Published declarations }
    property Parametros: TParametro read fParametros write fParametros;
  end;

  TBotao = class(TCustomButton)
  private
    { Private declarations }
    fDoc : TDocOwner;
    fMetodo: String;
  protected
    { Protected declarations }
  public
    { Public declarations }
   constructor create (AOwner: TComponent); override;
   destructor Destroy; override;
  published
    { Published declarations }
    property Position;
    property Text;
    property Metodo: String read fMetodo write fMetodo;
    property Documentacao : TDocOwner read fDoc write fDoc ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Prototipagem', [TBotao]);
  RegisterPropertyEditor(TypeInfo(string),TBotao, 'Metodo', TParametrosEditor)
end;

{ TBotao }

constructor TBotao.create(AOwner: TComponent);
begin
  inherited;
  iAOwner := Self;
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
end;


{ TParametrosEditor }

procedure TParametrosEditor.Edit;
begin
  inherited;
  showmessage('edot');
  ShowMessage('iAOwner ' + iAOwner.Name);
  ShowCollectionEditor(Designer, iAOwner, Self.lista, 'MyOwnedCollection');
  frmParametro := TfrmParametro.Create(iAOwner);
  frmParametro.Show;
  freeAndNil(frmParametro);
  showmessage('edqwesdadsat');

end;

function TParametrosEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

end.
