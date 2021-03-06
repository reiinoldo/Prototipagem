unit uPropriedades;

interface

type

  TVisibilidade = (P�blico, Privado, Protegido, Pacote);
  TTipoRelacionamento = (trClasse, trCasoDeUso);
//  TModificabilidade = (ApenasAdicionar, Alteravel, Imutavel);
//  TTipoEstereotipo = (Auxiliar, Foco, Implementa��o, MetaClasse, TipoDePoder, Processo, Thread, Tipo, Utilit�rio);
//  TClasseOpcao = (Sim, N�o, Visualiza��o);
//  TTipo = (Caracter, Inteiro, Decimal, Data, Hora);

const
  CVisibilidade: array [0..3] of String = ('public', 'private', 'protected', 'package');
  CVisibilidadeStr: array [0..3] of String = ('P�blico', 'Privado', 'Protegido', 'Pacote');
  CTipoOpcao =  'Insira um novo tipo ou Selecione uma das op��es abaixo';
  CTipoEstereotipoComponente: array [0..8] of String = ('Auxiliar', 'Foco', 'Implementacao', 'MetaClasse', 'TipoDePoder', 'Processo', 'Thread', 'Tipo', 'Utilitario');
  CTipoEstereotipoXMI: array [0..8] of String = ('auxiliary', 'focus', 'implementation', 'metaclass', 'powertype', 'process', 'thread', 'type', 'utility');
  CTTipoComponente: array [0..5] of String = ('Inteiro', 'Real', 'Logico', 'Texto', 'Data', 'Hora');


  function visibilidadeComponenteParaXMI(pVisibilidade: String): String;
  function tipoComponenteParaXMI(pTipo: String): String;
  function tipoEstereotipoComponenteParaXMI(pTipoEstereotipo: String): String;

implementation

uses System.SysUtils;


function visibilidadeComponenteParaXMI(pVisibilidade: String): String;
var
  I: Integer;
begin
  Result := 'private';

  for I := 0 to High(CVisibilidadeStr) do
    if pVisibilidade = CVisibilidadeStr[i] then
      Result :=  CVisibilidade[i];

end;

function tipoComponenteParaXMI(pTipo: String): String;
begin

  pTipo := StringReplace(pTipo, '''', '', [rfReplaceAll]);

  if pTipo = 'Inteiro' then
    Result := 'Integer'
  else if pTipo = 'Logico' then
    Result := 'Boolean'
  else if pTipo = 'Texto' then
    Result := 'String'
  else
    Result := pTipo;

end;

function tipoEstereotipoComponenteParaXMI(pTipoEstereotipo: String): String;
var
  I: Integer;
begin

  Result := StringReplace(pTipoEstereotipo, '''', '', [rfReplaceAll]);

  for I := 0 to High(CTipoEstereotipoComponente) do
    if pTipoEstereotipo = CTipoEstereotipoComponente[i] then
      Result :=  CTipoEstereotipoXMI[i];

end;


end.
