class CheckoutPage
    include Capybara::DSL

    def continuar_para_revisao
        find("span", text: "Continuar para revisão").click
    end

    def seleciona_forma_pagamento(forma_pagamento)
        case forma_pagamento
            when "PIX"
                find("h2", text: "Pix").click
                find("strong", text: "O código Pix expira em 10 minutos.")
            when "BOLETO"
                find("h2", text: "Boleto Bancário").click
                find("p", text: "Você poderá imprimir para pagamento pelo telefone ou internet.")
        end
    end

    def cliclo_finalizar_compra
        find("span", text: "Finalizar a compra").click        
    end

    def tela_pedido_finalizado(pedido_finalizado)
        case pedido_finalizado
            when "PIX"
                find("span", text: "Pagar com Pix")
                find("span", text: "Copiar código Pix")
                # expect(pix1.visible?).to be true
                # expect(pix2.visible?).to be true
            when "BOLETO"
                find("h2", text: "Pedido n° ")
                find("h2", text: "Seu pedido foi realizado com sucesso!")
                # expect(boleto1.visible?).to be true
                # expect(boleto2.visible?).to be true
        end
    end
end