/* GerenciadorTipo
 * Author: Joao
 * Creation date: 18/06/2017
 */
MACHINE
    GerenciadorTipo
    
INCLUDES Tipo
   
CONCRETE_CONSTANTS semtipo
    
PROPERTIES semtipo: TIPO
    
VARIABLES tipos
    
INVARIANT tipos <: TIPO
    
INITIALISATION tipos := {semtipo}
    
OPERATIONS
    
    adicionarTipo(novoTipo) =
    PRE    novoTipo: TIPO & novoTipo /: tipos
    THEN   tipos := tipos \/ {novoTipo}
    END;
    
    removerTipo(tipoARemover) =
    PRE    tipoARemover: TIPO & tipoARemover /= semtipo
    THEN   tipos := tipos - {tipoARemover}
    END;
    
    ans <-- existeTipo(tt) =
    PRE    tt: TIPO
    THEN   
        IF    tt: tipos
        THEN  ans := TRUE
        ELSE  ans := FALSE
        END
    END
   

END
