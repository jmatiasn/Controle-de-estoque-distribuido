/* MaquinaCentral
 * Author: Joao
 * Creation date: 11/06/2017
 */
MACHINE
    MaquinaCentral
    
SETS PRODUTOS; TIPOS
    
VARIABLES produtos, tipos, produtotipo, preco
    
INVARIANT produtos: seq(PRODUTOS) & 
          tipos: seq(TIPOS) & 
          produtotipo: PRODUTOS --> TIPOS & 
          preco: PRODUTOS --> NAT1
          
INITIALISATION produtos:={} || tipos:={} || 
               produtotipo :: PRODUTOS --> TIPOS || 
               preco :: PRODUTOS --> NAT1
               
OPERATIONS
    
  //PRODUTO
  addProduto(novoProd, tipoDoProd, precoDoProd) =
  PRE novoProd: PRODUTOS & tipoDoProd: TIPOS & precoDoProd: NAT1
  THEN produtos := produtos <- novoProd || 
       produtotipo(novoProd) := tipoDoProd ||
       preco(novoProd) := precoDoProd
  END;
    
  //PRECO
  setPreco(prod, novoPrec) =
  PRE prod : PRODUTOS & novoPrec : NAT1
  THEN preco(prod) := novoPrec
  END;

  pp <-- getPrecoProduto(prod) =
  PRE prod : PRODUTOS
  THEN pp := preco(prod) END;
  
  //PRODUTOTIPO
  setTipo(prod, novoTipo) =
  PRE prod : PRODUTOS & novoTipo : TIPOS
  THEN produtotipo(prod) := novoTipo
  END;

  pp <-- getTipoProduto(prod) =
  PRE prod : PRODUTOS
  THEN pp := produtotipo(prod) END 

END
