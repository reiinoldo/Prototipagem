unit uPropriedades;

interface

type

  TVisibilidade = (Público, Privado, Protegido, Pacote);
  TModificabilidade = (ApenasAdicionar, Alteravel, Imutavel);
  TTipo = (Caracter, Inteiro, Decimal, Data, Hora);
  TTipoEstereotipo = (Auxiliar, Foco, Implementação, MetaClasse, TipoDePoder, Processo, Thread, Tipo, Utilitário);
//  TClasseOpcao = (Sim, Não, Visualização);

const
  CVisibilidade: array [TVisibilidade] of String = ('public', 'private', 'protected', 'package');
  CTipoOpcao =  'Insira um novo tipo ou Selecione uma das opções abaixo';
  CTipoEstereotipoComponente: array [0..8] of String = ('Auxiliar', 'Foco', 'Implementação', 'MetaClasse', 'TipoDePoder', 'Processo', 'Thread', 'Tipo', 'Utilitário');
  CTipoEstereotipoXMI: array [TTipoEstereotipo] of String = ('auxiliary', 'focus', 'implementation', 'metaclass', 'powertype', 'process', 'thread', 'type', 'utility');
  CTTipoComponente: array [0..5] of String = ('Inteiro', 'Real', 'Lógico', 'Texto', 'Data', 'Hora');

implementation

end.
