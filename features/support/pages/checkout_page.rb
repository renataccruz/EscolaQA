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
            
            when "CARTÃO DE CRÉDITO"
                find("h2", text: "Cartão de crédito").click
                find("#cardNumber")
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

            when "BOLETO"
                find("h2", text: "Pedido n° ")
                find("h2", text: "Seu pedido foi realizado com sucesso!")

            when "CARTÃO DE CRÉDITO"
                find("h2", text: "Ops...")
        end
    end

    def inserir_numero_cc(numero_cartao)
        find("#cardNumber").set numero_cartao
    end

    def inserir_nome_cc(nome_cartao)
        find("#cardName").set nome_cartao
    end

    def inserir_cpf_cc(cpf_cartao)
        find("#cpf").set cpf_cartao
    end

    def inserir_validade_cc(validade_cartao)
        find("#validity").set validade_cartao
    end

    def inserir_cvv_cc(cvv_cartao)
        find("#cvv").set cvv_cartao
    end

    def inserir_parcelas_cc(parcelas_cartao)
        case parcelas_cartao
        when "1"
            find("option", text: "1x de").click  
        end
    end
end