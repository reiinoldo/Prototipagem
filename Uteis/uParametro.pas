unit uParametro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation,
   FMX.StdCtrls, FMX.Edit, FMX.ListBox, System.Rtti, FMX.Grid, FMX.Layouts;

type
  TfrmParametro = class(TForm)
    Parametros: TStringGrid;
    Nome: TStringColumn;
    Tipo: TStringColumn;
    btSalvar: TButton;
    btCancelar: TButton;
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParametro: TfrmParametro;

implementation

{$R *.fmx}

procedure TfrmParametro.btCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmParametro.btSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.


