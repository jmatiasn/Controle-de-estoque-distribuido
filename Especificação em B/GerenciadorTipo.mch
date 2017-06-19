/* GerenciadorTipo
 * Author: Joao
 * Creation date: 18/06/2017
 */
MACHINE
    GerenciadorTipo
    
INCLUDES Tipo
    
CONSTANTS semtipo
    
PROPERTIES semtipo: TIPO
    
VARIABLES tipos
    
INVARIANT tipos <: TIPO
    
INITIALISATION tipos := {semtipo}
    
OPERATIONS
    
    adicionarTipo(novoTipo) =
    PRE    novoTipo: TIPO & novoTipo /: tipos
    THEN   tipos := tipos \/ {novoTipo}
    END;
    
    //TODO: alterar os produtos desse tipo removido para "semtipo"
    removerTipo(tipoARemover) =
    PRE    tipoARemover: tipos & tipoARemover /= semtipo
    THEN   tipos := tipos - {tipoARemover}
    END
   

END
