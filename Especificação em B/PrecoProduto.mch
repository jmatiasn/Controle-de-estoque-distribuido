/* PrecoProduto
 * Author: Joao
 * Based on machine Price
 * Creation date: 18/06/2017
 */
MACHINE
    PrecoProduto

USES              GerenciadorProduto

VARIABLES         precoP

INVARIANT         precoP : produtos --> NAT1

INITIALISATION    precoP :: produtos --> NAT1

OPERATIONS

  setPreco(prod, novoPreco) =
  PRE prod : produtos & novoPreco : NAT1
  THEN precoP(prod) := novoPreco
  END;

  pp <-- getPrecoProduto(prod) =
  PRE prod : produtos
  THEN pp := precoP(prod) END
  
  //TODO: buscar produtos com valor menor que
  
  //TODO: buscar produtos com valor maior que

END

