unit uPropriedades;

interface

type

  TVisibilidade = (Público, Privado, Protegido, Pacote);
  TModificabilidade = (ApenasAdicionar, Alteravel, Imutavel);
  TTipo = (Caracter, Inteiro, Decimal, Data, Hora);
//  TClasseOpcao = (Sim, Não, Visualização);

const
  CVisibilidade: array [TVisibilidade] of String = ('public', 'private', 'protected', 'package');
  CTipoOpcao =  'Insira um novo tipo ou Selecione uma das opções abaixo';

implementation

end.
