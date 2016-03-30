unit uPropriedades;

interface

type

  TVisibilidade = (publico, privado, protegido, pacote);
  TModificabilidade = (apenasAdicionar, alteravel, imutavel);
  TTipo = (caracter, inteiro, decimal, data, hora);

const
  CVisibilidade: array [TVisibilidade] of String = ('public', 'private', 'protected', 'package');

implementation

end.
