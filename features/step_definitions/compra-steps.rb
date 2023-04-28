Dado('clicar em Adicionar ao Carrinho') do
    @PdpPage.adicionar_produto_carrinho()
  end
  
  Dado('clico em Ir para o carrinho') do
    @PdpPage.clicar_ir_para_carrinho()
  end

  Dado('seleciono o tipo de frete e prazo como {string}') do |frete_prazo|
    @CarrinhoPage.selecionar_frete_prazo(frete_prazo)
  end
  
  Dado('finalizar a compra') do
    @CarrinhoPage.clicar_finalizar_compra()
  end
  
  Dado('clico em continuar para revisão') do
    @CheckoutPage.continuar_para_revisao()
  end

  Dado('seleciono o {string} como metódo de pagamento') do |forma_pagamento|
    @CheckoutPage.seleciona_forma_pagamento(forma_pagamento)
  end
  
  Dado('clico em ir para revisão') do
    @CheckoutPage.continuar_para_revisao()
  end
  
  Dado('clico em Finalizar a compra') do
    @CheckoutPage.cliclo_finalizar_compra()
  end
  
  Então('eu visualizo a compra finalizada do tipo {string}') do |pedido_finalizado|
    @CheckoutPage.tela_pedido_finalizado(pedido_finalizado)
  end