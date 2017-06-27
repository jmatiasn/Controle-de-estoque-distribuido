/* TipoProduto
 * Author: Joao
 * Creation date: 19/06/2017
 */
MACHINE
    TipoProduto
    
USES              GerenciadorProduto, GerenciadorTipo

VARIABLES         tipoP

INVARIANT         tipoP : produtos --> tipos

INITIALISATION    tipoP :: produtos --> tipos

OPERATIONS

  setTipo(prod, novoTipo) =
  PRE prod : produtos & novoTipo : tipos
  THEN tipoP(prod) := novoTipo
  END;

  pp <-- getTipoProduto(prod) =
  PRE prod : produtos
  THEN pp := tipoP(prod) END

END
