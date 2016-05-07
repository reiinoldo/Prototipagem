unit uListaDeAtores;

interface

uses System.UITypes, System.Classes, System.SysUtils,
     FMX.Graphics,
     uDocumentacao, uAtor;

type

  TItem = class(TCollectionItem)
  private
    fAtor : TAtor;
    fDisplayName: String;
  protected
    function GetDisplayName: string; override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    property DisplayName: String read fDisplayName write fDisplayName;
  published
    property Ator : TAtor read fAtor write fAtor;
  end;

  TListaDeItens = class(TCollection)
  private
    FOwner: TComponent;
    function GetColumnItem(Index: integer): TItem;
    procedure SetColumnItem(Index: integer; const Value: TItem);
  protected
    function GetOwner: TPersistent; override;
  public
    constructor Create(AOwner: TComponent);
    function Add: TItem;
    function Insert(Index: integer): TItem;
    property Items[Index: integer]: TItem read GetColumnItem write SetColumnItem;
  end;

implementation

{ TItem }

procedure TItem.Assign(Source: TPersistent);
begin
  inherited;
end;

constructor TItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
end;

destructor TItem.Destroy;
begin
  inherited;
end;

function TItem.GetDisplayName: string;
begin
  Result := Format('Ator %d', [Index]);
end;

{ TListaDeItens }

function TListaDeItens.Add: TItem;
begin
  Result := TItem(inherited Add);
end;

constructor TListaDeItens.Create(AOwner: TComponent);
begin
  inherited Create(TItem);
  FOwner := AOwner;
end;

function TListaDeItens.GetColumnItem(Index: integer): TItem;
begin
  Result := TItem(inherited Items[Index]);
end;

function TListaDeItens.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TListaDeItens.Insert(Index: integer): TItem;
begin
  Result := TItem(inherited Insert(Index));
end;

procedure TListaDeItens.SetColumnItem(Index: integer; const Value: TItem);
begin
  Items[Index].Assign(Value);
end;

end.
