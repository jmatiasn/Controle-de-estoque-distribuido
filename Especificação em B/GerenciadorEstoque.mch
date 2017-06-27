/* GerenciadorEstoque
 * Author: Joao
 * Creation date: 21/06/2017
 */
MACHINE
    GerenciadorEstoque
    
INCLUDES Estoque

VARIABLES estoques
    
INVARIANT estoques <: ESTOQUE
    
INITIALISATION estoques := {}
    
OPERATIONS

    adicionarEstoque(novoE) =
    PRE   novoE: ESTOQUE & novoE/: estoques
    THEN  estoques := estoques \/ {novoE}
    END;
    
    removerEstoque(estARemover) =
    PRE   estARemover: ESTOQUE
    THEN  estoques := estoques - {estARemover}
    END

END