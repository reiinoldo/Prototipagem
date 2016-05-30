unit uBotaoSelecao;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls,
  FMX.Controls.Presentation, FMX.StdCtrls,
  uDocumentacao;

type
  TDocOwner = class(TDocumentacao)
  published
    property Tipo;
    property Atributo;
  end;

  TBotaoSelecao = class(TRadioButton)
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
  RegisterComponents('Prototipagem', [TBotaoSelecao]);
end;

{ TBotaoSelecao }

constructor TBotaoSelecao.Create(AOwner: TComponent);
begin
  inherited;
  fDoc := TDocOwner.Create(AOwner);
end;

destructor TBotaoSelecao.Destroy;
begin
  FreeAndNil(fDoc);
  inherited;
end;

end.
