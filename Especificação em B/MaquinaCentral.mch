/* MaquinaCentral
 * Author: Joao
 * Creation date: 11/06/2017
 */
 
 //TODO: abstrair variáveis em máquinas
MACHINE
    MaquinaCentral

INCLUDES GerenciadorTipo, GerenciadorProduto, GerenciadorEstoque
    
VARIABLES produtoTipo, 
          estoqueTipo,
          estoqueTipoLimite,
          estoqueProduto,
          estoqueProdutoQtd
    
INVARIANT produtoTipo: produtos <-> tipos &
          estoqueTipo: estoques <-> tipos &
          estoqueTipoLimite: estoqueTipo <-> NAT1 &
          estoqueProduto: estoques <-> produtos &
          estoqueProdutoQtd: estoqueProduto <-> NAT1 
    
INITIALISATION produtoTipo:= {} || 
               estoqueTipo:= {} || 
               estoqueTipoLimite:= {} ||
               estoqueProduto:= {} ||
               estoqueProdutoQtd := {}
    
PROMOTES adicionarTipo
    
OPERATIONS
    
    //---------------------------------------------------------------------
    //OPERAÇÕES COM TIPO
    removerTipoMC(tt) =
    PRE    tt:tipos & 
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
    
    //---------------------------------------------------------------------
    //OPERAÇÕES COM PRODUTO
    cadastrarProdutoMC(pp, tt) =
    PRE    pp: PRODUTO & 
           pp/: produtos & 
           pp/:dom(produtoTipo) & 
           tt: tipos
    THEN   adicionarProduto(pp) ||
           produtoTipo(pp) := tt
    END;
    
    removerProdutoMC(pp) =
    PRE    pp:produtos & 
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
    atribuirTipoProduto(pp, tt) =
    PRE    pp: produtos & 
           pp: dom(produtoTipo) &
           tt: tipos & 
           tt: ran(produtoTipo)
    THEN   produtoTipo(pp):= tt
    END;
    
    tt <-- obterTipoProduto(pp) =
    PRE    pp:produtos & 
           pp: dom(produtoTipo)
    THEN   tt := produtoTipo(pp)
    END; 
    
    //---------------------------------------------------------------------
    //OPERAÇÕES COM ESTOQUE
    // (ESTOQUES * TIPOS) -> QUANT
    // TODO: Como fazer pow ao invés de relação?
    criarEstoqueMC(ee) =
    PRE    ee: ESTOQUE & 
           ee/: estoques
    THEN   adicionarEstoque(ee)
    END;
    
    atribuirTiposNoEstoque(ee, tt) =
    PRE    ee: estoques & 
           tt: tipos
    THEN   estoqueTipo := estoqueTipo \/ {ee |-> tt}
    END;
    
    atribuirQuantidadeTipoNoEstoque(ee, tt, qq) =
    PRE    ee: dom(estoqueTipo) & 
           tt: ran(estoqueTipo) & 
           (ee |-> tt): estoqueTipo & 
           qq: NAT1
    THEN   estoqueTipoLimite(ee |-> tt):= qq
    END;
    
    cadastrarProdutosNoEstoque(ee, pp) =
    PRE    ee: dom(estoqueTipo) & 
           pp: dom(produtoTipo)
    THEN   estoqueProduto := estoqueProduto \/ {ee |-> pp}
    END;
    
    //Atribui a quantidade que existe de um produto no estoque
    atribuirQuantidadeProdutosNoEstoque(ee, pp, qq) =
    PRE    ee: dom(estoqueProduto) & 
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
    PRE    ee: estoques & pp: produtos & 
           (ee |-> pp): estoqueProduto &
           (ee |-> pp): dom(estoqueProdutoQtd)
    THEN   estoqueProduto := estoqueProduto - {ee |-> pp} ||
           estoqueProdutoQtd := estoqueProduto - {ee |-> pp} <| estoqueProdutoQtd
    END
       
END
