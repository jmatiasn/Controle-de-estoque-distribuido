/* CustoProduto
 * Author: Joao
 * Creation date: 19/06/2017
 */
MACHINE
    CustoProduto
    
USES              GerenciadorProduto

VARIABLES         custoP

INVARIANT         custoP : produtos --> NAT1

INITIALISATION    custoP :: produtos --> NAT1

OPERATIONS

  setCusto(prod, novoCusto) =
  PRE prod : produtos & novoCusto : NAT1
  THEN custoP(prod) := novoCusto
  END;

  pp <-- getCustoProduto(prod) =
  PRE prod : produtos
  THEN pp := custoP(prod) 
  END
  
  //TODO: buscar produtos com custo menor que
  
  //TODO: buscar produtos com custo maior que


END