unit uPropriedades;

interface

type

  TVisibilidade = (P�blico, Privado, Protegido, Pacote);
  TModificabilidade = (ApenasAdicionar, Alteravel, Imutavel);
  TTipo = (Caracter, Inteiro, Decimal, Data, Hora);
//  TClasseOpcao = (Sim, N�o, Visualiza��o);

const
  CVisibilidade: array [TVisibilidade] of String = ('public', 'private', 'protected', 'package');
  CTipoOpcao =  'Insira um novo tipo ou Selecione uma das op��es abaixo';

implementation

end.
