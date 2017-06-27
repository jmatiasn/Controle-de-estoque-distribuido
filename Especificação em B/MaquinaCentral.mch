/* MaquinaCentral
 * Author: Joao
 * Creation date: 11/06/2017
 */
 
 //TODO: abstrair máquinas
MACHINE
    MaquinaCentral

INCLUDES GerenciadorTipo, GerenciadorProduto, GerenciadorEstoque

VARIABLES produtoTipo,
          estoqueTipo,
          estoqueTipoLimite,
          estoqueProduto
//          ,
//          estoqueProdutoQtd
    
INVARIANT produtoTipo: PRODUTO --> TIPO &
          estoqueTipo: ESTOQUE --> TIPO &
          estoqueTipoLimite: ESTOQUE +-> (TIPO * NAT) &
          estoqueProduto: ESTOQUE --> PRODUTO 
//          &
//          estoqueProdutoQtd: ESTOQUE +-> (PRODUTO * NAT)
    
INITIALISATION produtoTipo:= PRODUTO * {semtipo}  ||
               estoqueTipo:= ESTOQUE * {semtipo} ||
               estoqueTipoLimite:= {} ||
               estoqueProduto(DEFAULT_ESTOQUE):= DEFAULT_PRODUTO 
//               ||
//               estoqueProdutoQtd := {}
    
//PROMOTES adicionarTipo
    
OPERATIONS
    /*
    //---------------------------------------------------------------------
    //OPERAÇÕES COM TIPO
    removerTipoMC(tt) =
    PRE    tt:TIPO & 
           tt: ran(produtoTipo) & 
           tt /= semtipo & 
           tt: ran(estoqueTipo)
    THEN   removerTipo(tt) ||
           produtoTipo := (produtoTipo |>> {tt}) \/ 
                          (dom(produtoTipo |> {tt}) * {semtipo}) ||
           estoqueTipo := (estoqueTipo |>> {tt}) \/ 
                          (dom(estoqueTipo |> {tt}) * {semtipo}) ||
           estoqueTipoLimite := (estoqueTipo |> {tt}) <<| estoqueTipoLimite \/
                                 dom(estoqueTipo |> {tt}) * {semtipo} * ran((estoqueTipo |> {tt}) <| estoqueTipoLimite)
    END;
    */
    //---------------------------------------------------------------------
    //OPERAÇÕES COM PRODUTO
    cadastrarProdutoMC(pp, tt) =
    PRE    pp: PRODUTO & 
           pp/: produtos & 
           pp/:dom(produtoTipo) & 
           tt: TIPO & tt: tipos
    THEN   adicionarProduto(pp) ||
           produtoTipo(pp) := tt
    END;
    /*
    removerProdutoMC(pp) =
    PRE    pp:PRODUTO & 
           pp: dom(produtoTipo)
    THEN   removerProduto(pp) ||
           produtoTipo := (produtos - {pp}) <| produtoTipo ||
           IF (pp: ran(estoqueProduto))
           THEN    estoqueProduto := estoqueProduto |>> {pp} ||
                   estoqueProdutoQtd := (estoqueProduto |>> {pp}) <| estoqueProdutoQtd
           END
    END;
    
    //---------------------------------------------------------------------
    //OPERAÇÕES COM TIPO<->PRODUTO
    */
    atribuirProdutoTipo(pp, tt) =
    PRE    pp: PRODUTO & 
           pp: dom(produtoTipo) &
           tt: TIPO & 
           tt: ran(produtoTipo)
    THEN   produtoTipo(pp):= tt
    END;
    
    /*
    
//    tt <-- obterTipoProduto(pp) =
//    PRE    pp:produtos & 
//           pp: dom(produtoTipo) &
//           produtoTipo(pp): TIPO
//    THEN   tt := produtoTipo(pp)
//    END; 
    
    //---------------------------------------------------------------------
    //OPERAÇÕES COM ESTOQUE
    // (ESTOQUES * TIPOS) -> QUANT
    // TODO: Como fazer pow ao invés de relação? */
    
    criarEstoqueMC(ee) =
    PRE    ee: ESTOQUE & 
           ee/: estoques
    THEN   adicionarEstoque(ee)
    END;
    
    atribuirTiposNoEstoque(ee, tt) =
    PRE    ee: ESTOQUE & 
           tt: TIPO
    THEN   estoqueTipo := estoqueTipo \/ {ee |-> tt}
    END;
    
    atribuirLimiteTipoNoEstoque(ee, tt, qq) =
    PRE    ee: ESTOQUE &
           ee: dom(estoqueTipo) & 
           tt: TIPO &
           tt: ran(estoqueTipo) & 
           (ee |-> tt): estoqueTipo & 
           qq: {0}
    THEN   estoqueTipoLimite(ee):= tt |-> qq
    END;
    
    cadastrarProdutosNoEstoque(ee, pp) =
    PRE    ee: ESTOQUE &
           ee: dom(estoqueTipo) &
           pp: PRODUTO &
           pp: dom(produtoTipo)
    THEN   estoqueProduto := estoqueProduto \/ {ee |-> pp}
    END
    
    /*
    
    //Atribui a quantidade que existe de um produto no estoque
    atribuirQuantidadeProdutosNoEstoque(ee, pp, qq) =
    PRE    ee: ESTOQUE &
           ee: dom(estoqueProduto) & 
           pp: PRODUTO &
           pp: ran(estoqueProduto) & 
           pp: dom(produtoTipo) &
           (ee |-> pp): estoqueProduto & 
           qq: NAT1 & 
           qq <= estoqueTipoLimite(ee |-> produtoTipo(pp))
    THEN   estoqueProdutoQtd(ee |-> pp):= qq
    END;
    
    //Ao remover produto do estoque, ele é removido de
    //estoqueProduto e estoqueProdutoQtd
    removerProdutoDoEstoque(ee, pp) =
    PRE    ee: ESTOQUE & pp: PRODUTO & 
           (ee |-> pp): estoqueProduto &
           (ee |-> pp): dom(estoqueProdutoQtd)
    THEN   estoqueProduto := estoqueProduto - {ee |-> pp} ||
           estoqueProdutoQtd := estoqueProduto - {ee |-> pp} <| estoqueProdutoQtd
    END*/
       
END
