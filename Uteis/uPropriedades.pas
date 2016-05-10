unit uPropriedades;

interface

type

  TVisibilidade = (P�blico, Privado, Protegido, Pacote);
  TModificabilidade = (ApenasAdicionar, Alteravel, Imutavel);
  TTipo = (Caracter, Inteiro, Decimal, Data, Hora);
  TTipoEstereotipo = (Auxiliar, Foco, Implementa��o, MetaClasse, TipoDePoder, Processo, Thread, Tipo, Utilit�rio);
//  TClasseOpcao = (Sim, N�o, Visualiza��o);

const
  CVisibilidade: array [TVisibilidade] of String = ('public', 'private', 'protected', 'package');
  CTipoOpcao =  'Insira um novo tipo ou Selecione uma das op��es abaixo';
  CTipoEstereotipoComponente: array [0..8] of String = ('Auxiliar', 'Foco', 'Implementa��o', 'MetaClasse', 'TipoDePoder', 'Processo', 'Thread', 'Tipo', 'Utilit�rio');
  CTipoEstereotipoXMI: array [TTipoEstereotipo] of String = ('auxiliary', 'focus', 'implementation', 'metaclass', 'powertype', 'process', 'thread', 'type', 'utility');
  CTTipoComponente: array [0..5] of String = ('Inteiro', 'Real', 'L�gico', 'Texto', 'Data', 'Hora');

implementation

end.
