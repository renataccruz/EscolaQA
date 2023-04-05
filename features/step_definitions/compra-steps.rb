Dado('clicar em Adicionar ao Carrinho') do
    find("button", text: "Adicionar ao carrinho").click
  end
  
  Dado('clico em Ir para o carrinho') do
    find("span", text: "Ir para o carrinho").click
  end

  Dado('seleciono o tipo de frete e prazo como {string}') do |frete_prazo|
    case frete_prazo
      when "Economica"
      find("h2", text: "Economica").click
      end
  end
  
  Dado('finalizar a compra') do
    find("span", text: "Finalizar a compra").click
  end
  
  Dado('clico em continuar para revisão') do
    find("span", text: "Continuar para revisão").click
  end

  Dado('seleciono o {string} como metódo de pagamento') do |forma_pagamento|
    case forma_pagamento
        when "PIX"
        find("h2", text: "Pix").click
        find("strong", text: "O código Pix expira em 10 minutos.")
        
        when "BOLETO"
        find("h2", text: "Boleto Bancário").click
        find("p", text: "Você poderá imprimir para pagamento pelo telefone ou internet.")
    end
  end
  
  Dado('clico em ir para revisão') do
    find("span", text: "Continuar para revisão").click
  end
  
  Dado('clico em Finalizar a compra') do
    find("span", text: "Finalizar a compra").click
  end
  
  Então('eu visualizo a compra finalizada do tipo {string}') do |finalizada|
    case finalizada
      when "PIX"
        pix1 = find("span", text: "Pagar com Pix")
        pix2 = find("span", text: "Copiar código Pix")
        expect(pix1.visible?).to be true
        expect(pix2.visible?).to be true
        
        when "BOLETO"
        boleto1 = find("h2", text: "Pedido n° ")
        boleto2 = find("h2", text: "Seu pedido foi realizado com sucesso!")
        expect(boleto1.visible?).to be true
        expect(boleto2.visible?).to be true
      end
  end