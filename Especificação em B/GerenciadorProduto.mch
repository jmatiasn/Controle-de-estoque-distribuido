/* GerenciadorProduto
 * Author: Joao
 * Creation date: 18/06/2017
 */
MACHINE
    GerenciadorProduto
    
INCLUDES Produto

VARIABLES produtos
    
INVARIANT produtos <: PRODUTO
    
INITIALISATION produtos := {}
    
OPERATIONS

    adicionarProduto(novoP) =
    PRE   novoP: PRODUTO & novoP/: produtos
    THEN  produtos := produtos \/ {novoP}
    END;
    
    removerProduto(prodARemover) =
    PRE   prodARemover: PRODUTO
    THEN  produtos := produtos - {prodARemover}
    END;
    
    ans <-- existeProduto(pp) =
    PRE    pp: PRODUTO
    THEN   
        IF    pp: produtos
        THEN  ans := TRUE
        ELSE  ans := FALSE
        END
    END

END
