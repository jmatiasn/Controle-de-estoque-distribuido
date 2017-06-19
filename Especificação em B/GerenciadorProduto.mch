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

END
