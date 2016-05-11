unit uPropriedades;

interface

type

  TVisibilidade = (Público, Privado, Protegido, Pacote);
//  TModificabilidade = (ApenasAdicionar, Alteravel, Imutavel);
//  TTipoEstereotipo = (Auxiliar, Foco, Implementação, MetaClasse, TipoDePoder, Processo, Thread, Tipo, Utilitário);
//  TClasseOpcao = (Sim, Não, Visualização);
//  TTipo = (Caracter, Inteiro, Decimal, Data, Hora);

const
  CVisibilidade: array [0..3] of String = ('public', 'private', 'protected', 'package');
  CVisibilidadeStr: array [0..3] of String = ('Público', 'Privado', 'Protegido', 'Pacote');
  CTipoOpcao =  'Insira um novo tipo ou Selecione uma das opções abaixo';
  CTipoEstereotipoComponente: array [0..8] of String = ('Auxiliar', 'Foco', 'Implementação', 'MetaClasse', 'TipoDePoder', 'Processo', 'Thread', 'Tipo', 'Utilitário');
  CTipoEstereotipoXMI: array [0..8] of String = ('auxiliary', 'focus', 'implementation', 'metaclass', 'powertype', 'process', 'thread', 'type', 'utility');
  CTTipoComponente: array [0..5] of String = ('Inteiro', 'Real', 'Lógico', 'Texto', 'Data', 'Hora');


  function visibilidadeComponenteParaXMI(pVisibilidade: String): String;
  function tipoComponenteParaXMI(pTipo: String): String;

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
  else if pTipo = 'Lógico' then
    Result := 'Boolean'
  else if pTipo = 'Texto' then
    Result := 'String'
  else
    Result := pTipo;

end;


end.
